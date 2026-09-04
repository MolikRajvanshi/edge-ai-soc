/**
 * =============================================================================
 * File: aes128.cpp
 * Description: AES-128 encryption algorithm in C++ for Vitis HLS.
 *              NIST FIPS 197 compliant.
 *
 *              Timing optimized for 100MHz on Zynq-7020 (ZedBoard).
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "aes128.h"
#include <string.h>

// =============================================================================
// xtime: Multiply by 2 in GF(2^8) with reduction polynomial 0x1B
// =============================================================================
static uint8_t xtime(uint8_t b) {
    #pragma HLS INLINE
    return (b << 1) ^ ((b & 0x80) ? 0x1b : 0x00);
}

// =============================================================================
// Key Expansion: Generate 11 round keys (44 words) from 128-bit key
// =============================================================================
static void key_expansion(uint8_t key[16], uint8_t round_keys[176]) {
    #pragma HLS INLINE

    // First round key is the key itself
    for (int i = 0; i < 16; i++) {
        #pragma HLS UNROLL
        round_keys[i] = key[i];
    }

    // Generate remaining 10 round keys
    for (int i = 4; i < 44; i++) {
        #pragma HLS PIPELINE II=1
        uint8_t temp[4];

        temp[0] = round_keys[(i - 1) * 4 + 0];
        temp[1] = round_keys[(i - 1) * 4 + 1];
        temp[2] = round_keys[(i - 1) * 4 + 2];
        temp[3] = round_keys[(i - 1) * 4 + 3];

        if (i % 4 == 0) {
            uint8_t t = temp[0];
            temp[0] = temp[1];
            temp[1] = temp[2];
            temp[2] = temp[3];
            temp[3] = t;

            temp[0] = SBOX[temp[0]];
            temp[1] = SBOX[temp[1]];
            temp[2] = SBOX[temp[2]];
            temp[3] = SBOX[temp[3]];

            temp[0] ^= RCON[i / 4 - 1];
        }

        round_keys[i * 4 + 0] = round_keys[(i - 4) * 4 + 0] ^ temp[0];
        round_keys[i * 4 + 1] = round_keys[(i - 4) * 4 + 1] ^ temp[1];
        round_keys[i * 4 + 2] = round_keys[(i - 4) * 4 + 2] ^ temp[2];
        round_keys[i * 4 + 3] = round_keys[(i - 4) * 4 + 3] ^ temp[3];
    }
}

// =============================================================================
// AddRoundKey: XOR state with round key
// =============================================================================
static void add_round_key(uint8_t state[16], uint8_t *round_key) {
    #pragma HLS INLINE
    for (int i = 0; i < 16; i++) {
        #pragma HLS UNROLL
        state[i] ^= round_key[i];
    }
}

// =============================================================================
// SubBytes: Substitute each byte using the S-Box
// =============================================================================
static void sub_bytes(uint8_t state[16]) {
    #pragma HLS INLINE
    for (int i = 0; i < 16; i++) {
        #pragma HLS UNROLL
        state[i] = SBOX[state[i]];
    }
}

// =============================================================================
// ShiftRows: Cyclically shift each row left
// =============================================================================
static void shift_rows(uint8_t state[16]) {
    #pragma HLS INLINE
    uint8_t temp;

    // Row 1: shift left by 1
    temp      = state[1];
    state[1]  = state[5];
    state[5]  = state[9];
    state[9]  = state[13];
    state[13] = temp;

    // Row 2: shift left by 2
    temp      = state[2];
    state[2]  = state[10];
    state[10] = temp;
    temp      = state[6];
    state[6]  = state[14];
    state[14] = temp;

    // Row 3: shift left by 3
    temp      = state[15];
    state[15] = state[11];
    state[11] = state[7];
    state[7]  = state[3];
    state[3]  = temp;
}

// =============================================================================
// MixColumns: Mix each column using GF(2^8) arithmetic
// =============================================================================
static void mix_columns(uint8_t state[16]) {
    #pragma HLS INLINE
    for (int c = 0; c < 4; c++) {
        #pragma HLS UNROLL
        int i = c * 4;

        uint8_t a0 = state[i + 0];
        uint8_t a1 = state[i + 1];
        uint8_t a2 = state[i + 2];
        uint8_t a3 = state[i + 3];

        state[i + 0] = xtime(a0) ^ (xtime(a1) ^ a1) ^ a2 ^ a3;
        state[i + 1] = a0 ^ xtime(a1) ^ (xtime(a2) ^ a2) ^ a3;
        state[i + 2] = a0 ^ a1 ^ xtime(a2) ^ (xtime(a3) ^ a3);
        state[i + 3] = (xtime(a0) ^ a0) ^ a1 ^ a2 ^ xtime(a3);
    }
}

// =============================================================================
// AES-128 Encrypt: Full 10-round encryption
// =============================================================================
void aes128_encrypt(
    uint8_t plaintext[AES_BLOCK_BYTES],
    uint8_t key[AES_KEY_BYTES],
    uint8_t ciphertext[AES_BLOCK_BYTES]
) {
    #pragma HLS INLINE off

    uint8_t round_keys[176];
    #pragma HLS ARRAY_PARTITION variable=round_keys complete

    key_expansion(key, round_keys);

    uint8_t state[16];
    #pragma HLS ARRAY_PARTITION variable=state complete

    for (int i = 0; i < 16; i++) {
        #pragma HLS UNROLL
        state[i] = plaintext[i];
    }

    add_round_key(state, &round_keys[0]);

    AES_ROUNDS_LOOP: for (int round = 1; round < 10; round++) {
        #pragma HLS PIPELINE II=1
        sub_bytes(state);
        shift_rows(state);
        mix_columns(state);
        add_round_key(state, &round_keys[round * 16]);
    }

    sub_bytes(state);
    shift_rows(state);
    add_round_key(state, &round_keys[10 * 16]);

    for (int i = 0; i < 16; i++) {
        #pragma HLS UNROLL
        ciphertext[i] = state[i];
    }
}
