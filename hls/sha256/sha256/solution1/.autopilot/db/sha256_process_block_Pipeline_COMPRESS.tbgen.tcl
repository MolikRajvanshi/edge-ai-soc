set moduleName sha256_process_block_Pipeline_COMPRESS
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
set C_modelName {sha256_process_block_Pipeline_COMPRESS}
set C_modelType { void 0 }
set C_modelArgList {
	{ h int 32 regular  }
	{ g int 32 regular  }
	{ f int 32 regular  }
	{ e int 32 regular  }
	{ d int 32 regular  }
	{ a int 32 regular  }
	{ b int 32 regular  }
	{ c int 32 regular  }
	{ block_read int 32 regular  }
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
	{ W_16_reload int 32 regular  }
	{ W_17_reload int 32 regular  }
	{ W_18_reload int 32 regular  }
	{ W_19_reload int 32 regular  }
	{ W_20_reload int 32 regular  }
	{ W_21_reload int 32 regular  }
	{ W_22_reload int 32 regular  }
	{ W_23_reload int 32 regular  }
	{ W_24_reload int 32 regular  }
	{ W_25_reload int 32 regular  }
	{ W_26_reload int 32 regular  }
	{ W_27_reload int 32 regular  }
	{ W_28_reload int 32 regular  }
	{ W_29_reload int 32 regular  }
	{ W_30_reload int 32 regular  }
	{ W_31_reload int 32 regular  }
	{ W_32_reload int 32 regular  }
	{ W_33_reload int 32 regular  }
	{ W_34_reload int 32 regular  }
	{ W_35_reload int 32 regular  }
	{ W_36_reload int 32 regular  }
	{ W_37_reload int 32 regular  }
	{ W_38_reload int 32 regular  }
	{ W_39_reload int 32 regular  }
	{ W_40_reload int 32 regular  }
	{ W_41_reload int 32 regular  }
	{ W_42_reload int 32 regular  }
	{ W_43_reload int 32 regular  }
	{ W_44_reload int 32 regular  }
	{ W_45_reload int 32 regular  }
	{ W_46_reload int 32 regular  }
	{ W_47_reload int 32 regular  }
	{ W_15_reload int 32 regular  }
	{ W_14_reload int 32 regular  }
	{ W_13_reload int 32 regular  }
	{ W_12_reload int 32 regular  }
	{ W_11_reload int 32 regular  }
	{ W_10_reload int 32 regular  }
	{ W_9_reload int 32 regular  }
	{ W_8_reload int 32 regular  }
	{ W_7_reload int 32 regular  }
	{ W_6_reload int 32 regular  }
	{ W_5_reload int 32 regular  }
	{ W_4_reload int 32 regular  }
	{ W_3_reload int 32 regular  }
	{ W_2_reload int 32 regular  }
	{ W_1_reload int 32 regular  }
	{ W_reload int 32 regular  }
	{ h_1_out int 32 regular {pointer 1}  }
	{ g_3_out int 32 regular {pointer 1}  }
	{ f_3_out int 32 regular {pointer 1}  }
	{ e_3_out int 32 regular {pointer 1}  }
	{ d_1_out int 32 regular {pointer 1}  }
	{ a_3_out int 32 regular {pointer 1}  }
	{ b_3_out int 32 regular {pointer 1}  }
	{ c_3_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
 	{ "Name" : "W_16_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_17_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_18_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_19_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_20_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_21_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_22_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_23_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_24_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_25_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_26_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_27_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_28_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_29_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_30_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_31_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_32_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_33_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_34_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_35_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_36_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_37_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_38_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_39_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_40_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_41_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_42_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_43_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_44_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_45_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_46_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_47_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_15_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_14_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_13_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_12_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_11_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_10_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_9_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_8_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_7_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "g_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 94
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ h sc_in sc_lv 32 signal 0 } 
	{ g sc_in sc_lv 32 signal 1 } 
	{ f sc_in sc_lv 32 signal 2 } 
	{ e sc_in sc_lv 32 signal 3 } 
	{ d sc_in sc_lv 32 signal 4 } 
	{ a sc_in sc_lv 32 signal 5 } 
	{ b sc_in sc_lv 32 signal 6 } 
	{ c sc_in sc_lv 32 signal 7 } 
	{ block_read sc_in sc_lv 32 signal 8 } 
	{ block_read_16 sc_in sc_lv 32 signal 9 } 
	{ block_read_17 sc_in sc_lv 32 signal 10 } 
	{ block_read_18 sc_in sc_lv 32 signal 11 } 
	{ block_read_19 sc_in sc_lv 32 signal 12 } 
	{ block_read_20 sc_in sc_lv 32 signal 13 } 
	{ block_read_21 sc_in sc_lv 32 signal 14 } 
	{ block_read_22 sc_in sc_lv 32 signal 15 } 
	{ block_read_23 sc_in sc_lv 32 signal 16 } 
	{ block_read_24 sc_in sc_lv 32 signal 17 } 
	{ block_read_25 sc_in sc_lv 32 signal 18 } 
	{ block_read_26 sc_in sc_lv 32 signal 19 } 
	{ block_read_27 sc_in sc_lv 32 signal 20 } 
	{ block_read_28 sc_in sc_lv 32 signal 21 } 
	{ block_read_29 sc_in sc_lv 32 signal 22 } 
	{ block_read_30 sc_in sc_lv 32 signal 23 } 
	{ W_16_reload sc_in sc_lv 32 signal 24 } 
	{ W_17_reload sc_in sc_lv 32 signal 25 } 
	{ W_18_reload sc_in sc_lv 32 signal 26 } 
	{ W_19_reload sc_in sc_lv 32 signal 27 } 
	{ W_20_reload sc_in sc_lv 32 signal 28 } 
	{ W_21_reload sc_in sc_lv 32 signal 29 } 
	{ W_22_reload sc_in sc_lv 32 signal 30 } 
	{ W_23_reload sc_in sc_lv 32 signal 31 } 
	{ W_24_reload sc_in sc_lv 32 signal 32 } 
	{ W_25_reload sc_in sc_lv 32 signal 33 } 
	{ W_26_reload sc_in sc_lv 32 signal 34 } 
	{ W_27_reload sc_in sc_lv 32 signal 35 } 
	{ W_28_reload sc_in sc_lv 32 signal 36 } 
	{ W_29_reload sc_in sc_lv 32 signal 37 } 
	{ W_30_reload sc_in sc_lv 32 signal 38 } 
	{ W_31_reload sc_in sc_lv 32 signal 39 } 
	{ W_32_reload sc_in sc_lv 32 signal 40 } 
	{ W_33_reload sc_in sc_lv 32 signal 41 } 
	{ W_34_reload sc_in sc_lv 32 signal 42 } 
	{ W_35_reload sc_in sc_lv 32 signal 43 } 
	{ W_36_reload sc_in sc_lv 32 signal 44 } 
	{ W_37_reload sc_in sc_lv 32 signal 45 } 
	{ W_38_reload sc_in sc_lv 32 signal 46 } 
	{ W_39_reload sc_in sc_lv 32 signal 47 } 
	{ W_40_reload sc_in sc_lv 32 signal 48 } 
	{ W_41_reload sc_in sc_lv 32 signal 49 } 
	{ W_42_reload sc_in sc_lv 32 signal 50 } 
	{ W_43_reload sc_in sc_lv 32 signal 51 } 
	{ W_44_reload sc_in sc_lv 32 signal 52 } 
	{ W_45_reload sc_in sc_lv 32 signal 53 } 
	{ W_46_reload sc_in sc_lv 32 signal 54 } 
	{ W_47_reload sc_in sc_lv 32 signal 55 } 
	{ W_15_reload sc_in sc_lv 32 signal 56 } 
	{ W_14_reload sc_in sc_lv 32 signal 57 } 
	{ W_13_reload sc_in sc_lv 32 signal 58 } 
	{ W_12_reload sc_in sc_lv 32 signal 59 } 
	{ W_11_reload sc_in sc_lv 32 signal 60 } 
	{ W_10_reload sc_in sc_lv 32 signal 61 } 
	{ W_9_reload sc_in sc_lv 32 signal 62 } 
	{ W_8_reload sc_in sc_lv 32 signal 63 } 
	{ W_7_reload sc_in sc_lv 32 signal 64 } 
	{ W_6_reload sc_in sc_lv 32 signal 65 } 
	{ W_5_reload sc_in sc_lv 32 signal 66 } 
	{ W_4_reload sc_in sc_lv 32 signal 67 } 
	{ W_3_reload sc_in sc_lv 32 signal 68 } 
	{ W_2_reload sc_in sc_lv 32 signal 69 } 
	{ W_1_reload sc_in sc_lv 32 signal 70 } 
	{ W_reload sc_in sc_lv 32 signal 71 } 
	{ h_1_out sc_out sc_lv 32 signal 72 } 
	{ h_1_out_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ g_3_out sc_out sc_lv 32 signal 73 } 
	{ g_3_out_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ f_3_out sc_out sc_lv 32 signal 74 } 
	{ f_3_out_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ e_3_out sc_out sc_lv 32 signal 75 } 
	{ e_3_out_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ d_1_out sc_out sc_lv 32 signal 76 } 
	{ d_1_out_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ a_3_out sc_out sc_lv 32 signal 77 } 
	{ a_3_out_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ b_3_out sc_out sc_lv 32 signal 78 } 
	{ b_3_out_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ c_3_out sc_out sc_lv 32 signal 79 } 
	{ c_3_out_ap_vld sc_out sc_logic 1 outvld 79 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h", "role": "default" }} , 
 	{ "name": "g", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "default" }} , 
 	{ "name": "f", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f", "role": "default" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "default" }} , 
 	{ "name": "d", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d", "role": "default" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "c", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "default" }} , 
 	{ "name": "block_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read", "role": "default" }} , 
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
 	{ "name": "W_16_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_16_reload", "role": "default" }} , 
 	{ "name": "W_17_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_17_reload", "role": "default" }} , 
 	{ "name": "W_18_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_18_reload", "role": "default" }} , 
 	{ "name": "W_19_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_19_reload", "role": "default" }} , 
 	{ "name": "W_20_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_20_reload", "role": "default" }} , 
 	{ "name": "W_21_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_21_reload", "role": "default" }} , 
 	{ "name": "W_22_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_22_reload", "role": "default" }} , 
 	{ "name": "W_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_23_reload", "role": "default" }} , 
 	{ "name": "W_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_24_reload", "role": "default" }} , 
 	{ "name": "W_25_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_25_reload", "role": "default" }} , 
 	{ "name": "W_26_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_26_reload", "role": "default" }} , 
 	{ "name": "W_27_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_27_reload", "role": "default" }} , 
 	{ "name": "W_28_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_28_reload", "role": "default" }} , 
 	{ "name": "W_29_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_29_reload", "role": "default" }} , 
 	{ "name": "W_30_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_30_reload", "role": "default" }} , 
 	{ "name": "W_31_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_31_reload", "role": "default" }} , 
 	{ "name": "W_32_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_32_reload", "role": "default" }} , 
 	{ "name": "W_33_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_33_reload", "role": "default" }} , 
 	{ "name": "W_34_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_34_reload", "role": "default" }} , 
 	{ "name": "W_35_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_35_reload", "role": "default" }} , 
 	{ "name": "W_36_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_36_reload", "role": "default" }} , 
 	{ "name": "W_37_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_37_reload", "role": "default" }} , 
 	{ "name": "W_38_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_38_reload", "role": "default" }} , 
 	{ "name": "W_39_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_39_reload", "role": "default" }} , 
 	{ "name": "W_40_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_40_reload", "role": "default" }} , 
 	{ "name": "W_41_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_41_reload", "role": "default" }} , 
 	{ "name": "W_42_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_42_reload", "role": "default" }} , 
 	{ "name": "W_43_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_43_reload", "role": "default" }} , 
 	{ "name": "W_44_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_44_reload", "role": "default" }} , 
 	{ "name": "W_45_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_45_reload", "role": "default" }} , 
 	{ "name": "W_46_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_46_reload", "role": "default" }} , 
 	{ "name": "W_47_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_47_reload", "role": "default" }} , 
 	{ "name": "W_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_15_reload", "role": "default" }} , 
 	{ "name": "W_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_14_reload", "role": "default" }} , 
 	{ "name": "W_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_13_reload", "role": "default" }} , 
 	{ "name": "W_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_12_reload", "role": "default" }} , 
 	{ "name": "W_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_11_reload", "role": "default" }} , 
 	{ "name": "W_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_10_reload", "role": "default" }} , 
 	{ "name": "W_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_9_reload", "role": "default" }} , 
 	{ "name": "W_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_8_reload", "role": "default" }} , 
 	{ "name": "W_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_7_reload", "role": "default" }} , 
 	{ "name": "W_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_6_reload", "role": "default" }} , 
 	{ "name": "W_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_5_reload", "role": "default" }} , 
 	{ "name": "W_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_4_reload", "role": "default" }} , 
 	{ "name": "W_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_3_reload", "role": "default" }} , 
 	{ "name": "W_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_2_reload", "role": "default" }} , 
 	{ "name": "W_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_1_reload", "role": "default" }} , 
 	{ "name": "W_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_reload", "role": "default" }} , 
 	{ "name": "h_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_1_out", "role": "default" }} , 
 	{ "name": "h_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_1_out", "role": "ap_vld" }} , 
 	{ "name": "g_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g_3_out", "role": "default" }} , 
 	{ "name": "g_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "g_3_out", "role": "ap_vld" }} , 
 	{ "name": "f_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_3_out", "role": "default" }} , 
 	{ "name": "f_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_3_out", "role": "ap_vld" }} , 
 	{ "name": "e_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_3_out", "role": "default" }} , 
 	{ "name": "e_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "e_3_out", "role": "ap_vld" }} , 
 	{ "name": "d_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_1_out", "role": "default" }} , 
 	{ "name": "d_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_1_out", "role": "ap_vld" }} , 
 	{ "name": "a_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_3_out", "role": "default" }} , 
 	{ "name": "a_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a_3_out", "role": "ap_vld" }} , 
 	{ "name": "b_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3_out", "role": "default" }} , 
 	{ "name": "b_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_3_out", "role": "ap_vld" }} , 
 	{ "name": "c_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3_out", "role": "default" }} , 
 	{ "name": "c_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "sha256_process_block_Pipeline_COMPRESS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "W_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "g_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "e_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "a_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COMPRESS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_32_1_1_x_U90", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_32_1_1_U91", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_process_block_Pipeline_COMPRESS {
		h {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		block_read {Type I LastRead 0 FirstWrite -1}
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
		W_16_reload {Type I LastRead 0 FirstWrite -1}
		W_17_reload {Type I LastRead 0 FirstWrite -1}
		W_18_reload {Type I LastRead 0 FirstWrite -1}
		W_19_reload {Type I LastRead 0 FirstWrite -1}
		W_20_reload {Type I LastRead 0 FirstWrite -1}
		W_21_reload {Type I LastRead 0 FirstWrite -1}
		W_22_reload {Type I LastRead 0 FirstWrite -1}
		W_23_reload {Type I LastRead 0 FirstWrite -1}
		W_24_reload {Type I LastRead 0 FirstWrite -1}
		W_25_reload {Type I LastRead 0 FirstWrite -1}
		W_26_reload {Type I LastRead 0 FirstWrite -1}
		W_27_reload {Type I LastRead 0 FirstWrite -1}
		W_28_reload {Type I LastRead 0 FirstWrite -1}
		W_29_reload {Type I LastRead 0 FirstWrite -1}
		W_30_reload {Type I LastRead 0 FirstWrite -1}
		W_31_reload {Type I LastRead 0 FirstWrite -1}
		W_32_reload {Type I LastRead 0 FirstWrite -1}
		W_33_reload {Type I LastRead 0 FirstWrite -1}
		W_34_reload {Type I LastRead 0 FirstWrite -1}
		W_35_reload {Type I LastRead 0 FirstWrite -1}
		W_36_reload {Type I LastRead 0 FirstWrite -1}
		W_37_reload {Type I LastRead 0 FirstWrite -1}
		W_38_reload {Type I LastRead 0 FirstWrite -1}
		W_39_reload {Type I LastRead 0 FirstWrite -1}
		W_40_reload {Type I LastRead 0 FirstWrite -1}
		W_41_reload {Type I LastRead 0 FirstWrite -1}
		W_42_reload {Type I LastRead 0 FirstWrite -1}
		W_43_reload {Type I LastRead 0 FirstWrite -1}
		W_44_reload {Type I LastRead 0 FirstWrite -1}
		W_45_reload {Type I LastRead 0 FirstWrite -1}
		W_46_reload {Type I LastRead 0 FirstWrite -1}
		W_47_reload {Type I LastRead 0 FirstWrite -1}
		W_15_reload {Type I LastRead 0 FirstWrite -1}
		W_14_reload {Type I LastRead 0 FirstWrite -1}
		W_13_reload {Type I LastRead 0 FirstWrite -1}
		W_12_reload {Type I LastRead 0 FirstWrite -1}
		W_11_reload {Type I LastRead 0 FirstWrite -1}
		W_10_reload {Type I LastRead 0 FirstWrite -1}
		W_9_reload {Type I LastRead 0 FirstWrite -1}
		W_8_reload {Type I LastRead 0 FirstWrite -1}
		W_7_reload {Type I LastRead 0 FirstWrite -1}
		W_6_reload {Type I LastRead 0 FirstWrite -1}
		W_5_reload {Type I LastRead 0 FirstWrite -1}
		W_4_reload {Type I LastRead 0 FirstWrite -1}
		W_3_reload {Type I LastRead 0 FirstWrite -1}
		W_2_reload {Type I LastRead 0 FirstWrite -1}
		W_1_reload {Type I LastRead 0 FirstWrite -1}
		W_reload {Type I LastRead 0 FirstWrite -1}
		h_1_out {Type O LastRead -1 FirstWrite 2}
		g_3_out {Type O LastRead -1 FirstWrite 2}
		f_3_out {Type O LastRead -1 FirstWrite 2}
		e_3_out {Type O LastRead -1 FirstWrite 2}
		d_1_out {Type O LastRead -1 FirstWrite 2}
		a_3_out {Type O LastRead -1 FirstWrite 2}
		b_3_out {Type O LastRead -1 FirstWrite 2}
		c_3_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131", "Max" : "131"}
	, {"Name" : "Interval", "Min" : "131", "Max" : "131"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	h { ap_none {  { h in_data 0 32 } } }
	g { ap_none {  { g in_data 0 32 } } }
	f { ap_none {  { f in_data 0 32 } } }
	e { ap_none {  { e in_data 0 32 } } }
	d { ap_none {  { d in_data 0 32 } } }
	a { ap_none {  { a in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
	c { ap_none {  { c in_data 0 32 } } }
	block_read { ap_none {  { block_read in_data 0 32 } } }
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
	W_16_reload { ap_none {  { W_16_reload in_data 0 32 } } }
	W_17_reload { ap_none {  { W_17_reload in_data 0 32 } } }
	W_18_reload { ap_none {  { W_18_reload in_data 0 32 } } }
	W_19_reload { ap_none {  { W_19_reload in_data 0 32 } } }
	W_20_reload { ap_none {  { W_20_reload in_data 0 32 } } }
	W_21_reload { ap_none {  { W_21_reload in_data 0 32 } } }
	W_22_reload { ap_none {  { W_22_reload in_data 0 32 } } }
	W_23_reload { ap_none {  { W_23_reload in_data 0 32 } } }
	W_24_reload { ap_none {  { W_24_reload in_data 0 32 } } }
	W_25_reload { ap_none {  { W_25_reload in_data 0 32 } } }
	W_26_reload { ap_none {  { W_26_reload in_data 0 32 } } }
	W_27_reload { ap_none {  { W_27_reload in_data 0 32 } } }
	W_28_reload { ap_none {  { W_28_reload in_data 0 32 } } }
	W_29_reload { ap_none {  { W_29_reload in_data 0 32 } } }
	W_30_reload { ap_none {  { W_30_reload in_data 0 32 } } }
	W_31_reload { ap_none {  { W_31_reload in_data 0 32 } } }
	W_32_reload { ap_none {  { W_32_reload in_data 0 32 } } }
	W_33_reload { ap_none {  { W_33_reload in_data 0 32 } } }
	W_34_reload { ap_none {  { W_34_reload in_data 0 32 } } }
	W_35_reload { ap_none {  { W_35_reload in_data 0 32 } } }
	W_36_reload { ap_none {  { W_36_reload in_data 0 32 } } }
	W_37_reload { ap_none {  { W_37_reload in_data 0 32 } } }
	W_38_reload { ap_none {  { W_38_reload in_data 0 32 } } }
	W_39_reload { ap_none {  { W_39_reload in_data 0 32 } } }
	W_40_reload { ap_none {  { W_40_reload in_data 0 32 } } }
	W_41_reload { ap_none {  { W_41_reload in_data 0 32 } } }
	W_42_reload { ap_none {  { W_42_reload in_data 0 32 } } }
	W_43_reload { ap_none {  { W_43_reload in_data 0 32 } } }
	W_44_reload { ap_none {  { W_44_reload in_data 0 32 } } }
	W_45_reload { ap_none {  { W_45_reload in_data 0 32 } } }
	W_46_reload { ap_none {  { W_46_reload in_data 0 32 } } }
	W_47_reload { ap_none {  { W_47_reload in_data 0 32 } } }
	W_15_reload { ap_none {  { W_15_reload in_data 0 32 } } }
	W_14_reload { ap_none {  { W_14_reload in_data 0 32 } } }
	W_13_reload { ap_none {  { W_13_reload in_data 0 32 } } }
	W_12_reload { ap_none {  { W_12_reload in_data 0 32 } } }
	W_11_reload { ap_none {  { W_11_reload in_data 0 32 } } }
	W_10_reload { ap_none {  { W_10_reload in_data 0 32 } } }
	W_9_reload { ap_none {  { W_9_reload in_data 0 32 } } }
	W_8_reload { ap_none {  { W_8_reload in_data 0 32 } } }
	W_7_reload { ap_none {  { W_7_reload in_data 0 32 } } }
	W_6_reload { ap_none {  { W_6_reload in_data 0 32 } } }
	W_5_reload { ap_none {  { W_5_reload in_data 0 32 } } }
	W_4_reload { ap_none {  { W_4_reload in_data 0 32 } } }
	W_3_reload { ap_none {  { W_3_reload in_data 0 32 } } }
	W_2_reload { ap_none {  { W_2_reload in_data 0 32 } } }
	W_1_reload { ap_none {  { W_1_reload in_data 0 32 } } }
	W_reload { ap_none {  { W_reload in_data 0 32 } } }
	h_1_out { ap_vld {  { h_1_out out_data 1 32 }  { h_1_out_ap_vld out_vld 1 1 } } }
	g_3_out { ap_vld {  { g_3_out out_data 1 32 }  { g_3_out_ap_vld out_vld 1 1 } } }
	f_3_out { ap_vld {  { f_3_out out_data 1 32 }  { f_3_out_ap_vld out_vld 1 1 } } }
	e_3_out { ap_vld {  { e_3_out out_data 1 32 }  { e_3_out_ap_vld out_vld 1 1 } } }
	d_1_out { ap_vld {  { d_1_out out_data 1 32 }  { d_1_out_ap_vld out_vld 1 1 } } }
	a_3_out { ap_vld {  { a_3_out out_data 1 32 }  { a_3_out_ap_vld out_vld 1 1 } } }
	b_3_out { ap_vld {  { b_3_out out_data 1 32 }  { b_3_out_ap_vld out_vld 1 1 } } }
	c_3_out { ap_vld {  { c_3_out out_data 1 32 }  { c_3_out_ap_vld out_vld 1 1 } } }
}
