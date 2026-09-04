// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAES128_TOP_H
#define XAES128_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes128_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Ctrl_BaseAddress;
} XAes128_top_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XAes128_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes128_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes128_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes128_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes128_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAes128_top_Initialize(XAes128_top *InstancePtr, u16 DeviceId);
XAes128_top_Config* XAes128_top_LookupConfig(u16 DeviceId);
int XAes128_top_CfgInitialize(XAes128_top *InstancePtr, XAes128_top_Config *ConfigPtr);
#else
int XAes128_top_Initialize(XAes128_top *InstancePtr, const char* InstanceName);
int XAes128_top_Release(XAes128_top *InstancePtr);
#endif

void XAes128_top_Start(XAes128_top *InstancePtr);
u32 XAes128_top_IsDone(XAes128_top *InstancePtr);
u32 XAes128_top_IsIdle(XAes128_top *InstancePtr);
u32 XAes128_top_IsReady(XAes128_top *InstancePtr);
void XAes128_top_EnableAutoRestart(XAes128_top *InstancePtr);
void XAes128_top_DisableAutoRestart(XAes128_top *InstancePtr);

void XAes128_top_Set_data_in(XAes128_top *InstancePtr, u64 Data);
u64 XAes128_top_Get_data_in(XAes128_top *InstancePtr);
void XAes128_top_Set_key_in(XAes128_top *InstancePtr, u64 Data);
u64 XAes128_top_Get_key_in(XAes128_top *InstancePtr);
void XAes128_top_Set_data_out(XAes128_top *InstancePtr, u64 Data);
u64 XAes128_top_Get_data_out(XAes128_top *InstancePtr);
void XAes128_top_Set_encrypt(XAes128_top *InstancePtr, u32 Data);
u32 XAes128_top_Get_encrypt(XAes128_top *InstancePtr);

void XAes128_top_InterruptGlobalEnable(XAes128_top *InstancePtr);
void XAes128_top_InterruptGlobalDisable(XAes128_top *InstancePtr);
void XAes128_top_InterruptEnable(XAes128_top *InstancePtr, u32 Mask);
void XAes128_top_InterruptDisable(XAes128_top *InstancePtr, u32 Mask);
void XAes128_top_InterruptClear(XAes128_top *InstancePtr, u32 Mask);
u32 XAes128_top_InterruptGetEnabled(XAes128_top *InstancePtr);
u32 XAes128_top_InterruptGetStatus(XAes128_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
