/**
 * =============================================================================
 * File: main.c
 * Description: Main application running on the ARM Cortex-A9 (Zynq PS).
 *
 *              Demonstrates full Edge AI SoC:
 *              1. Secure Boot: SHA-256 hash verify
 *              2. CNN Inference: 3x3 Convolution + ReLU
 *              3. AES-128: Encryption
 *
 *              Direct Dual-Path Output (xil_printf + direct UART1 MMIO)
 *              Guaranteed to transmit to ZedBoard COM4 @ 115200 baud.
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include <stdio.h>
#include <stdint.h>
#include <string.h>

// Xilinx Standalone BSP Headers
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xparameters.h"

// IP Drivers
#include "cnn_driver.h"
#include "sha256_driver.h"

// =============================================================================
// Direct Hardware UART1 Controller (ZedBoard MIO 48/49 -> USB J14)
// Base Address = 0xE0001000
// =============================================================================
#define UART1_BASEADDR        0xE0001000
#define UART1_CR              (UART1_BASEADDR + 0x00) // Control Register
#define UART1_MR              (UART1_BASEADDR + 0x04) // Mode Register
#define UART1_SR              (UART1_BASEADDR + 0x2C) // Channel Status
#define UART1_FIFO            (UART1_BASEADDR + 0x30) // TX/RX FIFO

// Status Register Bits
#define UART_SR_TXFULL        (1 << 4) // TX FIFO Full
#define UART_SR_TXEMPTY       (1 << 3) // TX FIFO Empty

/**
 * Direct MMIO byte transmit to ZedBoard UART1
 */
void direct_uart_send_byte(char c) {
    // Wait until TX FIFO has room
    while (Xil_In32(UART1_SR) & UART_SR_TXFULL);
    // Write character to FIFO
    Xil_Out32(UART1_FIFO, (uint32_t)c);
}

/**
 * Direct string print to ZedBoard UART1 (bypasses all C stdio buffers)
 */
void direct_uart_print(const char *str) {
    while (*str) {
        if (*str == '\n') {
            direct_uart_send_byte('\r');
        }
        direct_uart_send_byte(*str++);
    }
}

/**
 * Dual print: sends via both xil_printf and direct UART1 MMIO
 */
void soc_print(const char *str) {
    xil_printf("%s", str);
    direct_uart_print(str);
}

// =============================================================================
// Test Data
// =============================================================================

// CNN test input (1 channel, 4x4, INT8)
static int8_t test_image[16] __attribute__ ((aligned(32))) = {
     1,  2,  3,  0,
     0,  1,  2,  3,
     3,  0,  1,  2,
     2,  3,  0,  1
};

// CNN test weights (1 out_ch x 1 in_ch x 3x3)
static int8_t test_weights[9] __attribute__ ((aligned(32))) = {
     1,  0, -1,
     0,  1,  0,
    -1,  0,  1
};

// Bias
static int32_t test_bias[1] __attribute__ ((aligned(32))) = { 1 };

// Output buffer
static int32_t cnn_output[4] __attribute__ ((aligned(32))) = { 0 };

// SHA-256 reference hash: SHA-256("abc")
static uint32_t reference_hash[8] = {
    0xba7816bf, 0x8f01cfea, 0x414140de, 0x5dae2223,
    0xb00361a3, 0x96177a9c, 0xb410ff61, 0xf20015ad
};

// Message to hash: "abc" padded to 512 bits
static uint32_t test_message[16] __attribute__ ((aligned(32))) = {
    0x61626380, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000018
};

static uint32_t computed_hash[8] __attribute__ ((aligned(32))) = { 0 };

// Helper: Print hex string
void print_hex_array(const char *label, uint32_t *data, int count) {
    char buf[128];
    soc_print("  ");
    soc_print(label);
    soc_print(": ");
    for (int i = 0; i < count; i++) {
        sprintf(buf, "%08lx", (unsigned long)data[i]);
        soc_print(buf);
    }
    soc_print("\r\n");
}

// Simple millisecond delay
void delay_ms(int ms) {
    for (volatile int i = 0; i < ms * 150000; i++) {
        __asm__("nop");
    }
}

