/**
 * =============================================================================
 * File: sha256_driver.h
 * Description: Software driver for the SHA-256 HLS IP.
 *              Used by the ARM PS for secure boot hash verification.
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#ifndef SHA256_DRIVER_H
#define SHA256_DRIVER_H

#include <stdint.h>

// =============================================================================
// Base address (assigned in Vivado Block Design Address Editor)
// =============================================================================
#define SHA256_BASE_ADDR      0x43C10000   // Second IP on GP0

// =============================================================================
// AXI-Lite Register Offsets (from Vitis HLS export)
// =============================================================================
#define SHA_REG_CTRL           0x00   // Control: ap_start, ap_done, ap_idle
#define SHA_REG_MESSAGE        0x10   // DDR address of padded message
#define SHA_REG_DIGEST         0x18   // DDR address for output digest
#define SHA_REG_MSG_LEN_WORDS  0x20   // Message length in 32-bit words

// Control bits
#define SHA_CTRL_AP_START      0x01
#define SHA_CTRL_AP_DONE       0x02
#define SHA_CTRL_AP_IDLE       0x04

// MMIO helpers
#define MMIO_WRITE(addr, val)  (*(volatile uint32_t *)(addr) = (val))
#define MMIO_READ(addr)        (*(volatile uint32_t *)(addr))

// =============================================================================
// Driver Functions
// =============================================================================

static inline int sha256_is_done(uint32_t base_addr) {
    return (MMIO_READ(base_addr + SHA_REG_CTRL) & SHA_CTRL_AP_DONE) != 0;
}

static inline void sha256_run(
    uint32_t base_addr,
    uint32_t msg_ddr_addr,
    uint32_t digest_ddr_addr,
    int      msg_len_words
) {
    // Configure
    MMIO_WRITE(base_addr + SHA_REG_MESSAGE,       msg_ddr_addr);
    MMIO_WRITE(base_addr + SHA_REG_DIGEST,        digest_ddr_addr);
    MMIO_WRITE(base_addr + SHA_REG_MSG_LEN_WORDS, msg_len_words);

    // Start
    MMIO_WRITE(base_addr + SHA_REG_CTRL, SHA_CTRL_AP_START);

    // Wait for completion
    while (!sha256_is_done(base_addr));
}

/**
 * sha256_compare() — Compare two 256-bit hashes (8 words each).
 * Returns 1 if equal, 0 if different.
 */
static inline int sha256_compare(uint32_t *hash_a, uint32_t *hash_b) {
    for (int i = 0; i < 8; i++) {
        if (hash_a[i] != hash_b[i]) return 0;
    }
    return 1;
}

#endif // SHA256_DRIVER_H
