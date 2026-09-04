/**
 * =============================================================================
 * File: sha256.cpp
 * Description: SHA-256 hash algorithm implementation in C++ for Vitis HLS.
 *              NIST FIPS 180-4 compliant.
 *
 *              Multi-stage pipeline architecture for 100MHz on Zynq-7020:
 *              - W and K fully partitioned to registers (0ns lookup)
 *              - EXPAND_W and COMPRESS pipelined across balanced 2-cycle stages
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "sha256.h"

void sha256_process_block(
    uint32_t block[16],
    uint32_t H[8]
) {
    #pragma HLS INLINE off

    // =========================================================================
    // Step 1: Message Schedule (W0..W63)
    // Partition completely to registers (0ns access time)
    // =========================================================================
    uint32_t W[64];
    #pragma HLS ARRAY_PARTITION variable=W complete
    #pragma HLS ARRAY_PARTITION variable=K complete

    // Load first 16 words from the block
    LOAD_W: for (int t = 0; t < 16; t++) {
        #pragma HLS UNROLL
        W[t] = block[t];
    }

    // Expand message schedule across 2-cycle balanced stages (< 3.5ns)
    EXPAND_W: for (int t = 16; t < 64; t++) {
        #pragma HLS PIPELINE II=2
        #pragma HLS LATENCY min=2 max=2
        uint32_t s0 = sigma0(W[t - 15]);
        uint32_t s1 = sigma1(W[t - 2]);
        uint32_t sum_a = s1 + W[t - 7];
        uint32_t sum_b = s0 + W[t - 16];
        W[t] = sum_a + sum_b;
    }

    // =========================================================================
    // Step 2: Initialize working variables from current hash state
    // =========================================================================
    uint32_t a = H[0];
    uint32_t b = H[1];
    uint32_t c = H[2];
    uint32_t d = H[3];
    uint32_t e = H[4];
    uint32_t f = H[5];
    uint32_t g = H[6];
    uint32_t h = H[7];

    // =========================================================================
    // Step 3: 64 rounds of compression
    // Pipelined with II=2 and 2-cycle latency to break the 6-adder chain into
    // two separate < 4.0ns register stages
    // =========================================================================
    COMPRESS: for (int t = 0; t < 64; t++) {
        #pragma HLS PIPELINE II=2
        #pragma HLS LATENCY min=2 max=2

        uint32_t s1  = SIGMA1(e);
        uint32_t ch  = CH(e, f, g);
        uint32_t s0  = SIGMA0(a);
        uint32_t maj = MAJ(a, b, c);
        uint32_t kt  = K[t];
        uint32_t wt  = W[t];

        // Stage 1 adders
        uint32_t t1_p1 = h + s1;
        uint32_t t1_p2 = ch + kt;
        uint32_t T1    = (t1_p1 + t1_p2) + wt;
        uint32_t T2    = s0 + maj;

        // Stage 2 state update
        h = g;
        g = f;
        f = e;
        e = d + T1;
        d = c;
        c = b;
        b = a;
        a = T1 + T2;
    }

    // =========================================================================
    // Step 4: Update hash state
    // =========================================================================
    H[0] += a;
    H[1] += b;
    H[2] += c;
    H[3] += d;
    H[4] += e;
    H[5] += f;
    H[6] += g;
    H[7] += h;
}