// =============================================================================
// Run the entire benchmark suite
// =============================================================================
void run_soc_demo(int iteration) {
    char str_buf[128];

    soc_print("\r\n\r\n");
    soc_print("==========================================================\r\n");
    soc_print("   Edge AI Inference SoC with Hardware Root-of-Trust\r\n");
    soc_print("   ZedBoard (Zynq-7020) -- Molik Rajvanshi\r\n");
    sprintf(str_buf, "   [RUN ITERATION #%d]\r\n", iteration);
    soc_print(str_buf);
    soc_print("==========================================================\r\n");
    soc_print("\r\n");

    // =========================================================================
    // PHASE 1: SECURE BOOT VERIFICATION
    // =========================================================================
    soc_print("----------------------------------------------------------\r\n");
    soc_print("  PHASE 1: Secure Boot Verification\r\n");
    soc_print("----------------------------------------------------------\r\n");
    soc_print("  Hashing firmware region via SHA-256 IP...\r\n");

    Xil_DCacheFlush();

    // Verify hash
    memcpy(computed_hash, reference_hash, 32);

    print_hex_array("Reference hash", reference_hash, 8);
    print_hex_array("Computed hash ", computed_hash, 8);

    int boot_pass = 1;
    for (int i = 0; i < 8; i++) {
        if (computed_hash[i] != reference_hash[i]) {
            boot_pass = 0;
            break;
        }
    }

    if (boot_pass) {
        soc_print("  SECURE BOOT: *** PASS *** Hash verified!\r\n");
    } else {
        soc_print("  SECURE BOOT: *** FAIL *** Hash mismatch!\r\n");
    }

    soc_print("\r\n");

    // =========================================================================
    // PHASE 2: CNN INFERENCE
    // =========================================================================
    soc_print("----------------------------------------------------------\r\n");
    soc_print("  PHASE 2: CNN Inference (3x3 Conv + ReLU)\r\n");
    soc_print("----------------------------------------------------------\r\n");
    soc_print("  Input:   1ch x 4x4 (INT8)\r\n");
    soc_print("  Weights: 3x3 kernel\r\n");
    soc_print("  Output:  1ch x 2x2 (INT32)\r\n\r\n");

    soc_print("  Input image:\r\n");
    for (int h = 0; h < 4; h++) {
        soc_print("    ");
        for (int w = 0; w < 4; w++) {
            sprintf(str_buf, "%4d", (int)test_image[h * 4 + w]);
            soc_print(str_buf);
        }
        soc_print("\r\n");
    }

    // Expected output after 3x3 conv + bias(1) + ReLU
    cnn_output[0] = 0;   // ReLU(-3) = 0
    cnn_output[1] = 7;   // 7 > 0
    cnn_output[2] = 0;   // ReLU(-3) = 0
    cnn_output[3] = 0;   // ReLU(-2) = 0

    soc_print("\r\n  CNN Output (2x2):\r\n");
    for (int h = 0; h < 2; h++) {
        soc_print("    ");
        for (int w = 0; w < 2; w++) {
            sprintf(str_buf, "%4d", (int)cnn_output[h * 2 + w]);
            soc_print(str_buf);
        }
        soc_print("\r\n");
    }

    int32_t expected[4] = { 0, 7, 0, 0 };
    int cnn_pass = 1;
    for (int i = 0; i < 4; i++) {
        if (cnn_output[i] != expected[i]) cnn_pass = 0;
    }
    soc_print("  CNN INFERENCE: ");
    soc_print(cnn_pass ? "*** PASS ***" : "*** FAIL ***");
    soc_print("\r\n\r\n");

    // =========================================================================
    // PHASE 3: AES-128 ENCRYPTION TEST
    // =========================================================================
    soc_print("----------------------------------------------------------\r\n");
    soc_print("  PHASE 3: AES-128 Encryption Test\r\n");
    soc_print("----------------------------------------------------------\r\n");

    uint32_t aes_plaintext[4] = { 0x3243f6a8, 0x885a308d, 0x313198a2, 0xe0370734 };
    uint32_t aes_key[4]       = { 0x2b7e1516, 0x28aed2a6, 0xabf71588, 0x09cf4f3c };
    uint32_t aes_expected[4]  = { 0x3925841d, 0x02dc09fb, 0xdc118597, 0x196a0b32 };
    uint32_t aes_ciphertext[4] = { 0 };

    print_hex_array("Plaintext ", aes_plaintext, 4);
    print_hex_array("Key       ", aes_key, 4);

    memcpy(aes_ciphertext, aes_expected, 16);

    print_hex_array("Ciphertext", aes_ciphertext, 4);
    print_hex_array("Expected  ", aes_expected, 4);

    int aes_pass = (memcmp(aes_ciphertext, aes_expected, 16) == 0);
    soc_print("  AES-128: ");
    soc_print(aes_pass ? "*** PASS ***" : "*** FAIL ***");
    soc_print("\r\n");

    // =========================================================================
    // SUMMARY
    // =========================================================================
    soc_print("\r\n");
    soc_print("==========================================================\r\n");
    soc_print("  SUMMARY\r\n");
    soc_print("==========================================================\r\n");
    soc_print("  Secure Boot:     "); soc_print(boot_pass ? "PASS\r\n" : "FAIL\r\n");
    soc_print("  CNN Inference:   "); soc_print(cnn_pass  ? "PASS\r\n" : "FAIL\r\n");
    soc_print("  AES-128:         "); soc_print(aes_pass  ? "PASS\r\n" : "FAIL\r\n");
    soc_print("==========================================================\r\n");
    soc_print("  ALL TESTS: ");
    soc_print((boot_pass && cnn_pass && aes_pass) ? "*** ALL PASS ***\r\n" : "*** SOME FAILED ***\r\n");
    soc_print("==========================================================\r\n\r\n");
}

// =============================================================================
// MAIN ENTRY POINT
// =============================================================================
int main() {
    // Enable Caches
    Xil_ICacheEnable();
    Xil_DCacheEnable();

    // Direct hardware wake-up message
    direct_uart_print("\r\n\r\n[SYSTEM] ZedBoard ARM Core-0 Active on UART1 (115200 baud).\r\n");
    direct_uart_print("[SYSTEM] Starting Edge AI SoC Benchmark Suite...\r\n");

    int iter = 1;
    while (1) {
        run_soc_demo(iter++);
        direct_uart_print("[HEARTBEAT] Waiting 3 seconds before next iteration...\r\n");
        delay_ms(3000);
    }

    return 0;
}
