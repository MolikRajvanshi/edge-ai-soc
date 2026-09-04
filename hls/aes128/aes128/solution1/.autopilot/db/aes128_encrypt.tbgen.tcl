set moduleName aes128_encrypt
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
set C_modelName {aes128_encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ plaintext_0 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ plaintext_1 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ key_0 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ key_1 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ ciphertext_0 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ ciphertext_1 int 8 regular {array 8 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "plaintext_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ciphertext_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ciphertext_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ plaintext_0_address0 sc_out sc_lv 3 signal 0 } 
	{ plaintext_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ plaintext_0_q0 sc_in sc_lv 8 signal 0 } 
	{ plaintext_0_address1 sc_out sc_lv 3 signal 0 } 
	{ plaintext_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ plaintext_0_q1 sc_in sc_lv 8 signal 0 } 
	{ plaintext_1_address0 sc_out sc_lv 3 signal 1 } 
	{ plaintext_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ plaintext_1_q0 sc_in sc_lv 8 signal 1 } 
	{ plaintext_1_address1 sc_out sc_lv 3 signal 1 } 
	{ plaintext_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ plaintext_1_q1 sc_in sc_lv 8 signal 1 } 
	{ key_0_address0 sc_out sc_lv 3 signal 2 } 
	{ key_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ key_0_q0 sc_in sc_lv 8 signal 2 } 
	{ key_0_address1 sc_out sc_lv 3 signal 2 } 
	{ key_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ key_0_q1 sc_in sc_lv 8 signal 2 } 
	{ key_1_address0 sc_out sc_lv 3 signal 3 } 
	{ key_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ key_1_q0 sc_in sc_lv 8 signal 3 } 
	{ key_1_address1 sc_out sc_lv 3 signal 3 } 
	{ key_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ key_1_q1 sc_in sc_lv 8 signal 3 } 
	{ ciphertext_0_address0 sc_out sc_lv 3 signal 4 } 
	{ ciphertext_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_0_we0 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_0_d0 sc_out sc_lv 8 signal 4 } 
	{ ciphertext_0_address1 sc_out sc_lv 3 signal 4 } 
	{ ciphertext_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_0_we1 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_0_d1 sc_out sc_lv 8 signal 4 } 
	{ ciphertext_1_address0 sc_out sc_lv 3 signal 5 } 
	{ ciphertext_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ ciphertext_1_we0 sc_out sc_logic 1 signal 5 } 
	{ ciphertext_1_d0 sc_out sc_lv 8 signal 5 } 
	{ ciphertext_1_address1 sc_out sc_lv 3 signal 5 } 
	{ ciphertext_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ ciphertext_1_we1 sc_out sc_logic 1 signal 5 } 
	{ ciphertext_1_d1 sc_out sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "plaintext_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext_0", "role": "address0" }} , 
 	{ "name": "plaintext_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext_0", "role": "ce0" }} , 
 	{ "name": "plaintext_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext_0", "role": "q0" }} , 
 	{ "name": "plaintext_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext_0", "role": "address1" }} , 
 	{ "name": "plaintext_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext_0", "role": "ce1" }} , 
 	{ "name": "plaintext_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext_0", "role": "q1" }} , 
 	{ "name": "plaintext_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext_1", "role": "address0" }} , 
 	{ "name": "plaintext_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext_1", "role": "ce0" }} , 
 	{ "name": "plaintext_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext_1", "role": "q0" }} , 
 	{ "name": "plaintext_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext_1", "role": "address1" }} , 
 	{ "name": "plaintext_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext_1", "role": "ce1" }} , 
 	{ "name": "plaintext_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext_1", "role": "q1" }} , 
 	{ "name": "key_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key_0", "role": "address0" }} , 
 	{ "name": "key_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_0", "role": "ce0" }} , 
 	{ "name": "key_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_0", "role": "q0" }} , 
 	{ "name": "key_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key_0", "role": "address1" }} , 
 	{ "name": "key_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_0", "role": "ce1" }} , 
 	{ "name": "key_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_0", "role": "q1" }} , 
 	{ "name": "key_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key_1", "role": "address0" }} , 
 	{ "name": "key_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_1", "role": "ce0" }} , 
 	{ "name": "key_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_1", "role": "q0" }} , 
 	{ "name": "key_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key_1", "role": "address1" }} , 
 	{ "name": "key_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_1", "role": "ce1" }} , 
 	{ "name": "key_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_1", "role": "q1" }} , 
 	{ "name": "ciphertext_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "address0" }} , 
 	{ "name": "ciphertext_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "ce0" }} , 
 	{ "name": "ciphertext_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "we0" }} , 
 	{ "name": "ciphertext_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "d0" }} , 
 	{ "name": "ciphertext_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "address1" }} , 
 	{ "name": "ciphertext_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "ce1" }} , 
 	{ "name": "ciphertext_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "we1" }} , 
 	{ "name": "ciphertext_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_0", "role": "d1" }} , 
 	{ "name": "ciphertext_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "address0" }} , 
 	{ "name": "ciphertext_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "ce0" }} , 
 	{ "name": "ciphertext_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "we0" }} , 
 	{ "name": "ciphertext_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "d0" }} , 
 	{ "name": "ciphertext_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "address1" }} , 
 	{ "name": "ciphertext_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "ce1" }} , 
 	{ "name": "ciphertext_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "we1" }} , 
 	{ "name": "ciphertext_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "13"],
		"CDFG" : "aes128_encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "plaintext_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "key_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "key_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ciphertext_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ciphertext_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "SBOX", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371", "Port" : "SBOX", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "13", "SubInstance" : "grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559", "Port" : "SBOX", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "RCON", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371", "Port" : "RCON", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SBOX_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "aes128_encrypt_Pipeline_VITIS_LOOP_38_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "43",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "round_keys_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_175_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_174_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_173_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_172_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_171_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_170_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_169_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_168_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_167_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_166_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_164_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_163_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_162_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_161_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_160_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_159_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_158_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_157_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_156_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_155_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_154_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_153_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_152_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_151_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_150_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_149_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_148_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_147_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_146_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_145_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_144_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_143_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_142_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_141_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_140_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_139_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_138_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_137_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_136_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_135_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_134_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_133_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_132_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_131_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_130_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_129_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_128_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "round_keys_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "SBOX", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "RCON", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.RCON_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U9", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U10", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U11", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U12", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U13", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U14", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U15", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U16", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "aes128_encrypt_Pipeline_AES_ROUNDS_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_96_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_112_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_128_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_144_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_97_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_113_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_129_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_145_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_98_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_114_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_130_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_146_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_99_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_115_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_131_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_147_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_100_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_116_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_132_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_148_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_53_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_101_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_117_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_133_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_149_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_102_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_118_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_134_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_150_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_103_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_119_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_135_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_151_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_104_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_120_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_136_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_152_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_105_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_121_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_137_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_153_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_106_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_122_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_138_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_154_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_107_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_123_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_139_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_155_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_108_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_124_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_140_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_156_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_109_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_125_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_141_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_157_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_62_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_110_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_126_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_142_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_158_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_63_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_111_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_127_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_143_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_keys_159_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "SBOX", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "AES_ROUNDS_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U197", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U198", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U199", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U200", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U201", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U202", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U203", "Parent" : "13"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U204", "Parent" : "13"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U205", "Parent" : "13"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U206", "Parent" : "13"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U207", "Parent" : "13"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U208", "Parent" : "13"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U209", "Parent" : "13"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U210", "Parent" : "13"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U211", "Parent" : "13"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U212", "Parent" : "13"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"}]}


set ArgLastReadFirstWriteLatency {
	aes128_encrypt {
		plaintext_0 {Type I LastRead 6 FirstWrite -1}
		plaintext_1 {Type I LastRead 6 FirstWrite -1}
		key_0 {Type I LastRead 4 FirstWrite -1}
		key_1 {Type I LastRead 4 FirstWrite -1}
		ciphertext_0 {Type O LastRead -1 FirstWrite 9}
		ciphertext_1 {Type O LastRead -1 FirstWrite 9}
		SBOX {Type I LastRead -1 FirstWrite -1}
		RCON {Type I LastRead -1 FirstWrite -1}}
	aes128_encrypt_Pipeline_VITIS_LOOP_38_2 {
		round_keys_3 {Type I LastRead 0 FirstWrite -1}
		round_keys_7 {Type I LastRead 0 FirstWrite -1}
		round_keys_11 {Type I LastRead 0 FirstWrite -1}
		round_keys_15 {Type I LastRead 0 FirstWrite -1}
		round_keys_2 {Type I LastRead 0 FirstWrite -1}
		round_keys_6 {Type I LastRead 0 FirstWrite -1}
		round_keys_10 {Type I LastRead 0 FirstWrite -1}
		round_keys_14 {Type I LastRead 0 FirstWrite -1}
		round_keys_1 {Type I LastRead 0 FirstWrite -1}
		round_keys_5 {Type I LastRead 0 FirstWrite -1}
		round_keys_9 {Type I LastRead 0 FirstWrite -1}
		round_keys_13 {Type I LastRead 0 FirstWrite -1}
		round_keys_12 {Type I LastRead 0 FirstWrite -1}
		round_keys {Type I LastRead 0 FirstWrite -1}
		round_keys_4 {Type I LastRead 0 FirstWrite -1}
		round_keys_8 {Type I LastRead 0 FirstWrite -1}
		round_keys_175_out {Type O LastRead -1 FirstWrite 1}
		round_keys_174_out {Type O LastRead -1 FirstWrite 1}
		round_keys_173_out {Type O LastRead -1 FirstWrite 1}
		round_keys_172_out {Type O LastRead -1 FirstWrite 1}
		round_keys_171_out {Type O LastRead -1 FirstWrite 1}
		round_keys_170_out {Type O LastRead -1 FirstWrite 1}
		round_keys_169_out {Type O LastRead -1 FirstWrite 1}
		round_keys_168_out {Type O LastRead -1 FirstWrite 1}
		round_keys_167_out {Type O LastRead -1 FirstWrite 1}
		round_keys_166_out {Type O LastRead -1 FirstWrite 1}
		round_keys_165_out {Type O LastRead -1 FirstWrite 1}
		round_keys_164_out {Type O LastRead -1 FirstWrite 1}
		round_keys_163_out {Type O LastRead -1 FirstWrite 1}
		round_keys_162_out {Type O LastRead -1 FirstWrite 1}
		round_keys_161_out {Type O LastRead -1 FirstWrite 1}
		round_keys_160_out {Type O LastRead -1 FirstWrite 1}
		round_keys_159_out {Type O LastRead -1 FirstWrite 1}
		round_keys_158_out {Type O LastRead -1 FirstWrite 1}
		round_keys_157_out {Type O LastRead -1 FirstWrite 1}
		round_keys_156_out {Type O LastRead -1 FirstWrite 1}
		round_keys_155_out {Type O LastRead -1 FirstWrite 1}
		round_keys_154_out {Type O LastRead -1 FirstWrite 1}
		round_keys_153_out {Type O LastRead -1 FirstWrite 1}
		round_keys_152_out {Type O LastRead -1 FirstWrite 1}
		round_keys_151_out {Type O LastRead -1 FirstWrite 1}
		round_keys_150_out {Type O LastRead -1 FirstWrite 1}
		round_keys_149_out {Type O LastRead -1 FirstWrite 1}
		round_keys_148_out {Type O LastRead -1 FirstWrite 1}
		round_keys_147_out {Type O LastRead -1 FirstWrite 1}
		round_keys_146_out {Type O LastRead -1 FirstWrite 1}
		round_keys_145_out {Type O LastRead -1 FirstWrite 1}
		round_keys_144_out {Type O LastRead -1 FirstWrite 1}
		round_keys_143_out {Type O LastRead -1 FirstWrite 1}
		round_keys_142_out {Type O LastRead -1 FirstWrite 1}
		round_keys_141_out {Type O LastRead -1 FirstWrite 1}
		round_keys_140_out {Type O LastRead -1 FirstWrite 1}
		round_keys_139_out {Type O LastRead -1 FirstWrite 1}
		round_keys_138_out {Type O LastRead -1 FirstWrite 1}
		round_keys_137_out {Type O LastRead -1 FirstWrite 1}
		round_keys_136_out {Type O LastRead -1 FirstWrite 1}
		round_keys_135_out {Type O LastRead -1 FirstWrite 1}
		round_keys_134_out {Type O LastRead -1 FirstWrite 1}
		round_keys_133_out {Type O LastRead -1 FirstWrite 1}
		round_keys_132_out {Type O LastRead -1 FirstWrite 1}
		round_keys_131_out {Type O LastRead -1 FirstWrite 1}
		round_keys_130_out {Type O LastRead -1 FirstWrite 1}
		round_keys_129_out {Type O LastRead -1 FirstWrite 1}
		round_keys_128_out {Type O LastRead -1 FirstWrite 1}
		round_keys_127_out {Type O LastRead -1 FirstWrite 1}
		round_keys_126_out {Type O LastRead -1 FirstWrite 1}
		round_keys_125_out {Type O LastRead -1 FirstWrite 1}
		round_keys_124_out {Type O LastRead -1 FirstWrite 1}
		round_keys_123_out {Type O LastRead -1 FirstWrite 1}
		round_keys_122_out {Type O LastRead -1 FirstWrite 1}
		round_keys_121_out {Type O LastRead -1 FirstWrite 1}
		round_keys_120_out {Type O LastRead -1 FirstWrite 1}
		round_keys_119_out {Type O LastRead -1 FirstWrite 1}
		round_keys_118_out {Type O LastRead -1 FirstWrite 1}
		round_keys_117_out {Type O LastRead -1 FirstWrite 1}
		round_keys_116_out {Type O LastRead -1 FirstWrite 1}
		round_keys_115_out {Type O LastRead -1 FirstWrite 1}
		round_keys_114_out {Type O LastRead -1 FirstWrite 1}
		round_keys_113_out {Type O LastRead -1 FirstWrite 1}
		round_keys_112_out {Type O LastRead -1 FirstWrite 1}
		round_keys_111_out {Type O LastRead -1 FirstWrite 1}
		round_keys_110_out {Type O LastRead -1 FirstWrite 1}
		round_keys_109_out {Type O LastRead -1 FirstWrite 1}
		round_keys_108_out {Type O LastRead -1 FirstWrite 1}
		round_keys_107_out {Type O LastRead -1 FirstWrite 1}
		round_keys_106_out {Type O LastRead -1 FirstWrite 1}
		round_keys_105_out {Type O LastRead -1 FirstWrite 1}
		round_keys_104_out {Type O LastRead -1 FirstWrite 1}
		round_keys_103_out {Type O LastRead -1 FirstWrite 1}
		round_keys_102_out {Type O LastRead -1 FirstWrite 1}
		round_keys_101_out {Type O LastRead -1 FirstWrite 1}
		round_keys_100_out {Type O LastRead -1 FirstWrite 1}
		round_keys_99_out {Type O LastRead -1 FirstWrite 1}
		round_keys_98_out {Type O LastRead -1 FirstWrite 1}
		round_keys_97_out {Type O LastRead -1 FirstWrite 1}
		round_keys_96_out {Type O LastRead -1 FirstWrite 1}
		round_keys_95_out {Type O LastRead -1 FirstWrite 1}
		round_keys_94_out {Type O LastRead -1 FirstWrite 1}
		round_keys_93_out {Type O LastRead -1 FirstWrite 1}
		round_keys_92_out {Type O LastRead -1 FirstWrite 1}
		round_keys_91_out {Type O LastRead -1 FirstWrite 1}
		round_keys_90_out {Type O LastRead -1 FirstWrite 1}
		round_keys_89_out {Type O LastRead -1 FirstWrite 1}
		round_keys_88_out {Type O LastRead -1 FirstWrite 1}
		round_keys_87_out {Type O LastRead -1 FirstWrite 1}
		round_keys_86_out {Type O LastRead -1 FirstWrite 1}
		round_keys_85_out {Type O LastRead -1 FirstWrite 1}
		round_keys_84_out {Type O LastRead -1 FirstWrite 1}
		round_keys_83_out {Type O LastRead -1 FirstWrite 1}
		round_keys_82_out {Type O LastRead -1 FirstWrite 1}
		round_keys_81_out {Type O LastRead -1 FirstWrite 1}
		round_keys_80_out {Type O LastRead -1 FirstWrite 1}
		round_keys_79_out {Type O LastRead -1 FirstWrite 1}
		round_keys_78_out {Type O LastRead -1 FirstWrite 1}
		round_keys_77_out {Type O LastRead -1 FirstWrite 1}
		round_keys_76_out {Type O LastRead -1 FirstWrite 1}
		round_keys_75_out {Type O LastRead -1 FirstWrite 1}
		round_keys_74_out {Type O LastRead -1 FirstWrite 1}
		round_keys_73_out {Type O LastRead -1 FirstWrite 1}
		round_keys_72_out {Type O LastRead -1 FirstWrite 1}
		round_keys_71_out {Type O LastRead -1 FirstWrite 1}
		round_keys_70_out {Type O LastRead -1 FirstWrite 1}
		round_keys_69_out {Type O LastRead -1 FirstWrite 1}
		round_keys_68_out {Type O LastRead -1 FirstWrite 1}
		round_keys_67_out {Type O LastRead -1 FirstWrite 1}
		round_keys_66_out {Type O LastRead -1 FirstWrite 1}
		round_keys_65_out {Type O LastRead -1 FirstWrite 1}
		round_keys_64_out {Type O LastRead -1 FirstWrite 1}
		round_keys_63_out {Type O LastRead -1 FirstWrite 1}
		round_keys_62_out {Type O LastRead -1 FirstWrite 1}
		round_keys_61_out {Type O LastRead -1 FirstWrite 1}
		round_keys_60_out {Type O LastRead -1 FirstWrite 1}
		round_keys_59_out {Type O LastRead -1 FirstWrite 1}
		round_keys_58_out {Type O LastRead -1 FirstWrite 1}
		round_keys_57_out {Type O LastRead -1 FirstWrite 1}
		round_keys_56_out {Type O LastRead -1 FirstWrite 1}
		round_keys_55_out {Type O LastRead -1 FirstWrite 1}
		round_keys_54_out {Type O LastRead -1 FirstWrite 1}
		round_keys_53_out {Type O LastRead -1 FirstWrite 1}
		round_keys_52_out {Type O LastRead -1 FirstWrite 1}
		round_keys_51_out {Type O LastRead -1 FirstWrite 1}
		round_keys_50_out {Type O LastRead -1 FirstWrite 1}
		round_keys_49_out {Type O LastRead -1 FirstWrite 1}
		round_keys_48_out {Type O LastRead -1 FirstWrite 1}
		round_keys_47_out {Type O LastRead -1 FirstWrite 1}
		round_keys_46_out {Type O LastRead -1 FirstWrite 1}
		round_keys_45_out {Type O LastRead -1 FirstWrite 1}
		round_keys_44_out {Type O LastRead -1 FirstWrite 1}
		round_keys_43_out {Type O LastRead -1 FirstWrite 1}
		round_keys_42_out {Type O LastRead -1 FirstWrite 1}
		round_keys_41_out {Type O LastRead -1 FirstWrite 1}
		round_keys_40_out {Type O LastRead -1 FirstWrite 1}
		round_keys_39_out {Type O LastRead -1 FirstWrite 1}
		round_keys_38_out {Type O LastRead -1 FirstWrite 1}
		round_keys_37_out {Type O LastRead -1 FirstWrite 1}
		round_keys_36_out {Type O LastRead -1 FirstWrite 1}
		round_keys_35_out {Type O LastRead -1 FirstWrite 1}
		round_keys_34_out {Type O LastRead -1 FirstWrite 1}
		round_keys_33_out {Type O LastRead -1 FirstWrite 1}
		round_keys_32_out {Type O LastRead -1 FirstWrite 1}
		round_keys_31_out {Type O LastRead -1 FirstWrite 1}
		round_keys_30_out {Type O LastRead -1 FirstWrite 1}
		round_keys_29_out {Type O LastRead -1 FirstWrite 1}
		round_keys_28_out {Type O LastRead -1 FirstWrite 1}
		round_keys_27_out {Type O LastRead -1 FirstWrite 1}
		round_keys_26_out {Type O LastRead -1 FirstWrite 1}
		round_keys_25_out {Type O LastRead -1 FirstWrite 1}
		round_keys_24_out {Type O LastRead -1 FirstWrite 1}
		round_keys_23_out {Type O LastRead -1 FirstWrite 1}
		round_keys_22_out {Type O LastRead -1 FirstWrite 1}
		round_keys_21_out {Type O LastRead -1 FirstWrite 1}
		round_keys_20_out {Type O LastRead -1 FirstWrite 1}
		round_keys_19_out {Type O LastRead -1 FirstWrite 1}
		round_keys_18_out {Type O LastRead -1 FirstWrite 1}
		round_keys_17_out {Type O LastRead -1 FirstWrite 1}
		round_keys_16_out {Type O LastRead -1 FirstWrite 1}
		SBOX {Type I LastRead 2 FirstWrite -1}
		RCON {Type I LastRead -1 FirstWrite -1}}
	aes128_encrypt_Pipeline_AES_ROUNDS_LOOP {
		state_23 {Type I LastRead 0 FirstWrite -1}
		state_22 {Type I LastRead 0 FirstWrite -1}
		state_21 {Type I LastRead 0 FirstWrite -1}
		state_20 {Type I LastRead 0 FirstWrite -1}
		state_19 {Type I LastRead 0 FirstWrite -1}
		state_18 {Type I LastRead 0 FirstWrite -1}
		state_17 {Type I LastRead 0 FirstWrite -1}
		state_16 {Type I LastRead 0 FirstWrite -1}
		state_15 {Type I LastRead 0 FirstWrite -1}
		state_14 {Type I LastRead 0 FirstWrite -1}
		state_13 {Type I LastRead 0 FirstWrite -1}
		state_12 {Type I LastRead 0 FirstWrite -1}
		state_11 {Type I LastRead 0 FirstWrite -1}
		state_10 {Type I LastRead 0 FirstWrite -1}
		state_9 {Type I LastRead 0 FirstWrite -1}
		state_8 {Type I LastRead 0 FirstWrite -1}
		round_keys_16_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_32_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_48_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_64_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_80_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_96_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_112_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_128_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_144_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_17_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_33_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_49_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_65_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_81_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_97_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_113_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_129_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_145_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_18_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_34_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_50_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_66_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_82_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_98_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_114_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_130_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_146_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_19_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_35_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_51_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_67_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_83_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_99_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_115_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_131_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_147_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_20_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_36_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_52_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_68_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_84_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_100_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_116_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_132_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_148_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_21_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_37_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_53_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_69_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_85_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_101_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_117_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_133_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_149_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_22_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_38_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_54_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_70_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_86_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_102_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_118_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_134_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_150_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_23_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_39_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_55_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_71_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_87_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_103_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_119_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_135_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_151_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_24_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_40_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_56_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_72_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_88_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_104_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_120_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_136_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_152_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_25_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_41_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_57_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_73_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_89_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_105_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_121_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_137_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_153_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_26_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_42_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_58_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_74_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_90_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_106_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_122_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_138_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_154_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_27_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_43_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_59_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_75_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_91_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_107_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_123_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_139_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_155_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_28_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_44_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_60_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_76_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_92_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_108_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_124_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_140_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_156_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_29_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_45_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_61_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_77_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_93_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_109_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_125_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_141_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_157_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_30_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_46_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_62_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_78_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_94_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_110_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_126_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_142_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_158_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_31_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_47_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_63_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_79_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_95_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_111_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_127_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_143_reload {Type I LastRead 0 FirstWrite -1}
		round_keys_159_reload {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		p_out3 {Type O LastRead -1 FirstWrite 1}
		p_out4 {Type O LastRead -1 FirstWrite 1}
		p_out5 {Type O LastRead -1 FirstWrite 1}
		p_out6 {Type O LastRead -1 FirstWrite 1}
		p_out7 {Type O LastRead -1 FirstWrite 1}
		p_out8 {Type O LastRead -1 FirstWrite 1}
		p_out9 {Type O LastRead -1 FirstWrite 1}
		p_out10 {Type O LastRead -1 FirstWrite 1}
		p_out11 {Type O LastRead -1 FirstWrite 1}
		p_out12 {Type O LastRead -1 FirstWrite 1}
		p_out13 {Type O LastRead -1 FirstWrite 1}
		p_out14 {Type O LastRead -1 FirstWrite 1}
		p_out15 {Type O LastRead -1 FirstWrite 1}
		SBOX {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	plaintext_0 { ap_memory {  { plaintext_0_address0 mem_address 1 3 }  { plaintext_0_ce0 mem_ce 1 1 }  { plaintext_0_q0 in_data 0 8 }  { plaintext_0_address1 MemPortADDR2 1 3 }  { plaintext_0_ce1 MemPortCE2 1 1 }  { plaintext_0_q1 in_data 0 8 } } }
	plaintext_1 { ap_memory {  { plaintext_1_address0 mem_address 1 3 }  { plaintext_1_ce0 mem_ce 1 1 }  { plaintext_1_q0 in_data 0 8 }  { plaintext_1_address1 MemPortADDR2 1 3 }  { plaintext_1_ce1 MemPortCE2 1 1 }  { plaintext_1_q1 in_data 0 8 } } }
	key_0 { ap_memory {  { key_0_address0 mem_address 1 3 }  { key_0_ce0 mem_ce 1 1 }  { key_0_q0 mem_dout 0 8 }  { key_0_address1 MemPortADDR2 1 3 }  { key_0_ce1 MemPortCE2 1 1 }  { key_0_q1 MemPortDOUT2 0 8 } } }
	key_1 { ap_memory {  { key_1_address0 mem_address 1 3 }  { key_1_ce0 mem_ce 1 1 }  { key_1_q0 mem_dout 0 8 }  { key_1_address1 MemPortADDR2 1 3 }  { key_1_ce1 MemPortCE2 1 1 }  { key_1_q1 MemPortDOUT2 0 8 } } }
	ciphertext_0 { ap_memory {  { ciphertext_0_address0 mem_address 1 3 }  { ciphertext_0_ce0 mem_ce 1 1 }  { ciphertext_0_we0 mem_we 1 1 }  { ciphertext_0_d0 mem_din 1 8 }  { ciphertext_0_address1 MemPortADDR2 1 3 }  { ciphertext_0_ce1 MemPortCE2 1 1 }  { ciphertext_0_we1 MemPortWE2 1 1 }  { ciphertext_0_d1 MemPortDIN2 1 8 } } }
	ciphertext_1 { ap_memory {  { ciphertext_1_address0 mem_address 1 3 }  { ciphertext_1_ce0 mem_ce 1 1 }  { ciphertext_1_we0 mem_we 1 1 }  { ciphertext_1_d0 mem_din 1 8 }  { ciphertext_1_address1 MemPortADDR2 1 3 }  { ciphertext_1_ce1 MemPortCE2 1 1 }  { ciphertext_1_we1 MemPortWE2 1 1 }  { ciphertext_1_d1 MemPortDIN2 1 8 } } }
}
