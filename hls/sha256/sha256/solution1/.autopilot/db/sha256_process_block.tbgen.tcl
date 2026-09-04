set moduleName sha256_process_block
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {sha256_process_block}
set C_modelType { void 0 }
set C_modelArgList {
	{ block_read int 32 regular  }
	{ block_read_79 int 32 regular  }
	{ block_read_80 int 32 regular  }
	{ block_read_81 int 32 regular  }
	{ block_read_82 int 32 regular  }
	{ block_read_83 int 32 regular  }
	{ block_read_84 int 32 regular  }
	{ block_read_85 int 32 regular  }
	{ block_read_86 int 32 regular  }
	{ block_read_87 int 32 regular  }
	{ block_read_88 int 32 regular  }
	{ block_read_89 int 32 regular  }
	{ block_read_90 int 32 regular  }
	{ block_read_91 int 32 regular  }
	{ block_read_92 int 32 regular  }
	{ block_read_93 int 32 regular  }
	{ H int 32 regular {array 8 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "block_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_79", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_80", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_81", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_82", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_83", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_84", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_85", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_86", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_88", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_89", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_90", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_91", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_92", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_read_93", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ block_read sc_in sc_lv 32 signal 0 } 
	{ block_read_79 sc_in sc_lv 32 signal 1 } 
	{ block_read_80 sc_in sc_lv 32 signal 2 } 
	{ block_read_81 sc_in sc_lv 32 signal 3 } 
	{ block_read_82 sc_in sc_lv 32 signal 4 } 
	{ block_read_83 sc_in sc_lv 32 signal 5 } 
	{ block_read_84 sc_in sc_lv 32 signal 6 } 
	{ block_read_85 sc_in sc_lv 32 signal 7 } 
	{ block_read_86 sc_in sc_lv 32 signal 8 } 
	{ block_read_87 sc_in sc_lv 32 signal 9 } 
	{ block_read_88 sc_in sc_lv 32 signal 10 } 
	{ block_read_89 sc_in sc_lv 32 signal 11 } 
	{ block_read_90 sc_in sc_lv 32 signal 12 } 
	{ block_read_91 sc_in sc_lv 32 signal 13 } 
	{ block_read_92 sc_in sc_lv 32 signal 14 } 
	{ block_read_93 sc_in sc_lv 32 signal 15 } 
	{ H_address0 sc_out sc_lv 3 signal 16 } 
	{ H_ce0 sc_out sc_logic 1 signal 16 } 
	{ H_we0 sc_out sc_logic 1 signal 16 } 
	{ H_d0 sc_out sc_lv 32 signal 16 } 
	{ H_q0 sc_in sc_lv 32 signal 16 } 
	{ H_address1 sc_out sc_lv 3 signal 16 } 
	{ H_ce1 sc_out sc_logic 1 signal 16 } 
	{ H_we1 sc_out sc_logic 1 signal 16 } 
	{ H_d1 sc_out sc_lv 32 signal 16 } 
	{ H_q1 sc_in sc_lv 32 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "block_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read", "role": "default" }} , 
 	{ "name": "block_read_79", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_79", "role": "default" }} , 
 	{ "name": "block_read_80", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_80", "role": "default" }} , 
 	{ "name": "block_read_81", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_81", "role": "default" }} , 
 	{ "name": "block_read_82", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_82", "role": "default" }} , 
 	{ "name": "block_read_83", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_83", "role": "default" }} , 
 	{ "name": "block_read_84", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_84", "role": "default" }} , 
 	{ "name": "block_read_85", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_85", "role": "default" }} , 
 	{ "name": "block_read_86", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_86", "role": "default" }} , 
 	{ "name": "block_read_87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_87", "role": "default" }} , 
 	{ "name": "block_read_88", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_88", "role": "default" }} , 
 	{ "name": "block_read_89", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_89", "role": "default" }} , 
 	{ "name": "block_read_90", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_90", "role": "default" }} , 
 	{ "name": "block_read_91", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_91", "role": "default" }} , 
 	{ "name": "block_read_92", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_92", "role": "default" }} , 
 	{ "name": "block_read_93", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_read_93", "role": "default" }} , 
 	{ "name": "H_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "H", "role": "address0" }} , 
 	{ "name": "H_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce0" }} , 
 	{ "name": "H_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "we0" }} , 
 	{ "name": "H_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "d0" }} , 
 	{ "name": "H_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "q0" }} , 
 	{ "name": "H_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "H", "role": "address1" }} , 
 	{ "name": "H_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce1" }} , 
 	{ "name": "H_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "we1" }} , 
 	{ "name": "H_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "d1" }} , 
 	{ "name": "H_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7"],
		"CDFG" : "sha256_process_block",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "238",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "block_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U21", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U22", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U23", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U24", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_COMPRESS_fu_541", "Parent" : "0", "Child" : ["8", "9", "10"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_COMPRESS_fu_541.mux_647_32_1_1_x_U90", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_COMPRESS_fu_541.mux_647_32_1_1_U91", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_Pipeline_COMPRESS_fu_541.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	sha256_process_block {
		block_read {Type I LastRead 2 FirstWrite -1}
		block_read_79 {Type I LastRead 2 FirstWrite -1}
		block_read_80 {Type I LastRead 2 FirstWrite -1}
		block_read_81 {Type I LastRead 2 FirstWrite -1}
		block_read_82 {Type I LastRead 2 FirstWrite -1}
		block_read_83 {Type I LastRead 2 FirstWrite -1}
		block_read_84 {Type I LastRead 2 FirstWrite -1}
		block_read_85 {Type I LastRead 2 FirstWrite -1}
		block_read_86 {Type I LastRead 2 FirstWrite -1}
		block_read_87 {Type I LastRead 2 FirstWrite -1}
		block_read_88 {Type I LastRead 2 FirstWrite -1}
		block_read_89 {Type I LastRead 2 FirstWrite -1}
		block_read_90 {Type I LastRead 2 FirstWrite -1}
		block_read_91 {Type I LastRead 2 FirstWrite -1}
		block_read_92 {Type I LastRead 2 FirstWrite -1}
		block_read_93 {Type I LastRead 2 FirstWrite -1}
		H {Type IO LastRead 4 FirstWrite 6}}
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
		W_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "238", "Max" : "238"}
	, {"Name" : "Interval", "Min" : "238", "Max" : "238"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	block_read { ap_none {  { block_read in_data 0 32 } } }
	block_read_79 { ap_none {  { block_read_79 in_data 0 32 } } }
	block_read_80 { ap_none {  { block_read_80 in_data 0 32 } } }
	block_read_81 { ap_none {  { block_read_81 in_data 0 32 } } }
	block_read_82 { ap_none {  { block_read_82 in_data 0 32 } } }
	block_read_83 { ap_none {  { block_read_83 in_data 0 32 } } }
	block_read_84 { ap_none {  { block_read_84 in_data 0 32 } } }
	block_read_85 { ap_none {  { block_read_85 in_data 0 32 } } }
	block_read_86 { ap_none {  { block_read_86 in_data 0 32 } } }
	block_read_87 { ap_none {  { block_read_87 in_data 0 32 } } }
	block_read_88 { ap_none {  { block_read_88 in_data 0 32 } } }
	block_read_89 { ap_none {  { block_read_89 in_data 0 32 } } }
	block_read_90 { ap_none {  { block_read_90 in_data 0 32 } } }
	block_read_91 { ap_none {  { block_read_91 in_data 0 32 } } }
	block_read_92 { ap_none {  { block_read_92 in_data 0 32 } } }
	block_read_93 { ap_none {  { block_read_93 in_data 0 32 } } }
	H { ap_memory {  { H_address0 mem_address 1 3 }  { H_ce0 mem_ce 1 1 }  { H_we0 mem_we 1 1 }  { H_d0 mem_din 1 32 }  { H_q0 mem_dout 0 32 }  { H_address1 MemPortADDR2 1 3 }  { H_ce1 MemPortCE2 1 1 }  { H_we1 MemPortWE2 1 1 }  { H_d1 MemPortDIN2 1 32 }  { H_q1 MemPortDOUT2 0 32 } } }
}
