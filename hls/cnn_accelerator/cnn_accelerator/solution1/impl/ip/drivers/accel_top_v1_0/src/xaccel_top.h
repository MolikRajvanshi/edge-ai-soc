// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XACCEL_TOP_H
#define XACCEL_TOP_H

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
#include "xaccel_top_hw.h"

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
} XAccel_top_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XAccel_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAccel_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAccel_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAccel_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAccel_top_ReadReg(BaseAddress, RegOffset) \
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
int XAccel_top_Initialize(XAccel_top *InstancePtr, u16 DeviceId);
XAccel_top_Config* XAccel_top_LookupConfig(u16 DeviceId);
int XAccel_top_CfgInitialize(XAccel_top *InstancePtr, XAccel_top_Config *ConfigPtr);
#else
int XAccel_top_Initialize(XAccel_top *InstancePtr, const char* InstanceName);
int XAccel_top_Release(XAccel_top *InstancePtr);
#endif

void XAccel_top_Start(XAccel_top *InstancePtr);
u32 XAccel_top_IsDone(XAccel_top *InstancePtr);
u32 XAccel_top_IsIdle(XAccel_top *InstancePtr);
u32 XAccel_top_IsReady(XAccel_top *InstancePtr);
void XAccel_top_EnableAutoRestart(XAccel_top *InstancePtr);
void XAccel_top_DisableAutoRestart(XAccel_top *InstancePtr);

void XAccel_top_Set_input_data(XAccel_top *InstancePtr, u64 Data);
u64 XAccel_top_Get_input_data(XAccel_top *InstancePtr);
void XAccel_top_Set_weight_data(XAccel_top *InstancePtr, u64 Data);
u64 XAccel_top_Get_weight_data(XAccel_top *InstancePtr);
void XAccel_top_Set_bias_data(XAccel_top *InstancePtr, u64 Data);
u64 XAccel_top_Get_bias_data(XAccel_top *InstancePtr);
void XAccel_top_Set_output_data(XAccel_top *InstancePtr, u64 Data);
u64 XAccel_top_Get_output_data(XAccel_top *InstancePtr);
void XAccel_top_Set_kernel_size(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_kernel_size(XAccel_top *InstancePtr);
void XAccel_top_Set_in_channels(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_in_channels(XAccel_top *InstancePtr);
void XAccel_top_Set_out_channels(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_out_channels(XAccel_top *InstancePtr);
void XAccel_top_Set_in_height(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_in_height(XAccel_top *InstancePtr);
void XAccel_top_Set_in_width(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_in_width(XAccel_top *InstancePtr);
void XAccel_top_Set_stride(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_stride(XAccel_top *InstancePtr);
void XAccel_top_Set_padding(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_padding(XAccel_top *InstancePtr);
void XAccel_top_Set_relu_enable(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_relu_enable(XAccel_top *InstancePtr);
void XAccel_top_Set_pool_enable(XAccel_top *InstancePtr, u32 Data);
u32 XAccel_top_Get_pool_enable(XAccel_top *InstancePtr);

void XAccel_top_InterruptGlobalEnable(XAccel_top *InstancePtr);
void XAccel_top_InterruptGlobalDisable(XAccel_top *InstancePtr);
void XAccel_top_InterruptEnable(XAccel_top *InstancePtr, u32 Mask);
void XAccel_top_InterruptDisable(XAccel_top *InstancePtr, u32 Mask);
void XAccel_top_InterruptClear(XAccel_top *InstancePtr, u32 Mask);
u32 XAccel_top_InterruptGetEnabled(XAccel_top *InstancePtr);
u32 XAccel_top_InterruptGetStatus(XAccel_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
