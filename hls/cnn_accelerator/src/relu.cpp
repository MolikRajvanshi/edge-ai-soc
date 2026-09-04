/**
 * =============================================================================
 * File: relu.cpp
 * Description: ReLU (Rectified Linear Unit) activation function.
 *              Applies element-wise: output = max(0, input)
 *
 *              This is an in-place operation on the feature map.
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "accel_top.h"

void relu(
    acc_t    feature_map[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    int      height,
    int      width
) {
    #pragma HLS INLINE off

    RELU_ROW: for (int h = 0; h < height; h++) {
        RELU_COL: for (int w = 0; w < width; w++) {
            #pragma HLS PIPELINE II=1

            acc_t val = feature_map[h][w];

            if (val < 0) {
                feature_map[h][w] = 0;
            }

        } // RELU_COL
    } // RELU_ROW
}
