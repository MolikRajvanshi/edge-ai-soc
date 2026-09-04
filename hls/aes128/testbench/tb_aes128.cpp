/**
 * =============================================================================
 * File: tb_aes128.cpp
 * Description: C Testbench for the AES-128 HLS IP.
 *              Tests against NIST FIPS 197 Appendix B example.
 *
 *              NIST test vector:
 *              Key:       2b7e1516 28aed2a6 abf71588 09cf4f3c
 *              Plaintext: 3243f6a8 885a308d 313198a2 e0370734
 *              Ciphertext:3925841d 02dc09fb dc118597 196a0b32
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include <stdio.h>
#include <string.h>
#include "../src/aes128.h"

// =============================================================================
// Helper: Print 128-bit data as hex
// =============================================================================
void print_block(const char *label, uint32_t data[4]) {
    printf("  %s: %08x %08x %08x %08x\n",
           label, data[0], data[1], data[2], data[3]);
}

// =============================================================================
// Test 1: NIST FIPS 197 Appendix B
// =============================================================================
int test_nist_appendix_b() {
    printf("\n========================================\n");
    printf(" Test: AES-128 NIST FIPS 197 Appendix B\n");
    printf("========================================\n");

    // NIST test vector
    uint32_t plaintext[4] = {
        0x3243f6a8, 0x885a308d, 0x313198a2, 0xe0370734
    };

    uint32_t key[4] = {
        0x2b7e1516, 0x28aed2a6, 0xabf71588, 0x09cf4f3c
    };

    uint32_t expected_ciphertext[4] = {
        0x3925841d, 0x02dc09fb, 0xdc118597, 0x196a0b32
    };

    uint32_t ciphertext[4] = {0};

    // Run HLS function
    aes128_top(plaintext, key, ciphertext, 1);  // encrypt = 1

    // Print results
    print_block("Key      ", key);
    print_block("Plaintext", plaintext);
    print_block("Expected ", expected_ciphertext);
    print_block("Got      ", ciphertext);

    // Compare
    int match = 1;
    for (int i = 0; i < 4; i++) {
        if (ciphertext[i] != expected_ciphertext[i]) {
            match = 0;
            break;
        }
    }

    printf("  RESULT: %s\n", match ? "PASS" : "FAIL");
    return match ? 0 : 1;
}

// =============================================================================
// Test 2: All-zero plaintext and key
// =============================================================================
int test_zero_key() {
    printf("\n========================================\n");
    printf(" Test: AES-128 Zero Key\n");
    printf("========================================\n");

    uint32_t plaintext[4] = {0, 0, 0, 0};
    uint32_t key[4]       = {0, 0, 0, 0};

    // Known answer for AES-128(0, 0):
    uint32_t expected[4] = {
        0x66e94bd4, 0xef8a2c3b, 0x884cfa59, 0xca342b2e
    };

    uint32_t ciphertext[4] = {0};

    aes128_top(plaintext, key, ciphertext, 1);

    print_block("Key      ", key);
    print_block("Plaintext", plaintext);
    print_block("Expected ", expected);
    print_block("Got      ", ciphertext);

    int match = 1;
    for (int i = 0; i < 4; i++) {
        if (ciphertext[i] != expected[i]) {
            match = 0;
            break;
        }
    }

    printf("  RESULT: %s\n", match ? "PASS" : "FAIL");
    return match ? 0 : 1;
}

// =============================================================================
// Main
// =============================================================================
int main() {
    int errors = 0;

    printf("\n");
    printf("╔══════════════════════════════════════════╗\n");
    printf("║  AES-128 Engine — HLS C Testbench        ║\n");
    printf("║  NIST FIPS 197 Known Answer Tests        ║\n");
    printf("╚══════════════════════════════════════════╝\n");

    errors += test_nist_appendix_b();
    errors += test_zero_key();

    printf("\n╔══════════════════════════════════════════╗\n");
    if (errors == 0) {
        printf("║  ALL AES-128 TESTS PASSED!               ║\n");
    } else {
        printf("║  AES-128 TESTS FAILED! (%d errors)       ║\n", errors);
    }
    printf("╚══════════════════════════════════════════╝\n\n");

    return errors;
}
