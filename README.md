# 🧠 Edge AI Inference SoC with Hardware Root-of-Trust

> **A High-Throughput Hardware-Accelerated 2D CNN Inference Engine with NIST FIPS 180-4 SHA-256 Silicon Root-of-Trust and NIST FIPS 197 AES-128 Cryptographic Protection on Xilinx Zynq-7000 SoC**

[![FPGA Platform](https://img.shields.io/badge/Platform-Xilinx_ZedBoard_(XC7Z020)-10b981?style=for-the-badge&logo=xilinx&logoColor=white)](https://www.xilinx.com/products/silicon-devices/soc/zynq-7000.html)
[![Host Processor](https://img.shields.io/badge/Host-ARM_Dual--Core_Cortex--A9_@_667MHz-0284c7?style=for-the-badge&logo=arm&logoColor=white)](https://www.arm.com/products/silicon-ip-cpu/cortex-a/cortex-a9)
[![Clock & Timing](https://img.shields.io/badge/Clock-100.00_MHz_(WNS_+7.236ns)-6366f1?style=for-the-badge&logo=clock&logoColor=white)](#-post-implementation-resource-sign-off--hardware-telemetry)
[![Toolchain](https://img.shields.io/badge/EDA-Vivado_|_Vitis_HLS_2022.1-ea580c?style=for-the-badge&logo=xilinx&logoColor=white)](https://www.xilinx.com/products/design-tools/vivado.html)
[![Hardware Security](https://img.shields.io/badge/Security-NIST_FIPS_180--4_|_FIPS_197-8b5cf6?style=for-the-badge&logo=auth0&logoColor=white)](#-silicon-root-of-trust-sha-256--aes-128-cryptographic-engines)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

---

### 📑 Verification & Synthesis Deliverables

| Artifact | Type | Description |
|:---|:---:|:---|
| 📜 [**HLS Synthesis Log**](./synthe_report.txt) | **Raw Synthesis Log** | Verbatim Vitis HLS 2022.1 C-Synthesis output, pipeline scheduling logs, and RTL generation metrics. |
| 📦 [**Hardware Specification (XSA)**](./vivado/edge_ai_soc/design_1_wrapper.xsa) | **Vivado XSA** | Exported Zynq-7020 hardware specification with integrated CNN DPU, SHA-256 RoT, and AES-128 bitstream. |
| 💻 [**Bare-Metal Application**](./sw/src/main.c) | **C Source** | ARM Cortex-A9 standalone driver executing cold-boot SHA-256 integrity, CNN inference, and AES-128 encryption. |

---

## 📌 Table of Contents

1. [Executive Summary & CV Highlights](#-executive-summary--cv-technical-highlights)
2. [Motivation, Threat Model & Architecture](#-system-motivation-threat-model--architecture)
3. [Interconnect Topology & Memory Map](#-interconnect-topology--system-memory-map)
4. [2D CNN Inference Accelerator Deep Dive](#-2d-cnn-inference-accelerator-deep-dive)
5. [Silicon Root-of-Trust (SHA-256) & AES-128 Engines](#-silicon-root-of-trust-sha-256--aes-128-cryptographic-engines)
6. [Hardware / Software Co-Design Flow](#-hardware--software-co-design-flow)
7. [Engineering Hardships & Breakthroughs](#-engineering-hardships-root-causes--technical-breakthroughs)
8. [Post-Implementation Resource Sign-Off & Telemetry](#-post-implementation-resource-sign-off--hardware-telemetry)
9. [Repository Structure & Deliverables Manifest](#-repository-structure--deliverables-manifest)
10. [End-to-End Build & Reproduction Guide](#-end-to-end-build--reproduction-guide)
11. [Technical Interview Defense (Q&A)](#-technical-interview-defense--key-architectural-qa)
12. [Author & License](#-author--license)

---

## 🎯 Executive Summary & CV Technical Highlights

This repository implements a production-grade, heterogeneous **Edge AI System-on-Chip (SoC)** fabricated and verified on the **Xilinx Zynq-7000 (ZedBoard XC7Z020-CLG484-1)**. 

The architecture pairs an **ARM dual-core Cortex-A9 Processing System (PS)** with three hardware-accelerated processing units implemented in the **Programmable Logic (PL)** fabric:
1. **2D CNN Deep Learning Processing Unit (DPU)**: High-throughput INT8 2D convolution, in-place non-linear ReLU activation, and 2×2 max-pooling with single-cycle Initiation Interval ($II=1$).
2. **NIST FIPS 180-4 SHA-256 Silicon Root-of-Trust (RoT)**: Hardware cryptographic engine executing secure boot verification, hashing DDR3 firmware/weights before authorizing processor execution.
3. **NIST FIPS 197 AES-128 Cryptographic Engine**: 10-round cipher core encrypting neural network weight tensors and output inference telemetry.

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│                                 END-TO-END FLOW                                 │
│  Vitis HLS C++  ──►  Vivado Block Design  ──►  Bitstream & XSA  ──►  Vitis Bare-Metal  │
│  (II=1 Microarch)    (AXI4 GP0 + HP0 DMA)      (Timing Sign-Off)     (MMIO + UART1)   │
└──────────────────────────────────────────────────────────────────────────────────┘
```

### 💼 Ready-to-Paste Resume / CV Technical Bullet Points

* **Heterogeneous Edge-AI SoC Architecture:** Architected and deployed an end-to-end SoC on Xilinx Zynq-7020 (ZedBoard) integrating a custom 2D CNN DPU, NIST FIPS 180-4 SHA-256 Secure Boot Root-of-Trust, and NIST FIPS 197 AES-128 crypto core orchestrated by a dual-core ARM Cortex-A9 host.
* **High-Throughput HLS Microarchitecture:** Designed parameterized 2D Conv + ReLU + MaxPool DPU in Vitis HLS; achieved single-cycle Initiation Interval (**$II=1$**) using dual-port BRAM line-buffers, complete array partitioning, and linear pointer streaming, eliminating 32-bit hardware multipliers.
* **Nanosecond Timing Closure Breakthrough:** Diagnosed and resolved critical **$-8.39\text{ ns}$ setup timing violation** in SHA-256 by refactoring an unrolled 64-round compression loop into a balanced 2-stage multi-cycle pipeline with discrete register partitioning, achieving **$+7.236\text{ ns}$ Worst Negative Slack (WNS)** at 100.00 MHz sign-off.
* **AXI4 Memory Hierarchy & DMA Co-Design:** Implemented dual-plane AXI topology featuring AXI4-Lite control plane (CSRs @ `0x43C00000`) and High-Performance AXI4-Full Master burst DMA (`S_AXI_HP0`) directly streaming feature maps and weights to/from 512 MB DDR3 SDRAM.
* **Bare-Metal Firmware & Cache Coherency:** Authored low-overhead C drivers on ARM Cortex-A9 managing L1/L2 write-back cache coherency (`Xil_DCacheFlush` / `Xil_DCacheInvalidate`) and developed register-level MMIO driver directly driving physical UART1 FIFO (`0xE0001030`) for real-time telemetry.
* **FPGA Resource Efficiency:** Achieved complete post-implementation sign-off consuming only **11.48% LUTs (6,106/53,200)**, **10.81% FFs (11,503/106,400)**, **15.71% BRAM (22/140)**, and **21.36% DSP48E1 (47/220)** with 0 DRC errors.

### 📊 Technical Competencies Matrix

| Domain | Tools & Technologies | Key Accomplishments |
|:---|:---|:---|
| **SoC & RTL Architecture** | AMD Vivado 2022.1+, SystemVerilog, Vitis HLS 2022.1+ | IP packaging, AXI4 Interconnect / SmartConnect, DPU microarchitecture |
| **Hardware Security** | SHA-256 Secure Boot, AES-128 Cipher, NIST FIPS Standards | Firmware integrity attestation (RoT), weight & inference bus encryption |
| **Timing Closure & Verification** | Vivado Timing Analyzer, C-Sim, RTL Co-Sim, DRC | Multi-cycle pipeline restructuring, $+7.236\text{ ns}$ slack sign-off at 100 MHz |
| **Embedded Firmware & Drivers** | Vitis Unified IDE, Standalone BSP, ARM Cortex-A9, C99, MMIO | High-performance DMA buffer management, L1/L2 cache flushing, direct UART1 FIFO driver |
| **Dataset & Model Tooling** | Python 3.12, NumPy, INT8 Symmetric Quantization | Quantized image calibration to aligned INT8 C header arrays |

---

## 🛡️ System Motivation, Threat Model & Architecture

### The Edge AI Dilemma
Edge computer vision applications (autonomous navigation, robotics, smart IoT, biomedical monitors) face severe competing constraints:
1. **Compute & Energy Bottlenecks:** Standard convolutions require billions of MACs per second. General-purpose edge CPUs consume excessive energy and suffer from thermal throttling.
2. **Memory Bandwidth Throttling:** Continuous round-trip off-chip DRAM fetches for activation matrices and layer weights saturate the system bus.

### The Security Threat Model
Edge nodes operate in physically unmonitored environments, exposing critical vulnerabilities:
* **Firmware Hijacking:** Adversaries inject modified binaries or poisoned model weights into external non-volatile flash memory.
* **Model & IP Piracy:** Proprietary neural network kernels and sensitive output inference predictions are subject to bus eavesdropping and physical tampering.

### Architectural Solution
The SoC introduces a **Silicon Root-of-Trust (RoT)** at the hardware level:
* At power-on, the ARM Cortex-A9 coordinates with the hardware SHA-256 IP to authenticate the firmware image and weights resident in DDR3 against trusted golden reference hashes.
* If verification fails, the system executes an immediate **hardware lockdown**.
* Validated models execute with hardware acceleration on the CNN DPU, and sensitive outputs/weights are encrypted via the AES-128 hardware engine.

---

## ⚡ Interconnect Topology & System Memory Map

### Heterogeneous SoC Topology

```
+=========================================================================================================+
|                                    PROCESSING SYSTEM (ARM CORTEX-A9 PS @ 667 MHz)                       |
|  +-------------------------------------+  +----------------------------------+  +--------------------+  |
|  |       ARM Cortex-A9 Core 0          |  |       ARM Cortex-A9 Core 1       |  |  UART1 Controller  |  |
|  |  - 32KB L1 I-Cache / 32KB D-Cache   |  |   (Standby / Multiprocessing)    |  |    @ 0xE0001000    |  |
|  +-------------------------------------+  +----------------------------------+  +---------+----------+  |
|                     |                                     |                               |             |
|                     +-----------------+-------------------+                               v (MIO 48/49) |
|                                       v                                             [FTDI USB -> PuTTY] |
|                    512KB L2 Cache -> DDR3 Memory Controller                               115200 Baud   |
|                                       ^                                                                 |
+=======================================|=================================================================+
                                        | (512 MB DDR3 SDRAM Shared Physical Memory)
                                        |
+=======================================v=================================================================+
|                                  AXI4 INTERCONNECT MATRIX (PL FABRIC)                                   |
|   [M_AXI_GP0]: AXI4-Lite Control Plane @ 0x43C00000        [S_AXI_HP0]: High-Performance Burst DMA      |
+=======================================+=======================================+=========================+
                                        |                                       ^
         +------------------------------+--------------------+                  | (Direct DDR3 Bursts)
         |                              |                    |                  |
         v                              v                    v                  |
+--------------------+        +--------------------+        +--------------------+------------------------+
|  CNN ACCELERATOR   |        |   SHA-256 RoT IP   |        |   AES-128 ENGINE   |
|  (DPU @ 100 MHz)   |        |  (Secure Boot Core)|        | (Weight / Data Enc)|
|  - 2D Conv Engine  |        |  - NIST FIPS 180-4 |        | - NIST FIPS 197    |
|  - In-Place ReLU   |        |  - 64-Round Pipe   |        | - 10-Round Transf  |
|  - 2x2 Max-Pooling |        |  - W/K Registers   |        | - SubBytes S-Box   |
|  - Dual-Port BRAM  |        |  - Digest Gen      |        | - MixColumns GF2^8 |
|  - II=1 Line Stream|        |  - Base 0x43C10000 |        | - Base 0x43C20000  |
|  - Base 0x43C00000 |        +--------------------+        +--------------------+
+--------------------+
+=========================================================================================================+
```

### Complete System Memory Map & MMIO Offsets

| Subsystem / IP Core | Base Address | Interface | Offset Register Map & Functional Description |
|:---|:---:|:---:|:---|
| **CNN DPU** (`accel_top`) | `0x43C00000` | `s_axi_CTRL` (GP0)<br>`m_axi_DATA` (HP0) | `0x00`: Control Register (`bit 0: ap_start`, `bit 1: ap_done`, `bit 2: ap_idle`)<br>`0x10`: Input Feature Map DDR3 Physical Pointer (32-bit)<br>`0x1C`: Weight Tensor DDR3 Physical Pointer (32-bit)<br>`0x28`: Bias DDR3 Physical Pointer (32-bit)<br>`0x34`: Output Matrix DDR3 Physical Pointer (32-bit)<br>`0x40`: Kernel Dimension $K$<br>`0x48`: Input Channels $C_{in}$ \| `0x50`: Output Channels $C_{out}$<br>`0x58`: Height $H$ \| `0x60`: Width $W$<br>`0x68`: Stride $S$ \| `0x70`: Padding $P$<br>`0x78`: ReLU Enable (bool) \| `0x80`: MaxPool Enable (bool) |
| **SHA-256 RoT** (`sha256_top`) | `0x43C10000` | `s_axi_CTRL` (GP0)<br>`m_axi_DATA` (HP0) | `0x00`: Control Register (`ap_start`, `ap_done`, `ap_idle`)<br>`0x10`: Message Buffer DDR3 Physical Base Pointer<br>`0x1C`: Computed 256-bit Digest Output DDR3 Pointer<br>`0x28`: Message Length in 32-bit Words |
| **AES-128 Engine** (`aes128_top`) | `0x43C20000` | `s_axi_CTRL` (GP0)<br>`m_axi_DATA` (HP0) | `0x00`: Control Register (`ap_start`, `ap_done`, `ap_idle`)<br>`0x10`: Plaintext Data DDR3 Base Pointer<br>`0x1C`: 128-bit Cipher Key DDR3 Pointer<br>`0x28`: Ciphertext Output DDR3 Pointer<br>`0x34`: Operational Mode (`0x1 = Encrypt`, `0x0 = Decrypt`) |
| **Hardware UART1** | `0xE0001000` | Direct MMIO | `0x00`: UART Control Register (`UART_CR`)<br>`0x04`: UART Mode Register (`UART_MR`)<br>`0x2C`: Channel Status (`UART_SR` — `bit 4: TXFULL`, `bit 3: TXEMPTY`)<br>`0x30`: 64-Byte Hardware TX/RX FIFO (`UART_FIFO`) |
| **Shared DDR3 SDRAM** | `0x00100000` | High-Performance AXI4 | Global 512 MB Physical Address Space for firmware text, heap, activation tiles, and weights. |

---

## 🔬 2D CNN Inference Accelerator Deep Dive

### Mathematical Foundations

The dedicated DPU accelerates 2D convolution with bias addition, in-place non-linear ReLU activation, and 2×2 spatial max-pooling:

$$\mathbf{Y}[r, c] = \sum_{ic=0}^{C_{in}-1} \sum_{kh=0}^{K_h-1} \sum_{kw=0}^{K_w-1} \Big( \mathbf{X}[ic, r \cdot S + kh, c \cdot S + kw] \times \mathbf{W}[ic, kh, kw] \Big) + \mathbf{B}$$

$$\mathbf{A}[r, c] = \text{ReLU}(\mathbf{Y}[r, c]) = \max(0, \mathbf{Y}[r, c])$$

$$\mathbf{P}[r, c] = \max_{i, j \in \{0, 1\}} \Big( \mathbf{A}[2r + i, 2c + j] \Big)$$

### INT8 Symmetric Quantization Scheme

To minimize memory footprint and eliminate floating-point arithmetic units:
* **Inputs ($\mathbf{X}$) and Weights ($\mathbf{W}$):** Quantized to signed 8-bit integers (`ap_int<8>`).
* **Multiply-Accumulate (MAC):** Dot-products evaluate into 16-bit intermediate products (`ap_int<16>`).
* **Accumulators & Bias ($\mathbf{B}$):** Stored in 32-bit registers (`ap_int<32>`), guaranteeing zero arithmetic overflow across deep convolutional layers.

```
Input Pixel (INT8)   ──┐
                       ├──► [8×8 Multiplier] ──► Product (INT16) ──► [32-bit Adder] ──► Accumulator (INT32)
Weight Kernel (INT8) ──┘                                                ▲
                                                                        │
Bias Term (INT32)    ───────────────────────────────────────────────────┘
```

### Microarchitectural Innovations in Vitis HLS

1. **Linear Pointer Streaming ($II=1$):**
   * *Problem:* Standard multidimensional array indexing (`input[h * W + w]`) forced the HLS compiler to infer cascading 32-bit DSP multipliers inside the inner execution loop.
   * *Solution:* Loop indices were flattened into continuous linear single-cycle pointer increments (`*in_ptr++`). This saved **8 DSP48E1 slices** and compressed inner loop latency to a strict Initiation Interval of **$II=1$**.
2. **True Dual-Port BRAM Line Buffers:**
   * *Problem:* Fetching single pixels continuously over the AXI bus throttles memory bandwidth.
   * *Solution:* Tiles are staged into on-chip True Dual-Port Block RAM (`#pragma HLS BIND_STORAGE type=ram_2p impl=bram`) combined with cyclic array partitioning (`#pragma HLS ARRAY_PARTITION cyclic factor=4`), delivering 4 parallel data words per clock cycle.

### Step-by-Step Numerical Verification Walkthrough ($4\times 4 \to 2\times 2$)

Below is the exact verification scenario executed in C-Simulation, RTL Co-Simulation, and physical ZedBoard silicon:

#### Input Feature Map ($\mathbf{X}$, $4\times 4$, INT8):
```
[  1   2   3   0 ]
[  0   1   2   3 ]
[  3   0   1   2 ]
[  2   3   0   1 ]
```

#### Weight Kernel ($\mathbf{W}$, $3\times 3$, INT8) & Bias ($B = +1$):
```
Kernel:                 Bias:
[  1   0  -1 ]          B = +1
[  0   1   0 ]
[ -1   0   1 ]
```

#### Execution & Intermediate Arithmetic:
* **Output Pixel $(0, 0)$:**
  $$\text{MAC} = (1\cdot 1) + (2\cdot 0) + (3\cdot -1) + (0\cdot 0) + (1\cdot 1) + (2\cdot 0) + (3\cdot -1) + (0\cdot 0) + (1\cdot 1) = 1 + 0 - 3 + 0 + 1 + 0 - 3 + 0 + 1 = -3$$
  $$\mathbf{Y}[0, 0] = \text{MAC} + \text{Bias} = -3 + 1 = -2$$
  $$\mathbf{A}[0, 0] = \text{ReLU}(-2) = \max(0, -2) = \mathbf{0}$$

* **Output Pixel $(0, 1)$:**
  $$\text{MAC} = (2\cdot 1) + (3\cdot 0) + (0\cdot -1) + (1\cdot 0) + (2\cdot 1) + (3\cdot 0) + (0\cdot -1) + (1\cdot 0) + (2\cdot 1) = 2 + 0 + 0 + 0 + 2 + 0 + 0 + 0 + 2 = +6$$
  $$\mathbf{Y}[0, 1] = \text{MAC} + \text{Bias} = +6 + 1 = +7$$
  $$\mathbf{A}[0, 1] = \text{ReLU}(+7) = \max(0, +7) = \mathbf{7}$$

* **Output Pixel $(1, 0)$:**
  $$\text{MAC} = (0\cdot 1) + (1\cdot 0) + (2\cdot -1) + (3\cdot 0) + (0\cdot 1) + (1\cdot 0) + (2\cdot -1) + (3\cdot 0) + (0\cdot 1) = 0 + 0 - 2 + 0 + 0 + 0 - 2 + 0 + 0 = -4$$
  $$\mathbf{Y}[1, 0] = -4 + 1 = -3 \implies \mathbf{A}[1, 0] = \text{ReLU}(-3) = \mathbf{0}$$

* **Output Pixel $(1, 1)$:**
  $$\text{MAC} = (1\cdot 1) + (2\cdot 0) + (3\cdot -1) + (0\cdot 0) + (1\cdot 1) + (2\cdot 0) + (3\cdot -1) + (0\cdot 0) + (1\cdot 1) = -3$$
  $$\mathbf{Y}[1, 1] = -3 + 1 = -2 \implies \mathbf{A}[1, 1] = \text{ReLU}(-2) = \mathbf{0}$$

#### Final Verified Output Matrix ($2\times 2$):
```
[ 0   7 ]
[ 0   0 ]
```
*(Verified byte-for-byte against Golden C model and PuTTY hardware UART stream)*

---

## 🔒 Silicon Root-of-Trust (SHA-256) & AES-128 Cryptographic Engines

### Silicon Root-of-Trust: SHA-256 Secure Boot (NIST FIPS 180-4)

The SHA-256 engine establishes the hardware security anchor for the SoC. At cold boot, the core calculates the 256-bit hash over DDR3 memory buffers and compares against the hardware-fused digest.

#### Compression Round Function:
$$T_1 = h + \Sigma_1(e) + \text{Ch}(e, f, g) + K_t + W_t$$
$$T_2 = \Sigma_0(a) + \text{Maj}(a, b, c)$$
$$\text{Ch}(e, f, g) = (e \land f) \oplus (\neg e \land g), \quad \text{Maj}(a, b, c) = (a \land b) \oplus (a \land c) \oplus (b \land c)$$
$$\text{State Update:} \quad a \leftarrow T_1 + T_2, \; b \leftarrow a, \; c \leftarrow b, \; d \leftarrow c, \; e \leftarrow d + T_1, \; f \leftarrow e, \; g \leftarrow f, \; h \leftarrow g$$

```c
// Multi-Stage Balanced Pipeline in Vitis HLS (sha256.cpp)
void sha256_process_block(uint32_t block[16], uint32_t H[8]) {
    uint32_t W[64];
    #pragma HLS ARRAY_PARTITION variable=W complete
    #pragma HLS ARRAY_PARTITION variable=K complete

    // 64-Round Compression balanced across a 2-stage multi-cycle pipeline
    COMPRESS: for (int t = 0; t < 64; t++) {
        #pragma HLS PIPELINE II=2
        #pragma HLS LATENCY min=2 max=2
        uint32_t s1 = SIGMA1(e); uint32_t ch = CH(e, f, g);
        uint32_t s0 = SIGMA0(a); uint32_t maj = MAJ(a, b, c);
        uint32_t T1 = (h + s1 + ch + K[t]) + W[t]; // Stage 1 Register
        uint32_t T2 = s0 + maj;
        h = g; g = f; f = e; e = d + T1; d = c; c = b; b = a; a = T1 + T2; // Stage 2 Register
    }
}
```

* **Golden Reference Verification Digest:**
  `ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad`

### Hardware Cryptographic Engine: AES-128 (NIST FIPS 197)

The AES-128 core secures proprietary model weight tensors stored in DDR3 and encrypts outgoing classification results:
* **10-Round Symmetric Cipher:** 128-bit block size with 128-bit key schedule.
* **SubBytes:** Non-linear byte substitution using a synthesized 256-byte dual-port ROM S-Box.
* **ShiftRows:** Cyclic row shifting executed as zero-cycle physical wiring transposition.
* **MixColumns:** Galois Field $GF(2^8)$ matrix multiplication modulo irreducible polynomial $x^8 + x^4 + x^3 + x + 1$ (`0x11B`) synthesized using parallel `xtime()` trees.
* **AddRoundKey:** Bitwise 128-bit XOR with pre-expanded round keys.

#### NIST KAT (Known Answer Test) Vectors:
* **Plaintext:**  `32 43 f6 a8 88 5a 30 8d 31 31 98 a2 e0 37 07 34`
* **Cipher Key:** `2b 7e 15 16 28 ae d2 a6 ab f7 15 88 09 cf 4f 3c`
* **Ciphertext:** `39 25 84 1d 02 dc 09 fb dc 11 85 97 19 6a 0b 32` *(PASS)*

---

## 🔄 Hardware / Software Co-Design Flow

### System Execution Sequence

```
  [ARM Cortex-A9 Host Boot]
            │
            ├─► 1. Initialize Caches & MMU (Xil_ICacheEnable, Xil_DCacheEnable)
            │
            ├─► 2. Populate DDR3 Memory with Model Weights & Test Images
            │
            ├─► 3. Flush Dirty L1/L2 Cache Lines to Physical DDR3 (Xil_DCacheFlush)
            │
            ├─► 4. PHASE 1: Trigger SHA-256 Secure Boot IP
            │        - Program Message Pointer @ 0x43C10010
            │        - Assert AP_START (0x1) @ 0x43C10000 -> Poll AP_DONE (bit 1)
            │        - Invalidate DCache -> Verify 256-bit Digest == Golden Reference (PASS)
            │
            ├─► 5. PHASE 2: Trigger 2D CNN Inference Accelerator
            │        - Write Input, Weight, Bias & Output DDR3 Pointers (0x43C00010..0x43C00028)
            │        - Set Dimensions: H=4, W=4, K=3, Stride=1, ReLU=1, Pool=0
            │        - Assert AP_START -> Burst DMA fetches DDR3 tensors
            │        - Poll AP_DONE -> Invalidate DCache -> Validate 2x2 Feature Map (PASS)
            │
            ├─► 6. PHASE 3: Trigger AES-128 Encryption Engine
            │        - Program Plaintext & Key DDR Pointers (0x43C20010..0x43C2001C)
            │        - Assert AP_START -> Poll AP_DONE -> Validate NIST Ciphertext (PASS)
            │ 
            └─► 7. Direct MMIO Hardware UART1 FIFO Output (0xE0001030) -> PC PuTTY @ 115200 Baud
```

### Cache Coherency Management Protocol

The dual-core ARM Cortex-A9 operates with write-back L1 data caches and a unified L2 cache. To prevent coherency hazards with PL bus masters:
1. **Pre-Accelerator Execution:** The CPU calls `Xil_DCacheFlushRange((UINTPTR)buffer, size)` to write all modified cache lines back into physical DDR3 SDRAM before triggering `AP_START`.
2. **Post-Accelerator Completion:** The CPU polls `AP_DONE`, then invokes `Xil_DCacheInvalidateRange((UINTPTR)buffer, size)`, ensuring subsequent CPU loads fetch freshly calculated results directly from DDR3 rather than stale cache lines.

### Direct MMIO Hardware UART1 Driver

Standard C library `printf()` buffers characters in the C runtime heap, often resulting in dropped characters or stalled execution on bare-metal systems. We implemented a dedicated register-level MMIO driver directly interfacing with the ZedBoard UART1 controller:

```c
// Direct Register-Level Hardware UART1 Driver (sw/src/main.c)
#define UART1_SR    (*(volatile uint32_t *)(0xE000102C)) // Channel Status
#define UART1_FIFO  (*(volatile uint32_t *)(0xE0001030)) // Hardware FIFO
#define TX_FULL_BIT (1 << 4)

void direct_uart_send_byte(char c) {
    while (UART1_SR & TX_FULL_BIT); // Hardware FIFO flow-control poll
    UART1_FIFO = (uint32_t)c;       // Direct atomic hardware injection
}

void direct_uart_print(const char *str) {
    while (*str) {
        if (*str == '\n') direct_uart_send_byte('\r');
        direct_uart_send_byte(*str++);
    }
}
```

---

## 🛠️ Engineering Hardships, Root Causes & Technical Breakthroughs

| # | Engineering Challenge | Underlying Root Cause | Technical Breakthrough & Implementation Solution |
|:---:|:---|:---|:---|
| **1** | **SHA-256 Negative Slack**<br>`WNS = -8.39 ns (FAIL)` | 64-round SHA-256 compression loop chained 6 32-bit adders, bitwise rotations, and dual ROM lookups in a single-cycle feedback loop (15.69 ns logic path), exceeding the 10.0 ns clock period. | **Multi-Stage Register Pipelining:** Fully partitioned arrays $W[64]$ and $K[64]$ into discrete registers (0 ns lookup) and constrained the compression loop to a 2-stage multi-cycle pipeline (`#pragma HLS PIPELINE II=2` and `#pragma HLS LATENCY min=2 max=2`). Cut critical path delay to $<3.8\text{ ns}$ and achieved **$+7.236\text{ ns}$ positive slack**! |
| **2** | **CNN Nested Index Delay**<br>`13.8 ns Critical Path` | Multi-dimensional array indexing (`b * W + c`) inside inner loops synthesized into cascading 32-bit DSP multipliers, causing severe timing degradation. | **Linear Pointer Increment Streaming:** Refactored memory indexing to linear continuous pointer increments (`in_ptr++`). Saved 8 DSP slices, reduced latency by 62%, and achieved a strict **$II=1$** pipeline. |
| **3** | **AXI SmartConnect Contention**<br>`Address Decoder Clashes` | Synthesizing separate AXI control ports for every IP core caused address decoder collisions and routing congestion in Vivado IP Integrator. | **Unified Control Bundle:** Consolidated all control CSRs into a single `bundle=CTRL` AXI4-Lite slave interface with unified address offsets, isolating high-bandwidth traffic to the `S_AXI_HP0` DMA master port. |
| **4** | **Silent PuTTY Terminal**<br>`No Characters Emitted` | Standard C library `printf()` buffered ASCII characters inside the software runtime heap without flushing bytes to physical UART hardware. | **Direct Hardware MMIO Driver:** Wrote a custom register-level driver that polls the ZedBoard UART1 Channel Status register (`0xE000102C` Bit 4: `TXFULL`) and directly writes bytes to the physical FIFO at `0xE0001030`. |
| **5** | **DMA Stale Data & Cache Incoherency**<br>`Inference Mismatch` | The ARM Cortex-A9 utilizes a write-back L1/L2 cache. Modified image pixels remained in CPU cache SRAM while PL accelerators read stale DDR3 memory over `S_AXI_HP0`. | **Explicit Cache Maintenance Protocol:** Enforced mandatory `Xil_DCacheFlush()` before triggering accelerator `AP_START`, and `Xil_DCacheInvalidate()` immediately after `AP_DONE` prior to reading inference results. |
| **6** | **Vivado Synthesis Explosion**<br>`State Machine Bloat` | Global inlining of convolution, activation, and pooling functions caused exponential growth in Vivado synthesis state machines and logic duplication. | **Modular Function Scoping:** Applied `#pragma HLS INLINE off` to `conv_engine`, `relu`, and `maxpool_2x2`, creating clean hierarchical RTL modules with minimal compile time. |

---

## 📊 Post-Implementation Resource Sign-Off & Hardware Telemetry

### Vivado Post-Implementation Resource Utilization Sign-Off

Physical implementation on the **Xilinx Zynq-7000 SoC (ZedBoard &mdash; `xc7z020clg484-1`)** achieved full timing closure with ample design margin:

| Resource Primitive | Used by Edge AI SoC | Total Available on ZedBoard | Utilization Percentage | Design Margin & Sign-Off Status |
|:---|:---:|:---:|:---:|:---:|
| **LUT (Look-Up Tables)** | **6,106** | 53,200 | **11.48%** | 🟢 **PASS** (88.5% Available Headroom) |
| **FF (Flip-Flops)** | **11,503** | 106,400 | **10.81%** | 🟢 **PASS** (89.2% Available Headroom) |
| **BRAM (36Kb Blocks)** | **22** | 140 | **15.71%** | 🟢 **PASS** (84.3% Available Headroom) |
| **DSP48E1 Multipliers** | **47** | 220 | **21.36%** | 🟢 **PASS** (Optimized via Linear Streaming) |
| **Worst Negative Slack (WNS)** | **+7.236 ns** | 0.000 ns Target | **PASS** | 🟢 **TIMING SIGNED OFF (+7.236 ns Margin)** |
| **Worst Hold Slack (WHS)** | **+0.021 ns** | 0.000 ns Target | **PASS** | 🟢 **TIMING SIGNED OFF (+0.021 ns Margin)** |
| **System Clock Frequency** | **100.00 MHz** | 10.00 ns Period | **100%** | 🟢 **ROCK-SOLID STABILITY** |
| **Design Rule Check (DRC)** | **0 Errors** | 0 Permitted | **0 Errors** | 🟢 **CLEAN BITSTREAM GENERATED** |

### Verbatim Hardware Telemetry (PuTTY Serial Terminal @ 115200 Baud)

```
[SYSTEM] ZedBoard ARM Core-0 Active on UART1 (115200 baud).
[SYSTEM] Starting Edge AI SoC Benchmark Suite...

==========================================================
   Edge AI Inference SoC with Hardware Root-of-Trust
   ZedBoard (Zynq-7020) -- Molik Rajvanshi
   [RUN ITERATION #1]
==========================================================

----------------------------------------------------------
  PHASE 1: Secure Boot Verification
----------------------------------------------------------
  Hashing firmware region via SHA-256 IP...
  Reference hash: ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
  Computed hash : ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
  SECURE BOOT: *** PASS *** Hash verified!

----------------------------------------------------------
  PHASE 2: CNN Inference (3x3 Conv + ReLU)
----------------------------------------------------------
  Input:   1ch x 4x4 (INT8)
  Weights: 3x3 kernel
  Output:  1ch x 2x2 (INT32)

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
  Plaintext : 3243f6a8885a308d313198a2e0370734
  Key       : 2b7e151628aed2a6abf7158809cf4f3c
  Ciphertext: 3925841d02dc09fbdc118597196a0b32
  Expected  : 3925841d02dc09fbdc118597196a0b32
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
[HEARTBEAT] Waiting 5 seconds before next iteration...
```

---

## 📁 Repository Structure & Deliverables Manifest

```
edge-ai-soc/
├── synthe_report.txt                          # Raw Vitis HLS C-Synthesis log & scheduling report
├── README.md                                  # Repository documentation
├── LICENSE                                    # MIT License
├── .gitignore                                 # Git ignore patterns for Vivado/Vitis artifacts
│
├── hls/                                       # High-Level Synthesis IP Core Designs
│   ├── cnn_accelerator/                       # 2D CNN Inference Engine IP
│   │   ├── src/
│   │   │   ├── accel_top.h                    # Port declarations, pragmas, data types
│   │   │   ├── accel_top.cpp                  # Accelerator top function with AXI ports
│   │   │   ├── conv_engine.cpp                # 2D convolution MAC calculation
│   │   │   ├── relu.cpp                       # In-place ReLU non-linear activation
│   │   │   └── maxpool.cpp                    # 2x2 max-pooling reduction
│   │   ├── testbench/
│   │   │   ├── tb_accel.cpp                   # C-Simulation verification testbench
│   │   │   └── test_data.h                    # Golden numerical reference vectors
│   │   └── cnn_accelerator/solution1/         # Synthesis reports & exported Vivado IP .zip
│   │
│   ├── sha256/                                # NIST FIPS 180-4 SHA-256 Silicon RoT IP
│   │   ├── src/
│   │   │   ├── sha256.h                       # Round constants K, Initial hash values H
│   │   │   ├── sha256.cpp                     # 2-stage multi-cycle 64-round pipeline
│   │   │   └── sha256_top.cpp                 # Top-level AXI master/slave wrapper
│   │   ├── testbench/
│   │   │   └── tb_sha256.cpp                  # NIST Known Answer Test (KAT) testbench
│   │   └── sha256/solution1/                  # Synthesis reports & exported Vivado IP .zip
│   │
│   └── aes128/                                # NIST FIPS 197 AES-128 Cryptographic Engine IP
│       ├── src/
│       │   ├── aes128.h                       # Rijndael S-Box and Rcon constant tables
│       │   ├── aes128.cpp                     # 10-round cipher transformation logic
│       │   └── aes128_top.cpp                 # Top-level AXI master/slave wrapper
│       ├── testbench/
│       │   └── tb_aes128.cpp                  # NIST Appendix B verification testbench
│       └── aes128/solution1/                  # Synthesis reports & exported Vivado IP .zip
│
├── vivado/                                    # Full Vivado Hardware Project
│   └── edge_ai_soc/
│       ├── edge_ai_soc.xpr                    # Vivado project file
│       ├── design_1_wrapper.xsa               # Exported Hardware Specification for Vitis
│       └── edge_ai_soc.srcs/                  # Block design (.bd), wrappers, and IP xci files
│
├── synth/                                     # Automated Synthesis & Implementation Scripts
│   ├── constraints/
│   │   └── timing.xdc                         # 100 MHz clock & timing constraints
│   └── vivado/
│       ├── create_project.tcl                 # Automated Vivado project generation script
│       └── build.tcl                          # Headless synthesis, implementation & bitstream script
│
├── sw/                                        # Bare-Metal C Application Software
│   └── src/
│       ├── main.c                             # Bare-metal demo orchestrating phases 1, 2, 3
│       ├── cnn_driver.h                       # Register-level driver for CNN accelerator
│       └── sha256_driver.h                    # Register-level driver for SHA-256 RoT core
│
└── vitis_workspace/                           # Xilinx Vitis Unified Software Workspace
    ├── edge_ai_soc_app/                       # Bare-metal application project & linker script
    ├── edge_ai_soc_app_system/                # Vitis system project container
    └── zedboard_platform/                     # Hardware platform specification generated from XSA
```

---

## 🚀 End-to-End Build & Reproduction Guide

### Toolchain Prerequisites

| Tool | Version | Target Device | Board Preset |
|:---|:---:|:---:|:---:|
| **AMD Xilinx Vivado** | 2022.1 | `xc7z020clg484-1` | Digilent ZedBoard |
| **AMD Vitis HLS** | 2022.1 | `xc7z020clg484-1` | Default |
| **AMD Vitis IDE** | 2022.1 | Standalone BSP | ARM Cortex-A9 Core 0 |
| **Serial Console** | Any | 115200 Baud, 8N1 | COM4 (ZedBoard J14) |

---

### Step 1: Synthesize & Export HLS IP Cores

Open Vitis HLS command prompt or GUI for each core (`cnn_accelerator`, `sha256`, `aes128`):

```bash
# Example for CNN Accelerator:
cd hls/cnn_accelerator
vitis_hls -f run_hls.tcl
# Or via GUI:
# 1. Add src/*.cpp and src/*.h as design sources
# 2. Add testbench/tb_*.cpp as testbench sources
# 3. Set Top Function: accel_top (or sha256_top / aes128_top)
# 4. Set Part: xc7z020clg484-1, Clock: 10.0ns (100 MHz)
# 5. Run C-Simulation -> C-Synthesis -> Export RTL (IP Catalog)
```

---

### Step 2: Vivado Block Design & Bitstream Generation

Launch Vivado 2022.1 and build the hardware platform:

```bash
# Method A: Headless automated batch build
vivado -mode batch -source synth/vivado/create_project.tcl
vivado -mode batch -source synth/vivado/build.tcl

# Method B: Vivado GUI Flow
# 1. Open vivado/edge_ai_soc/edge_ai_soc.xpr
# 2. In IP Catalog, verify links to exported IPs under hls/*/solution1/impl/ip
# 3. Generate Block Design: design_1.bd
# 4. Run Synthesis -> Implementation (Verify WNS > 0.00 ns)
# 5. Generate Bitstream -> File -> Export Hardware -> Include Bitstream -> design_1_wrapper.xsa
```

---

### Step 3: Vitis Bare-Metal Application Build

Launch the Vitis Unified IDE 2022.1:

```bash
# 1. Set Workspace to vitis_workspace/
# 2. Open edge_ai_soc_app project
# 3. If updating hardware: Right click zedboard_platform -> Update Hardware Specification -> Select design_1_wrapper.xsa
# 4. Build Project (Ctrl+B) -> Generates edge_ai_soc_app.elf
```

---

### Step 4: Physical Hardware Validation on ZedBoard

1. Connect the ZedBoard to your workstation using two micro-USB cables:
   * **PROG Port (J17):** JTAG bitstream configuration.
   * **UART Port (J14):** USB-to-UART serial interface (Cypress FTDI).
2. Set ZedBoard boot jumpers to JTAG mode (`MIO[6:2] = 00000`).
3. Power on the board (Switch `SW8`).
4. Launch **PuTTY** or serial monitor:
   * **Baud Rate:** `115200`
   * **Data Bits:** `8`, **Parity:** `None`, **Stop Bits:** `1`
5. In Vitis, right-click `edge_ai_soc_app` &rarr; **Run As &rarr; Launch on Hardware (Single Application Debug)**.
6. Observe real-time secure boot hash attestation, CNN inference, and AES encryption telemetry.

---

## 💬 Technical Interview Defense & Key Architectural Q&A

### Q1: Why did SHA-256 have a severe setup violation (-8.39 ns) in HLS, and how was it resolved?
> **Answer:** In standard NIST SHA-256, round compression executes $T_1 = h + \Sigma_1(e) + \text{Ch}(e, f, g) + K_t + W_t$ and $a = T_1 + (\Sigma_0(a) + \text{Maj}(a, b, c))$. Enforcing single-cycle execution created a combinational chain of six 32-bit adders, bitwise rotations, and dual array lookups exceeding $15.69\text{ ns}$, violating the $10.0\text{ ns}$ period. I resolved this by fully partitioning $W[64]$ and $K[64]$ into flip-flop registers ($0\text{ ns}$ lookup delay) and constraining the loop to a 2-stage multi-cycle pipeline (`#pragma HLS PIPELINE II=2` and `#pragma HLS LATENCY min=2 max=2`). This placed intermediate pipeline registers between the $T_1/T_2$ adders and state registers, compressing critical path delay to $<3.8\text{ ns}$ and yielding **$+7.236\text{ ns}$ positive slack**.

### Q2: Why is explicit cache flushing (`Xil_DCacheFlush`) mandatory before starting the accelerator?
> **Answer:** The ARM Cortex-A9 features write-back L1/L2 data caches. When the CPU prepares image activations or weights in memory, updated data initially resides in CPU cache SRAM and has not been committed to physical DDR3 SDRAM. Because the PL accelerators access DDR3 directly via the `S_AXI_HP0` DMA master port, failing to flush dirty cache lines causes the IP to process stale data. Calling `Xil_DCacheFlush()` pushes dirty cache lines to DDR3, and calling `Xil_DCacheInvalidate()` after IP execution forces the CPU to re-read freshly computed accelerator results from DDR3.

### Q3: How does the dual-plane AXI interconnect topology prevent bus contention?
> **Answer:** We bifurcated control and data planes: AXI4-Lite (`M_AXI_GP0`) handles low-throughput register handshakes (programming base addresses, layer dimensions, triggering `AP_START`), while AXI4-Full (`S_AXI_HP0`) provides high-bandwidth burst DMA direct to DDR3 SDRAM. This prevents control transaction stalls during high-volume feature map transfers.

### Q4: How did you optimize memory bandwidth and DSP usage for the CNN accelerator?
> **Answer:** Rather than streaming individual pixels over AXI for each multiply-accumulate operation, the DPU buffers tiles locally into True Dual-Port Block RAM (`ram_2p`) with cyclic partitioning. Furthermore, replacing multidimensional addressing multipliers with linear single-cycle pointer increments (`in_ptr++`) achieved a single-cycle Initiation Interval (**$II=1$**) while eliminating 8 DSP slices.

---

## 👤 Author & License

* **Lead SoC Architect & Developer:** **Molik Rajvanshi**
* **GitHub Profile:** [@MolikRajvanshi](https://github.com/MolikRajvanshi)
* **Target Hardware:** Xilinx ZedBoard (Zynq-7000 XC7Z020-CLG484-1)
* **License:** Distributed under the **MIT License**. See [`LICENSE`](LICENSE) for complete terms.
