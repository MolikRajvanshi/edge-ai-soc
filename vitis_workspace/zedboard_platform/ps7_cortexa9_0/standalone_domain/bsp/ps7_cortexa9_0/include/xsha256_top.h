// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSHA256_TOP_H
#define XSHA256_TOP_H

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
#include "xsha256_top_hw.h"

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
} XSha256_top_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XSha256_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSha256_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSha256_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSha256_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSha256_top_ReadReg(BaseAddress, RegOffset) \
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
int XSha256_top_Initialize(XSha256_top *InstancePtr, u16 DeviceId);
XSha256_top_Config* XSha256_top_LookupConfig(u16 DeviceId);
int XSha256_top_CfgInitialize(XSha256_top *InstancePtr, XSha256_top_Config *ConfigPtr);
#else
int XSha256_top_Initialize(XSha256_top *InstancePtr, const char* InstanceName);
int XSha256_top_Release(XSha256_top *InstancePtr);
#endif

void XSha256_top_Start(XSha256_top *InstancePtr);
u32 XSha256_top_IsDone(XSha256_top *InstancePtr);
u32 XSha256_top_IsIdle(XSha256_top *InstancePtr);
u32 XSha256_top_IsReady(XSha256_top *InstancePtr);
void XSha256_top_EnableAutoRestart(XSha256_top *InstancePtr);
void XSha256_top_DisableAutoRestart(XSha256_top *InstancePtr);

void XSha256_top_Set_message(XSha256_top *InstancePtr, u64 Data);
u64 XSha256_top_Get_message(XSha256_top *InstancePtr);
void XSha256_top_Set_digest(XSha256_top *InstancePtr, u64 Data);
u64 XSha256_top_Get_digest(XSha256_top *InstancePtr);
void XSha256_top_Set_msg_len_words(XSha256_top *InstancePtr, u32 Data);
u32 XSha256_top_Get_msg_len_words(XSha256_top *InstancePtr);

void XSha256_top_InterruptGlobalEnable(XSha256_top *InstancePtr);
void XSha256_top_InterruptGlobalDisable(XSha256_top *InstancePtr);
void XSha256_top_InterruptEnable(XSha256_top *InstancePtr, u32 Mask);
void XSha256_top_InterruptDisable(XSha256_top *InstancePtr, u32 Mask);
void XSha256_top_InterruptClear(XSha256_top *InstancePtr, u32 Mask);
u32 XSha256_top_InterruptGetEnabled(XSha256_top *InstancePtr);
u32 XSha256_top_InterruptGetStatus(XSha256_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
