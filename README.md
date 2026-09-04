# 🧠 Edge AI Inference SoC with Hardware Root-of-Trust

> **A complete Edge AI SoC on Xilinx Zynq-7020 (ZedBoard) featuring a CNN accelerator, AES-128 encryption, SHA-256 hashing, and a secure boot flow — all built using Vitis HLS C++ → Vivado Block Design.**

[![HLS C++](https://img.shields.io/badge/HLS-C%2B%2B-blue?logo=cplusplus)](https://www.xilinx.com/products/design-tools/vitis/vitis-hls.html)
[![FPGA](https://img.shields.io/badge/FPGA-Zynq--7020-green?logo=xilinx)](https://www.xilinx.com/products/silicon-devices/soc/zynq-7000.html)
[![Board](https://img.shields.io/badge/Board-ZedBoard-orange)](http://zedboard.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

## 🎯 Overview

This project implements a **production-grade Edge AI inference system-on-chip** targeting the ZedBoard FPGA board (Zynq-7020). It demonstrates end-to-end SoC design using a proven industry workflow:

**HLS C++ → Vitis HLS (IP Export) → Vivado Block Design → Zynq PS+PL → UART Validation**

### Key Features

| Feature | Implementation |
|---|---|
| **CNN Accelerator** | INT8 convolution engine with ReLU + max pooling (HLS C++ IP) |
| **SHA-256 Engine** | NIST FIPS 180-4 compliant hash for secure boot (HLS C++ IP) |
| **AES-128 Engine** | NIST FIPS 197 compliant encryption (HLS C++ IP) |
| **Secure Boot** | Hash-compare firmware verification with lockdown on failure |
| **SoC Integration** | Vivado Block Design: Zynq PS + 3 HLS IPs + AXI + DMA |
| **Validation** | UART/PuTTY serial output on ZedBoard hardware |

---

## 🏗️ Architecture

```
┌────────────────── ZedBoard (Zynq-7020) ──────────────────┐
│                                                           │
│  ┌────────────┐                                          │
│  │  Zynq PS   │    AXI GP     ┌──────────────────────┐  │
│  │ (ARM A9)   │◄─────────────►│  AXI SmartConnect    │  │
│  │            │                │                      │  │
│  │ main.c    │    AXI HP     │  ┌────────────────┐  │  │
│  │ drivers    │◄─────────────►│  │ CNN Accel IP   │  │  │
│  │            │                │  │ (Vitis HLS)    │  │  │
│  └─────┬──────┘                │  │ conv+relu+pool │  │  │
│        │ UART                  │  └────────────────┘  │  │
│        ▼                       │                      │  │
│  ┌──────────┐                  │  ┌────────────────┐  │  │
│  │ PuTTY    │                  │  │ SHA-256 IP     │  │  │
│  │ Terminal │                  │  │ (Vitis HLS)    │  │  │
│  └──────────┘                  │  └────────────────┘  │  │
│                                │                      │  │
│                                │  ┌────────────────┐  │  │
│                                │  │ AES-128 IP     │  │  │
│                                │  │ (Vitis HLS)    │  │  │
│                                │  └────────────────┘  │  │
│                                └──────────────────────┘  │
└───────────────────────────────────────────────────────────┘
```

---

## 📁 Repository Structure

```
edge-ai-soc/
│
├── hls/                                # Vitis HLS projects
│   ├── cnn_accelerator/                # CNN Inference Engine IP
│   │   ├── src/
│   │   │   ├── accel_top.h             # Types, constants, pragmas
│   │   │   ├── accel_top.cpp           # HLS top function (→ IP block)
│   │   │   ├── conv_engine.cpp         # 2D convolution with MAC
│   │   │   ├── relu.cpp               # ReLU activation
│   │   │   └── maxpool.cpp            # 2×2 max pooling
│   │   └── testbench/
│   │       ├── tb_accel.cpp            # C testbench (C Simulation)
│   │       └── test_data.h             # Hand-computed test vectors
│   │
│   ├── sha256/                         # SHA-256 Hash Engine IP
│   │   ├── src/
│   │   │   ├── sha256.h               # NIST constants (K, H init)
│   │   │   ├── sha256.cpp             # SHA-256 block processing
│   │   │   └── sha256_top.cpp         # HLS top function
│   │   └── testbench/
│   │       └── tb_sha256.cpp           # NIST KAT vector tests
│   │
│   └── aes128/                         # AES-128 Encryption IP
│       ├── src/
│       │   ├── aes128.h               # S-Box, Rcon constants
│       │   ├── aes128.cpp             # AES encrypt (10 rounds)
│       │   └── aes128_top.cpp         # HLS top function
│       └── testbench/
│           └── tb_aes128.cpp           # NIST FIPS 197 test vectors
│
├── vivado/                             # Vivado Block Design project
│   └── constraints/
│       └── pynq_z2.xdc               # Pin constraints
│
├── sw/                                 # ARM PS software
│   └── src/
│       ├── main.c                     # Main demo program
│       ├── cnn_driver.h               # CNN accelerator driver
│       └── sha256_driver.h            # SHA-256 driver
│
├── putty_results/                      # Hardware validation captures
│   ├── cnn_inference/
│   ├── sha256_test/
│   └── aes128_test/
│
├── docs/                               # Documentation
│   └── block_design_screenshot.png
│
└── README.md
```

---

## 🚀 Build & Run Workflow

### Step 1: Vitis HLS — Synthesize IPs

For each IP (cnn_accelerator, sha256, aes128):

```
1. Open Vitis HLS → Create New Project
2. Add src/*.cpp and src/*.h
3. Add testbench/tb_*.cpp as testbench
4. Set top function (accel_top / sha256_top / aes128_top)
5. Set target: xc7z020clg484-1 (ZedBoard)
6. Run C Simulation → verify PASS
7. Run C Synthesis → check latency & resource usage
8. Export RTL → IP Catalog (Vivado IP .zip)
```

### Step 2: Vivado — Block Design

```
1. Create New Vivado Project → Boards: ZedBoard (or part: xc7z020clg484-1)
2. IP Catalog → Add Repository → point to HLS exported IPs
3. Create Block Design:
   - Add Zynq PS → Run Block Automation (applies ZedBoard presets)
   - Add CNN Accel IP, SHA-256 IP, AES-128 IP
   - Add AXI SmartConnect
   - Run Connection Automation
4. Generate HDL Wrapper
5. Run Synthesis → Implementation → Generate Bitstream
```

### Step 3: Vitis / Bare-Metal — Software

**Bare-metal (Vitis IDE)**
```
1. Export Hardware (.xsa) from Vivado
2. Create Vitis Platform Project
3. Create Application Project → add sw/src/*.c
4. Build → Program FPGA → Run on Hardware
5. Open PuTTY (115200 baud) → see test results
```

### Step 4: Validate on Hardware

```
1. Connect ZedBoard via micro-USB (UART port & PROG port)
2. Open PuTTY → COM port → 115200 baud
3. Run program → capture output
4. Save to putty_results/
```

---

## 📊 Expected PuTTY Output

```
==========================================================
   Edge AI Inference SoC with Hardware Root-of-Trust
   ZedBoard (Zynq-7020) — Molik Rajvanshi
==========================================================

----------------------------------------------------------
  PHASE 1: Secure Boot Verification
----------------------------------------------------------
  Reference hash: ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
  Computed hash : ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
  SECURE BOOT: *** PASS *** Hash verified!

----------------------------------------------------------
  PHASE 2: CNN Inference (3x3 Conv + ReLU)
----------------------------------------------------------
  Input image:
       1   2   3   0
       0   1   2   3
       3   0   1   2
       2   3   0   1

  CNN Output (2x2):
       0   7
       0   0
  CNN INFERENCE: *** PASS ***

----------------------------------------------------------
  PHASE 3: AES-128 Encryption Test
----------------------------------------------------------
  Plaintext:  3243f6a8885a308d313198a2e0370734
  Ciphertext: 3925841d02dc09fbdc118597196a0b32
  AES-128: *** PASS ***

==========================================================
  SUMMARY
==========================================================
  Secure Boot:     PASS
  CNN Inference:   PASS
  AES-128:         PASS
==========================================================
  ALL TESTS: *** ALL PASS ***
==========================================================
```

---

## 🔧 HLS Optimization Pragmas Used

| Pragma | Where | Purpose |
|---|---|---|
| `#pragma HLS INTERFACE m_axi` | Top functions | AXI Master port for DDR access |
| `#pragma HLS INTERFACE s_axilite` | Top functions | AXI-Lite slave for ARM PS control |
| `#pragma HLS PIPELINE II=1` | Inner loops | Process 1 element per clock cycle |
| `#pragma HLS ARRAY_PARTITION` | Weight/input arrays | Parallel memory access for MACs |
| `#pragma HLS UNROLL` | AES byte operations | Fully unroll small loops |

---

## 📈 Similar Approach to My Other Projects

This project follows the exact same design methodology as:

- **[RISC-V Multicore](https://github.com/MolikRajvanshi)**: HLS C++ cores → Vitis HLS IP → Vivado Block Design → Zynq → PuTTY
- **[CNN on Multicore RV32I](https://github.com/MolikRajvanshi)**: C workloads → HLS accelerators → PYNQ Z2 validation

**Same toolchain, same workflow — different application domain (AI + Security).**

---

## 👤 Author

**Molik Rajvanshi** — [GitHub](https://github.com/MolikRajvanshi)
