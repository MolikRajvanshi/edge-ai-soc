/**
 * =============================================================================
 * File: maxpool.cpp
 * Description: 2×2 Max Pooling with stride 2.
 *              Reduces spatial dimensions by half in both H and W.
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "accel_top.h"

void maxpool_2x2(
    acc_t    input[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    acc_t    output[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    int      in_height,
    int      in_width
) {
    #pragma HLS INLINE off

    int out_height = in_height / 2;
    int out_width  = in_width  / 2;

    POOL_ROW: for (int oh = 0; oh < out_height; oh++) {
        POOL_COL: for (int ow = 0; ow < out_width; ow++) {
            #pragma HLS PIPELINE II=1

            acc_t val_00 = input[2 * oh    ][2 * ow    ];
            acc_t val_01 = input[2 * oh    ][2 * ow + 1];
            acc_t val_10 = input[2 * oh + 1][2 * ow    ];
            acc_t val_11 = input[2 * oh + 1][2 * ow + 1];

            acc_t max_top = (val_00 > val_01) ? val_00 : val_01;
            acc_t max_bot = (val_10 > val_11) ? val_10 : val_11;
            acc_t max_val = (max_top > max_bot) ? max_top : max_bot;

            output[oh][ow] = max_val;

        } // POOL_COL
    } // POOL_ROW
}
