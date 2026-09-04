set moduleName sha256_process_block_Pipeline_EXPAND_W
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {sha256_process_block_Pipeline_EXPAND_W}
set C_modelType { void 0 }
set C_modelArgList {
	{ block_read_16 int 32 regular  }
	{ block_read_17 int 32 regular  }
	{ block_read_18 int 32 regular  }
	{ block_read_19 int 32 regular  }
	{ block_read_20 int 32 regular  }
	{ block_read_21 int 32 regular  }
	{ block_read_22 int 32 regular  }
	{ block_read_23 int 32 regular  }
	{ block_read_24 int 32 regular  }
	{ block_read_25 int 32 regular  }
	{ block_read_26 int 32 regular  }
	{ block_read_27 int 32 regular  }
	{ block_read_28 int 32 regular  }
	{ block_read_29 int 32 regular  }
	{ block_read_30 int 32 regular  }
	{ block_read int 32 regular  }
	{ W_47_out int 32 regular {pointer 1}  }
	{ W_46_out int 32 regular {pointer 1}  }
	{ W_45_out int 32 regular {pointer 1}  }
	{ W_44_out int 32 regular {pointer 1}  }
	{ W_43_out int 32 regular {pointer 1}  }
	{ W_42_out int 32 regular {pointer 1}  }
	{ W_41_out int 32 regular {pointer 1}  }
	{ W_40_out int 32 regular {pointer 1}  }
	{ W_39_out int 32 regular {pointer 1}  }
	{ W_38_out int 32 regular {pointer 1}  }
	{ W_37_out int 32 regular {pointer 1}  }
	{ W_36_out int 32 regular {pointer 1}  }
	{ W_35_out int 32 regular {pointer 1}  }
	{ W_34_out int 32 regular {pointer 1}  }
	{ W_33_out int 32 regular {pointer 1}  }
	{ W_32_out int 32 regular {pointer 1}  }
	{ W_31_out int 32 regular {pointer 1}  }
	{ W_30_out int 32 regular {pointer 1}  }
	{ W_29_out int 32 regular {pointer 1}  }
	{ W_28_out int 32 regular {pointer 1}  }
	{ W_27_out int 32 regular {pointer 1}  }
	{ W_26_out int 32 regular {pointer 1}  }
	{ W_25_out int 32 regular {pointer 1}  }
	{ W_24_out int 32 regular {pointer 1}  }
	{ W_23_out int 32 regular {pointer 1}  }
	{ W_22_out int 32 regular {pointer 1}  }
	{ W_21_out int 32 regular {pointer 1}  }
	{ W_20_out int 32 regular {pointer 1}  }
	{ W_19_out int 32 regular {pointer 1}  }
	{ W_18_out int 32 regular {pointer 1}  }
	{ W_17_out int 32 regular {pointer 1}  }
	{ W_16_out int 32 regular {pointer 1}  }
	{ W_15_out int 32 regular {pointer 1}  }
	{ W_14_out int 32 regular {pointer 1}  }
	{ W_13_out int 32 regular {pointer 1}  }
	{ W_12_out int 32 regular {pointer 1}  }
	{ W_11_out int 32 regular {pointer 1}  }
	{ W_10_out int 32 regular {pointer 1}  }
	{ W_9_out int 32 regular {pointer 1}  }
	{ W_8_out int 32 regular {pointer 1}  }
	{ W_7_out int 32 regular {pointer 1}  }
	{ W_6_out int 32 regular {pointer 1}  }
	{ W_5_out int 32 regular {pointer 1}  }
	{ W_4_out int 32 regular {pointer 1}  }
	{ W_3_out int 32 regular {pointer 1}  }
	{ W_2_out int 32 regular {pointer 1}  }
	{ W_1_out int 32 regular {pointer 1}  }
	{ W_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "block_read_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_47_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_46_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_45_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_44_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_43_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_42_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_41_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_40_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_39_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_38_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_37_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_36_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ block_read_16 sc_in sc_lv 32 signal 0 } 
	{ block_read_17 sc_in sc_lv 32 signal 1 } 
	{ block_read_18 sc_in sc_lv 32 signal 2 } 
	{ block_read_19 sc_in sc_lv 32 signal 3 } 
	{ block_read_20 sc_in sc_lv 32 signal 4 } 
	{ block_read_21 sc_in sc_lv 32 signal 5 } 
	{ block_read_22 sc_in sc_lv 32 signal 6 } 
	{ block_read_23 sc_in sc_lv 32 signal 7 } 
	{ block_read_24 sc_in sc_lv 32 signal 8 } 
	{ block_read_25 sc_in sc_lv 32 signal 9 } 
	{ block_read_26 sc_in sc_lv 32 signal 10 } 
	{ block_read_27 sc_in sc_lv 32 signal 11 } 
	{ block_read_28 sc_in sc_lv 32 signal 12 } 
	{ block_read_29 sc_in sc_lv 32 signal 13 } 
	{ block_read_30 sc_in sc_lv 32 signal 14 } 
	{ block_read sc_in sc_lv 32 signal 15 } 
	{ W_47_out sc_out sc_lv 32 signal 16 } 
	{ W_47_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ W_46_out sc_out sc_lv 32 signal 17 } 
	{ W_46_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ W_45_out sc_out sc_lv 32 signal 18 } 
	{ W_45_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ W_44_out sc_out sc_lv 32 signal 19 } 
	{ W_44_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ W_43_out sc_out sc_lv 32 signal 20 } 
	{ W_43_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ W_42_out sc_out sc_lv 32 signal 21 } 
	{ W_42_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ W_41_out sc_out sc_lv 32 signal 22 } 
	{ W_41_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ W_40_out sc_out sc_lv 32 signal 23 } 
	{ W_40_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ W_39_out sc_out sc_lv 32 signal 24 } 
	{ W_39_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ W_38_out sc_out sc_lv 32 signal 25 } 
	{ W_38_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ W_37_out sc_out sc_lv 32 signal 26 } 
	{ W_37_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ W_36_out sc_out sc_lv 32 signal 27 } 
	{ W_36_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ W_35_out sc_out sc_lv 32 signal 28 } 
	{ W_35_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ W_34_out sc_out sc_lv 32 signal 29 } 
	{ W_34_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ W_33_out sc_out sc_lv 32 signal 30 } 
	{ W_33_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ W_32_out sc_out sc_lv 32 signal 31 } 
	{ W_32_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ W_31_out sc_out sc_lv 32 signal 32 } 
	{ W_31_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ W_30_out sc_out sc_lv 32 signal 33 } 
	{ W_30_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ W_29_out sc_out sc_lv 32 signal 34 } 
	{ W_29_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ W_28_out sc_out sc_lv 32 signal 35 } 
	{ W_28_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ W_27_out sc_out sc_lv 32 signal 36 } 
	{ W_27_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ W_26_out sc_out sc_lv 32 signal 37 } 
	{ W_26_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ W_25_out sc_out sc_lv 32 signal 38 } 
	{ W_25_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ W_24_out sc_out sc_lv 32 signal 39 } 
	{ W_24_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ W_23_out sc_out sc_lv 32 signal 40 } 
	{ W_23_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ W_22_out sc_out sc_lv 32 signal 41 } 
	{ W_22_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ W_21_out sc_out sc_lv 32 signal 42 } 
	{ W_21_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ W_20_out sc_out sc_lv 32 signal 43 } 
	{ W_20_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ W_19_out sc_out sc_lv 32 signal 44 } 
	{ W_19_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ W_18_out sc_out sc_lv 32 signal 45 } 
	{ W_18_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ W_17_out sc_out sc_lv 32 signal 46 } 
	{ W_17_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ W_16_out sc_out sc_lv 32 signal 47 } 
	{ W_16_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ W_15_out sc_out sc_lv 32 signal 48 } 
	{ W_15_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ W_14_out sc_out sc_lv 32 signal 49 } 
	{ W_14_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ W_13_out sc_out sc_lv 32 signal 50 } 
	{ W_13_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ W_12_out sc_out sc_lv 32 signal 51 } 
	{ W_12_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ W_11_out sc_out sc_lv 32 signal 52 } 
	{ W_11_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ W_10_out sc_out sc_lv 32 signal 53 } 
	{ W_10_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ W_9_out sc_out sc_lv 32 signal 54 } 
	{ W_9_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ W_8_out sc_out sc_lv 32 signal 55 } 
	{ W_8_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ W_7_out sc_out sc_lv 32 signal 56 } 
	{ W_7_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ W_6_out sc_out sc_lv 32 signal 57 } 
	{ W_6_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ W_5_out sc_out sc_lv 32 signal 58 } 
	{ W_5_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ W_4_out sc_out sc_lv 32 signal 59 } 
	{ W_4_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ W_3_out sc_out sc_lv 32 signal 60 } 
	{ W_3_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ W_2_out sc_out sc_lv 32 signal 61 } 
	{ W_2_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ W_1_out sc_out sc_lv 32 signal 62 } 
	{ W_1_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ W_out sc_out sc_lv 32 signal 63 } 
	{ W_out_ap_vld sc_out sc_logic 1 outvld 63 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "block_read_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_16", "role": "default" }} , 
 	{ "name": "block_read_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_17", "role": "default" }} , 
 	{ "name": "block_read_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_18", "role": "default" }} , 
 	{ "name": "block_read_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_19", "role": "default" }} , 
 	{ "name": "block_read_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_20", "role": "default" }} , 
 	{ "name": "block_read_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_21", "role": "default" }} , 
 	{ "name": "block_read_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_22", "role": "default" }} , 
 	{ "name": "block_read_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_23", "role": "default" }} , 
 	{ "name": "block_read_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_24", "role": "default" }} , 
 	{ "name": "block_read_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_25", "role": "default" }} , 
 	{ "name": "block_read_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_26", "role": "default" }} , 
 	{ "name": "block_read_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_27", "role": "default" }} , 
 	{ "name": "block_read_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_28", "role": "default" }} , 
 	{ "name": "block_read_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_29", "role": "default" }} , 
 	{ "name": "block_read_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_30", "role": "default" }} , 
 	{ "name": "block_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read", "role": "default" }} , 
 	{ "name": "W_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_47_out", "role": "default" }} , 
 	{ "name": "W_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_47_out", "role": "ap_vld" }} , 
 	{ "name": "W_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_46_out", "role": "default" }} , 
 	{ "name": "W_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_46_out", "role": "ap_vld" }} , 
 	{ "name": "W_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_45_out", "role": "default" }} , 
 	{ "name": "W_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_45_out", "role": "ap_vld" }} , 
 	{ "name": "W_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_44_out", "role": "default" }} , 
 	{ "name": "W_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_44_out", "role": "ap_vld" }} , 
 	{ "name": "W_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_43_out", "role": "default" }} , 
 	{ "name": "W_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_43_out", "role": "ap_vld" }} , 
 	{ "name": "W_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_42_out", "role": "default" }} , 
 	{ "name": "W_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_42_out", "role": "ap_vld" }} , 
 	{ "name": "W_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_41_out", "role": "default" }} , 
 	{ "name": "W_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_41_out", "role": "ap_vld" }} , 
 	{ "name": "W_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_40_out", "role": "default" }} , 
 	{ "name": "W_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_40_out", "role": "ap_vld" }} , 
 	{ "name": "W_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_39_out", "role": "default" }} , 
 	{ "name": "W_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_39_out", "role": "ap_vld" }} , 
 	{ "name": "W_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_38_out", "role": "default" }} , 
 	{ "name": "W_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_38_out", "role": "ap_vld" }} , 
 	{ "name": "W_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_37_out", "role": "default" }} , 
 	{ "name": "W_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_37_out", "role": "ap_vld" }} , 
 	{ "name": "W_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_36_out", "role": "default" }} , 
 	{ "name": "W_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_36_out", "role": "ap_vld" }} , 
 	{ "name": "W_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_35_out", "role": "default" }} , 
 	{ "name": "W_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_35_out", "role": "ap_vld" }} , 
 	{ "name": "W_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_34_out", "role": "default" }} , 
 	{ "name": "W_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_34_out", "role": "ap_vld" }} , 
 	{ "name": "W_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_33_out", "role": "default" }} , 
 	{ "name": "W_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_33_out", "role": "ap_vld" }} , 
 	{ "name": "W_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_32_out", "role": "default" }} , 
 	{ "name": "W_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_32_out", "role": "ap_vld" }} , 
 	{ "name": "W_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_31_out", "role": "default" }} , 
 	{ "name": "W_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_31_out", "role": "ap_vld" }} , 
 	{ "name": "W_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_30_out", "role": "default" }} , 
 	{ "name": "W_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_30_out", "role": "ap_vld" }} , 
 	{ "name": "W_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_29_out", "role": "default" }} , 
 	{ "name": "W_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_29_out", "role": "ap_vld" }} , 
 	{ "name": "W_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_28_out", "role": "default" }} , 
 	{ "name": "W_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_28_out", "role": "ap_vld" }} , 
 	{ "name": "W_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_27_out", "role": "default" }} , 
 	{ "name": "W_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_27_out", "role": "ap_vld" }} , 
 	{ "name": "W_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_26_out", "role": "default" }} , 
 	{ "name": "W_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_26_out", "role": "ap_vld" }} , 
 	{ "name": "W_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_25_out", "role": "default" }} , 
 	{ "name": "W_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_25_out", "role": "ap_vld" }} , 
 	{ "name": "W_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_24_out", "role": "default" }} , 
 	{ "name": "W_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_24_out", "role": "ap_vld" }} , 
 	{ "name": "W_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_23_out", "role": "default" }} , 
 	{ "name": "W_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_23_out", "role": "ap_vld" }} , 
 	{ "name": "W_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_22_out", "role": "default" }} , 
 	{ "name": "W_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_22_out", "role": "ap_vld" }} , 
 	{ "name": "W_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_21_out", "role": "default" }} , 
 	{ "name": "W_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_21_out", "role": "ap_vld" }} , 
 	{ "name": "W_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_20_out", "role": "default" }} , 
 	{ "name": "W_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_20_out", "role": "ap_vld" }} , 
 	{ "name": "W_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_19_out", "role": "default" }} , 
 	{ "name": "W_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_19_out", "role": "ap_vld" }} , 
 	{ "name": "W_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_18_out", "role": "default" }} , 
 	{ "name": "W_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_18_out", "role": "ap_vld" }} , 
 	{ "name": "W_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_17_out", "role": "default" }} , 
 	{ "name": "W_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_17_out", "role": "ap_vld" }} , 
 	{ "name": "W_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_16_out", "role": "default" }} , 
 	{ "name": "W_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_16_out", "role": "ap_vld" }} , 
 	{ "name": "W_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_15_out", "role": "default" }} , 
 	{ "name": "W_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_15_out", "role": "ap_vld" }} , 
 	{ "name": "W_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_14_out", "role": "default" }} , 
 	{ "name": "W_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_14_out", "role": "ap_vld" }} , 
 	{ "name": "W_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_13_out", "role": "default" }} , 
 	{ "name": "W_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_13_out", "role": "ap_vld" }} , 
 	{ "name": "W_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_12_out", "role": "default" }} , 
 	{ "name": "W_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_12_out", "role": "ap_vld" }} , 
 	{ "name": "W_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_11_out", "role": "default" }} , 
 	{ "name": "W_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_11_out", "role": "ap_vld" }} , 
 	{ "name": "W_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_10_out", "role": "default" }} , 
 	{ "name": "W_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_10_out", "role": "ap_vld" }} , 
 	{ "name": "W_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_9_out", "role": "default" }} , 
 	{ "name": "W_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_9_out", "role": "ap_vld" }} , 
 	{ "name": "W_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_8_out", "role": "default" }} , 
 	{ "name": "W_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_8_out", "role": "ap_vld" }} , 
 	{ "name": "W_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_7_out", "role": "default" }} , 
 	{ "name": "W_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_7_out", "role": "ap_vld" }} , 
 	{ "name": "W_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_6_out", "role": "default" }} , 
 	{ "name": "W_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_6_out", "role": "ap_vld" }} , 
 	{ "name": "W_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_5_out", "role": "default" }} , 
 	{ "name": "W_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_5_out", "role": "ap_vld" }} , 
 	{ "name": "W_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_4_out", "role": "default" }} , 
 	{ "name": "W_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_4_out", "role": "ap_vld" }} , 
 	{ "name": "W_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_3_out", "role": "default" }} , 
 	{ "name": "W_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_3_out", "role": "ap_vld" }} , 
 	{ "name": "W_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_2_out", "role": "default" }} , 
 	{ "name": "W_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_2_out", "role": "ap_vld" }} , 
 	{ "name": "W_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_1_out", "role": "default" }} , 
 	{ "name": "W_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_1_out", "role": "ap_vld" }} , 
 	{ "name": "W_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_out", "role": "default" }} , 
 	{ "name": "W_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sha256_process_block_Pipeline_EXPAND_W",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98", "EstimateLatencyMax" : "98",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "block_read_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "EXPAND_W", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_32_1_1_U21", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_32_1_1_U22", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_32_1_1_U23", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_32_1_1_U24", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_process_block_Pipeline_EXPAND_W {
		block_read_16 {Type I LastRead 0 FirstWrite -1}
		block_read_17 {Type I LastRead 0 FirstWrite -1}
		block_read_18 {Type I LastRead 0 FirstWrite -1}
		block_read_19 {Type I LastRead 0 FirstWrite -1}
		block_read_20 {Type I LastRead 0 FirstWrite -1}
		block_read_21 {Type I LastRead 0 FirstWrite -1}
		block_read_22 {Type I LastRead 0 FirstWrite -1}
		block_read_23 {Type I LastRead 0 FirstWrite -1}
		block_read_24 {Type I LastRead 0 FirstWrite -1}
		block_read_25 {Type I LastRead 0 FirstWrite -1}
		block_read_26 {Type I LastRead 0 FirstWrite -1}
		block_read_27 {Type I LastRead 0 FirstWrite -1}
		block_read_28 {Type I LastRead 0 FirstWrite -1}
		block_read_29 {Type I LastRead 0 FirstWrite -1}
		block_read_30 {Type I LastRead 0 FirstWrite -1}
		block_read {Type I LastRead 0 FirstWrite -1}
		W_47_out {Type O LastRead -1 FirstWrite 0}
		W_46_out {Type O LastRead -1 FirstWrite 0}
		W_45_out {Type O LastRead -1 FirstWrite 0}
		W_44_out {Type O LastRead -1 FirstWrite 0}
		W_43_out {Type O LastRead -1 FirstWrite 0}
		W_42_out {Type O LastRead -1 FirstWrite 0}
		W_41_out {Type O LastRead -1 FirstWrite 0}
		W_40_out {Type O LastRead -1 FirstWrite 0}
		W_39_out {Type O LastRead -1 FirstWrite 0}
		W_38_out {Type O LastRead -1 FirstWrite 0}
		W_37_out {Type O LastRead -1 FirstWrite 0}
		W_36_out {Type O LastRead -1 FirstWrite 0}
		W_35_out {Type O LastRead -1 FirstWrite 0}
		W_34_out {Type O LastRead -1 FirstWrite 0}
		W_33_out {Type O LastRead -1 FirstWrite 0}
		W_32_out {Type O LastRead -1 FirstWrite 0}
		W_31_out {Type O LastRead -1 FirstWrite 0}
		W_30_out {Type O LastRead -1 FirstWrite 0}
		W_29_out {Type O LastRead -1 FirstWrite 0}
		W_28_out {Type O LastRead -1 FirstWrite 0}
		W_27_out {Type O LastRead -1 FirstWrite 0}
		W_26_out {Type O LastRead -1 FirstWrite 0}
		W_25_out {Type O LastRead -1 FirstWrite 0}
		W_24_out {Type O LastRead -1 FirstWrite 0}
		W_23_out {Type O LastRead -1 FirstWrite 0}
		W_22_out {Type O LastRead -1 FirstWrite 0}
		W_21_out {Type O LastRead -1 FirstWrite 0}
		W_20_out {Type O LastRead -1 FirstWrite 0}
		W_19_out {Type O LastRead -1 FirstWrite 0}
		W_18_out {Type O LastRead -1 FirstWrite 0}
		W_17_out {Type O LastRead -1 FirstWrite 0}
		W_16_out {Type O LastRead -1 FirstWrite 0}
		W_15_out {Type O LastRead -1 FirstWrite 0}
		W_14_out {Type O LastRead -1 FirstWrite 0}
		W_13_out {Type O LastRead -1 FirstWrite 0}
		W_12_out {Type O LastRead -1 FirstWrite 0}
		W_11_out {Type O LastRead -1 FirstWrite 0}
		W_10_out {Type O LastRead -1 FirstWrite 0}
		W_9_out {Type O LastRead -1 FirstWrite 0}
		W_8_out {Type O LastRead -1 FirstWrite 0}
		W_7_out {Type O LastRead -1 FirstWrite 0}
		W_6_out {Type O LastRead -1 FirstWrite 0}
		W_5_out {Type O LastRead -1 FirstWrite 0}
		W_4_out {Type O LastRead -1 FirstWrite 0}
		W_3_out {Type O LastRead -1 FirstWrite 0}
		W_2_out {Type O LastRead -1 FirstWrite 0}
		W_1_out {Type O LastRead -1 FirstWrite 0}
		W_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "98", "Max" : "98"}
	, {"Name" : "Interval", "Min" : "98", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	block_read_16 { ap_none {  { block_read_16 in_data 0 32 } } }
	block_read_17 { ap_none {  { block_read_17 in_data 0 32 } } }
	block_read_18 { ap_none {  { block_read_18 in_data 0 32 } } }
	block_read_19 { ap_none {  { block_read_19 in_data 0 32 } } }
	block_read_20 { ap_none {  { block_read_20 in_data 0 32 } } }
	block_read_21 { ap_none {  { block_read_21 in_data 0 32 } } }
	block_read_22 { ap_none {  { block_read_22 in_data 0 32 } } }
	block_read_23 { ap_none {  { block_read_23 in_data 0 32 } } }
	block_read_24 { ap_none {  { block_read_24 in_data 0 32 } } }
	block_read_25 { ap_none {  { block_read_25 in_data 0 32 } } }
	block_read_26 { ap_none {  { block_read_26 in_data 0 32 } } }
	block_read_27 { ap_none {  { block_read_27 in_data 0 32 } } }
	block_read_28 { ap_none {  { block_read_28 in_data 0 32 } } }
	block_read_29 { ap_none {  { block_read_29 in_data 0 32 } } }
	block_read_30 { ap_none {  { block_read_30 in_data 0 32 } } }
	block_read { ap_none {  { block_read in_data 0 32 } } }
	W_47_out { ap_vld {  { W_47_out out_data 1 32 }  { W_47_out_ap_vld out_vld 1 1 } } }
	W_46_out { ap_vld {  { W_46_out out_data 1 32 }  { W_46_out_ap_vld out_vld 1 1 } } }
	W_45_out { ap_vld {  { W_45_out out_data 1 32 }  { W_45_out_ap_vld out_vld 1 1 } } }
	W_44_out { ap_vld {  { W_44_out out_data 1 32 }  { W_44_out_ap_vld out_vld 1 1 } } }
	W_43_out { ap_vld {  { W_43_out out_data 1 32 }  { W_43_out_ap_vld out_vld 1 1 } } }
	W_42_out { ap_vld {  { W_42_out out_data 1 32 }  { W_42_out_ap_vld out_vld 1 1 } } }
	W_41_out { ap_vld {  { W_41_out out_data 1 32 }  { W_41_out_ap_vld out_vld 1 1 } } }
	W_40_out { ap_vld {  { W_40_out out_data 1 32 }  { W_40_out_ap_vld out_vld 1 1 } } }
	W_39_out { ap_vld {  { W_39_out out_data 1 32 }  { W_39_out_ap_vld out_vld 1 1 } } }
	W_38_out { ap_vld {  { W_38_out out_data 1 32 }  { W_38_out_ap_vld out_vld 1 1 } } }
	W_37_out { ap_vld {  { W_37_out out_data 1 32 }  { W_37_out_ap_vld out_vld 1 1 } } }
	W_36_out { ap_vld {  { W_36_out out_data 1 32 }  { W_36_out_ap_vld out_vld 1 1 } } }
	W_35_out { ap_vld {  { W_35_out out_data 1 32 }  { W_35_out_ap_vld out_vld 1 1 } } }
	W_34_out { ap_vld {  { W_34_out out_data 1 32 }  { W_34_out_ap_vld out_vld 1 1 } } }
	W_33_out { ap_vld {  { W_33_out out_data 1 32 }  { W_33_out_ap_vld out_vld 1 1 } } }
	W_32_out { ap_vld {  { W_32_out out_data 1 32 }  { W_32_out_ap_vld out_vld 1 1 } } }
	W_31_out { ap_vld {  { W_31_out out_data 1 32 }  { W_31_out_ap_vld out_vld 1 1 } } }
	W_30_out { ap_vld {  { W_30_out out_data 1 32 }  { W_30_out_ap_vld out_vld 1 1 } } }
	W_29_out { ap_vld {  { W_29_out out_data 1 32 }  { W_29_out_ap_vld out_vld 1 1 } } }
	W_28_out { ap_vld {  { W_28_out out_data 1 32 }  { W_28_out_ap_vld out_vld 1 1 } } }
	W_27_out { ap_vld {  { W_27_out out_data 1 32 }  { W_27_out_ap_vld out_vld 1 1 } } }
	W_26_out { ap_vld {  { W_26_out out_data 1 32 }  { W_26_out_ap_vld out_vld 1 1 } } }
	W_25_out { ap_vld {  { W_25_out out_data 1 32 }  { W_25_out_ap_vld out_vld 1 1 } } }
	W_24_out { ap_vld {  { W_24_out out_data 1 32 }  { W_24_out_ap_vld out_vld 1 1 } } }
	W_23_out { ap_vld {  { W_23_out out_data 1 32 }  { W_23_out_ap_vld out_vld 1 1 } } }
	W_22_out { ap_vld {  { W_22_out out_data 1 32 }  { W_22_out_ap_vld out_vld 1 1 } } }
	W_21_out { ap_vld {  { W_21_out out_data 1 32 }  { W_21_out_ap_vld out_vld 1 1 } } }
	W_20_out { ap_vld {  { W_20_out out_data 1 32 }  { W_20_out_ap_vld out_vld 1 1 } } }
	W_19_out { ap_vld {  { W_19_out out_data 1 32 }  { W_19_out_ap_vld out_vld 1 1 } } }
	W_18_out { ap_vld {  { W_18_out out_data 1 32 }  { W_18_out_ap_vld out_vld 1 1 } } }
	W_17_out { ap_vld {  { W_17_out out_data 1 32 }  { W_17_out_ap_vld out_vld 1 1 } } }
	W_16_out { ap_vld {  { W_16_out out_data 1 32 }  { W_16_out_ap_vld out_vld 1 1 } } }
	W_15_out { ap_vld {  { W_15_out out_data 1 32 }  { W_15_out_ap_vld out_vld 1 1 } } }
	W_14_out { ap_vld {  { W_14_out out_data 1 32 }  { W_14_out_ap_vld out_vld 1 1 } } }
	W_13_out { ap_vld {  { W_13_out out_data 1 32 }  { W_13_out_ap_vld out_vld 1 1 } } }
	W_12_out { ap_vld {  { W_12_out out_data 1 32 }  { W_12_out_ap_vld out_vld 1 1 } } }
	W_11_out { ap_vld {  { W_11_out out_data 1 32 }  { W_11_out_ap_vld out_vld 1 1 } } }
	W_10_out { ap_vld {  { W_10_out out_data 1 32 }  { W_10_out_ap_vld out_vld 1 1 } } }
	W_9_out { ap_vld {  { W_9_out out_data 1 32 }  { W_9_out_ap_vld out_vld 1 1 } } }
	W_8_out { ap_vld {  { W_8_out out_data 1 32 }  { W_8_out_ap_vld out_vld 1 1 } } }
	W_7_out { ap_vld {  { W_7_out out_data 1 32 }  { W_7_out_ap_vld out_vld 1 1 } } }
	W_6_out { ap_vld {  { W_6_out out_data 1 32 }  { W_6_out_ap_vld out_vld 1 1 } } }
	W_5_out { ap_vld {  { W_5_out out_data 1 32 }  { W_5_out_ap_vld out_vld 1 1 } } }
	W_4_out { ap_vld {  { W_4_out out_data 1 32 }  { W_4_out_ap_vld out_vld 1 1 } } }
	W_3_out { ap_vld {  { W_3_out out_data 1 32 }  { W_3_out_ap_vld out_vld 1 1 } } }
	W_2_out { ap_vld {  { W_2_out out_data 1 32 }  { W_2_out_ap_vld out_vld 1 1 } } }
	W_1_out { ap_vld {  { W_1_out out_data 1 32 }  { W_1_out_ap_vld out_vld 1 1 } } }
	W_out { ap_vld {  { W_out out_data 1 32 }  { W_out_ap_vld out_vld 1 1 } } }
}
