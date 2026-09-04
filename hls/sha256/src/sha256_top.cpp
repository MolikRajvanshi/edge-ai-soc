/**
 * =============================================================================
 * File: sha256_top.cpp
 * Description: Top-level HLS function for the SHA-256 IP block.
 *              This function is synthesized by Vitis HLS into a Verilog IP
 *              with AXI interfaces (m_axi for DDR, s_axilite for control).
 *
 *              ARM PS calls this to hash firmware/data for secure boot
 *              verification or general integrity checking.
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "sha256.h"

void sha256_top(
    uint32_t *message,       // DDR: Input message (padded, big-endian words)
    uint32_t *digest,        // DDR: Output 256-bit hash (8 words)
    int       msg_len_words  // Message length in 32-bit words (must be multiple of 16)
) {
    // =========================================================================
    // HLS Interface Pragmas — Single unified AXI-Lite control port
    // =========================================================================
    #pragma HLS INTERFACE m_axi port=message  offset=slave bundle=DATA depth=256
    #pragma HLS INTERFACE m_axi port=digest   offset=slave bundle=DATA depth=8
    #pragma HLS INTERFACE s_axilite port=message       bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=digest        bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=msg_len_words bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=return        bundle=CTRL

    // =========================================================================
    // Initialize hash state (NIST FIPS 180-4 initial values)
    // =========================================================================
    uint32_t H[8];
    H[0] = SHA256_H0;
    H[1] = SHA256_H1;
    H[2] = SHA256_H2;
    H[3] = SHA256_H3;
    H[4] = SHA256_H4;
    H[5] = SHA256_H5;
    H[6] = SHA256_H6;
    H[7] = SHA256_H7;

    // =========================================================================
    // Process each 512-bit (16-word) block
    // =========================================================================
    int num_blocks = msg_len_words / 16;
    int msg_ptr = 0;

    HASH_BLOCKS: for (int b = 0; b < num_blocks; b++) {

        // Load one block (16 words) from DDR into local register buffer
        uint32_t block[16];
        #pragma HLS ARRAY_PARTITION variable=block complete

        LOAD_BLOCK: for (int i = 0; i < 16; i++) {
            #pragma HLS PIPELINE II=1
            block[i] = message[msg_ptr++];
        }

        // Process this block (64 rounds of compression)
        sha256_process_block(block, H);
    }

    // =========================================================================
    // Write final digest to DDR
    // =========================================================================
    STORE_DIGEST: for (int i = 0; i < 8; i++) {
        #pragma HLS PIPELINE II=1
        digest[i] = H[i];
    }
}
