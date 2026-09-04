/**
 * =============================================================================
 * File: tb_sha256.cpp
 * Description: C Testbench for the SHA-256 HLS IP.
 *              Tests against NIST Known Answer Test (KAT) vectors.
 *
 *              Test vectors from NIST FIPS 180-4 examples:
 *              1. SHA-256("abc") = ba7816bf 8f01cfea 414140de 5dae2223
 *                                  b00361a3 96177a9c b410ff61 f20015ad
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include <stdio.h>
#include <string.h>
#include "../src/sha256.h"

// =============================================================================
// Helper: Print hash as hex string
// =============================================================================
void print_hash(const char *label, uint32_t hash[8]) {
    printf("  %s: ", label);
    for (int i = 0; i < 8; i++) {
        printf("%08x", hash[i]);
    }
    printf("\n");
}

// =============================================================================
// Helper: Pad message according to SHA-256 spec
// Input: raw bytes → Output: padded 32-bit words (big-endian)
//
// Padding rule (NIST FIPS 180-4 Section 5.1.1):
// 1. Append bit '1' (0x80 byte)
// 2. Append zeros until length ≡ 448 mod 512 (in bits)
// 3. Append original message length as 64-bit big-endian
// =============================================================================
int sha256_pad_message(
    const uint8_t *msg,
    int            msg_len_bytes,
    uint32_t      *padded_words
) {
    // Total padded length must be multiple of 64 bytes (512 bits)
    int bit_len = msg_len_bytes * 8;
    int padded_len = ((msg_len_bytes + 8) / 64 + 1) * 64;  // in bytes
    int padded_words_len = padded_len / 4;

    // Clear output buffer
    memset(padded_words, 0, padded_len);

    // Copy message bytes into words (big-endian)
    for (int i = 0; i < msg_len_bytes; i++) {
        int word_idx = i / 4;
        int byte_pos = 3 - (i % 4);  // Big-endian byte order within word
        padded_words[word_idx] |= ((uint32_t)msg[i]) << (byte_pos * 8);
    }

    // Append 0x80 byte
    {
        int word_idx = msg_len_bytes / 4;
        int byte_pos = 3 - (msg_len_bytes % 4);
        padded_words[word_idx] |= ((uint32_t)0x80) << (byte_pos * 8);
    }

    // Append message length in bits as 64-bit big-endian (last 2 words)
    padded_words[padded_words_len - 1] = (uint32_t)(bit_len);
    padded_words[padded_words_len - 2] = 0;  // High 32 bits (0 for short messages)

    return padded_words_len;
}

// =============================================================================
// Test 1: SHA-256("abc")
// =============================================================================
int test_sha256_abc() {
    printf("\n========================================\n");
    printf(" Test: SHA-256(\"abc\")\n");
    printf("========================================\n");

    // Input message: "abc" = {0x61, 0x62, 0x63}
    uint8_t msg[] = {0x61, 0x62, 0x63};
    int msg_len = 3;

    // Pad the message
    uint32_t padded[MAX_MSG_WORDS];
    int padded_words = sha256_pad_message(msg, msg_len, padded);

    printf("  Message: \"abc\" (%d bytes)\n", msg_len);
    printf("  Padded:  %d words (%d bytes)\n", padded_words, padded_words * 4);

    // Expected hash (NIST FIPS 180-4 example)
    uint32_t expected[8] = {
        0xba7816bf, 0x8f01cfea, 0x414140de, 0x5dae2223,
        0xb00361a3, 0x96177a9c, 0xb410ff61, 0xf20015ad
    };

    // Compute hash using HLS function
    uint32_t digest[8] = {0};
    sha256_top(padded, digest, padded_words);

    // Compare
    print_hash("Expected", expected);
    print_hash("Got     ", digest);

    int match = 1;
    for (int i = 0; i < 8; i++) {
        if (digest[i] != expected[i]) {
            match = 0;
            break;
        }
    }

    printf("  RESULT: %s\n", match ? "PASS" : "FAIL");
    return match ? 0 : 1;
}

// =============================================================================
// Test 2: SHA-256("") — Empty string
// =============================================================================
int test_sha256_empty() {
    printf("\n========================================\n");
    printf(" Test: SHA-256(\"\")\n");
    printf("========================================\n");

    // Empty message
    uint8_t msg[] = {};
    int msg_len = 0;

    // Pad the message
    uint32_t padded[MAX_MSG_WORDS];
    int padded_words = sha256_pad_message(msg, msg_len, padded);

    printf("  Message: \"\" (0 bytes)\n");
    printf("  Padded:  %d words\n", padded_words);

    // Expected hash for empty string
    uint32_t expected[8] = {
        0xe3b0c442, 0x98fc1c14, 0x9afbf4c8, 0x996fb924,
        0x27ae41e4, 0x649b934c, 0xa495991b, 0x7852b855
    };

    // Compute
    uint32_t digest[8] = {0};
    sha256_top(padded, digest, padded_words);

    print_hash("Expected", expected);
    print_hash("Got     ", digest);

    int match = 1;
    for (int i = 0; i < 8; i++) {
        if (digest[i] != expected[i]) {
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
    printf("║  SHA-256 Engine — HLS C Testbench        ║\n");
    printf("║  NIST FIPS 180-4 Known Answer Tests      ║\n");
    printf("╚══════════════════════════════════════════╝\n");

    errors += test_sha256_abc();
    errors += test_sha256_empty();

    printf("\n╔══════════════════════════════════════════╗\n");
    if (errors == 0) {
        printf("║  ALL SHA-256 TESTS PASSED!               ║\n");
    } else {
        printf("║  SHA-256 TESTS FAILED! (%d errors)       ║\n", errors);
    }
    printf("╚══════════════════════════════════════════╝\n\n");

    return errors;
}
