/**
 * =============================================================================
 * File: aes128_top.cpp
 * Description: Top-level HLS function for the AES-128 IP block.
 *              Synthesized by Vitis HLS into Verilog IP with AXI interfaces.
 *
 *              ARM PS writes plaintext + key to DDR, triggers this IP,
 *              reads back ciphertext from DDR.
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "aes128.h"

void aes128_top(
    uint32_t *data_in,       // DDR: Input data (4 words = 128 bits)
    uint32_t *key_in,        // DDR: Key (4 words = 128 bits)
    uint32_t *data_out,      // DDR: Output data (4 words = 128 bits)
    int       encrypt        // 1 = encrypt (decrypt not implemented yet)
) {
    // =========================================================================
    // HLS Interface Pragmas
    // =========================================================================
    #pragma HLS INTERFACE m_axi port=data_in   offset=slave bundle=DATA depth=4
    #pragma HLS INTERFACE m_axi port=key_in    offset=slave bundle=DATA depth=4
    #pragma HLS INTERFACE m_axi port=data_out  offset=slave bundle=DATA depth=4
    #pragma HLS INTERFACE s_axilite port=data_in  bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=key_in   bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=data_out bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=encrypt  bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=return   bundle=CTRL

    // =========================================================================
    // Load data and key from DDR into local buffers
    // =========================================================================
    uint8_t plaintext[16];
    uint8_t key[16];
    uint8_t ciphertext[16];

    // Convert 4 × 32-bit words to 16 × 8-bit bytes (big-endian)
    LOAD_DATA: for (int i = 0; i < 4; i++) {
        #pragma HLS PIPELINE II=1
        uint32_t word = data_in[i];
        plaintext[i * 4 + 0] = (word >> 24) & 0xFF;
        plaintext[i * 4 + 1] = (word >> 16) & 0xFF;
        plaintext[i * 4 + 2] = (word >>  8) & 0xFF;
        plaintext[i * 4 + 3] = (word >>  0) & 0xFF;
    }

    LOAD_KEY: for (int i = 0; i < 4; i++) {
        #pragma HLS PIPELINE II=1
        uint32_t word = key_in[i];
        key[i * 4 + 0] = (word >> 24) & 0xFF;
        key[i * 4 + 1] = (word >> 16) & 0xFF;
        key[i * 4 + 2] = (word >>  8) & 0xFF;
        key[i * 4 + 3] = (word >>  0) & 0xFF;
    }

    // =========================================================================
    // Run AES-128 encryption
    // =========================================================================
    if (encrypt) {
        aes128_encrypt(plaintext, key, ciphertext);
    } else {
        // TODO: Implement AES-128 decryption
        // For now, pass through unchanged
        for (int i = 0; i < 16; i++) {
            ciphertext[i] = plaintext[i];
        }
    }

    // =========================================================================
    // Store result back to DDR
    // =========================================================================
    STORE_DATA: for (int i = 0; i < 4; i++) {
        #pragma HLS PIPELINE II=1
        data_out[i] = ((uint32_t)ciphertext[i * 4 + 0] << 24) |
                      ((uint32_t)ciphertext[i * 4 + 1] << 16) |
                      ((uint32_t)ciphertext[i * 4 + 2] <<  8) |
                      ((uint32_t)ciphertext[i * 4 + 3] <<  0);
    }
}
