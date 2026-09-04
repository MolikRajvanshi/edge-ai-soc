set moduleName aes128_top
set isTopModule 1
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
set C_modelName {aes128_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ DATA int 32 regular {axi_master 2}  }
	{ data_in int 64 regular {axi_slave 0}  }
	{ key_in int 64 regular {axi_slave 0}  }
	{ data_out int 64 regular {axi_slave 0}  }
	{ encrypt int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "data_in","offset": { "type": "dynamic","port_name": "data_in","bundle": "CTRL"},"direction": "READONLY"},{"cName": "key_in","offset": { "type": "dynamic","port_name": "key_in","bundle": "CTRL"},"direction": "READONLY"},{"cName": "data_out","offset": { "type": "dynamic","port_name": "data_out","bundle": "CTRL"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "data_in", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "key_in", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "data_out", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "encrypt", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_DATA_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_DATA_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_DATA_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_DATA_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"aes128_top","role":"start","value":"0","valid_bit":"0"},{"name":"aes128_top","role":"continue","value":"0","valid_bit":"4"},{"name":"aes128_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_in","role":"data","value":"16"},{"name":"key_in","role":"data","value":"28"},{"name":"data_out","role":"data","value":"40"},{"name":"encrypt","role":"data","value":"52"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"aes128_top","role":"start","value":"0","valid_bit":"0"},{"name":"aes128_top","role":"done","value":"0","valid_bit":"1"},{"name":"aes128_top","role":"idle","value":"0","valid_bit":"2"},{"name":"aes128_top","role":"ready","value":"0","valid_bit":"3"},{"name":"aes128_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_DATA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "11", "14", "45", "47", "48"],
		"CDFG" : "aes128_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "114",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_aes128_top_Pipeline_STORE_DATA_fu_192", "Port" : "DATA", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "7", "SubInstance" : "grp_aes128_top_Pipeline_LOAD_DATA_fu_152", "Port" : "DATA", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "9", "SubInstance" : "grp_aes128_top_Pipeline_LOAD_KEY_fu_161", "Port" : "DATA", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "data_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "encrypt", "Type" : "None", "Direction" : "I"},
			{"Name" : "SBOX", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_aes128_encrypt_fu_178", "Port" : "SBOX", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "RCON", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_aes128_encrypt_fu_178", "Port" : "RCON", "Inst_start_state" : "20", "Inst_end_state" : "21"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintext_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintext_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertext_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertext_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_LOAD_DATA_fu_152", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "aes128_top_Pipeline_LOAD_DATA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "plaintext_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOAD_DATA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_LOAD_DATA_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_LOAD_KEY_fu_161", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "aes128_top_Pipeline_LOAD_KEY",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "key", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOAD_KEY", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_LOAD_KEY_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_VITIS_LOOP_69_1_fu_170", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "aes128_top_Pipeline_VITIS_LOOP_69_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ciphertext_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_VITIS_LOOP_69_1_fu_170.mux_21_8_1_1_U398", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_VITIS_LOOP_69_1_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178", "Parent" : "0", "Child" : ["15", "16", "27"],
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
					{"ID" : "16", "SubInstance" : "grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371", "Port" : "SBOX", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "27", "SubInstance" : "grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559", "Port" : "SBOX", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "RCON", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371", "Port" : "RCON", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.SBOX_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371", "Parent" : "14", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.RCON_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U9", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U10", "Parent" : "16"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U11", "Parent" : "16"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1698_8_1_1_U12", "Parent" : "16"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U13", "Parent" : "16"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U14", "Parent" : "16"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U15", "Parent" : "16"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.mux_1578_8_1_1_U16", "Parent" : "16"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_fu_1371.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559", "Parent" : "14", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U197", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U198", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U199", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U200", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U201", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U202", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U203", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U204", "Parent" : "27"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U205", "Parent" : "27"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U206", "Parent" : "27"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U207", "Parent" : "27"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U208", "Parent" : "27"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U209", "Parent" : "27"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U210", "Parent" : "27"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U211", "Parent" : "27"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.mux_1458_8_1_1_U212", "Parent" : "27"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes128_encrypt_fu_178.grp_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP_fu_1559.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_STORE_DATA_fu_192", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "aes128_top_Pipeline_STORE_DATA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln77", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ciphertext_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "STORE_DATA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes128_top_Pipeline_STORE_DATA_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DATA_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes128_top {
		DATA {Type IO LastRead 23 FirstWrite -1}
		data_in {Type I LastRead 0 FirstWrite -1}
		key_in {Type I LastRead 0 FirstWrite -1}
		data_out {Type I LastRead 0 FirstWrite -1}
		encrypt {Type I LastRead 0 FirstWrite -1}
		SBOX {Type I LastRead -1 FirstWrite -1}
		RCON {Type I LastRead -1 FirstWrite -1}}
	aes128_top_Pipeline_LOAD_DATA {
		DATA {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		plaintext_1 {Type O LastRead -1 FirstWrite 2}
		plaintext {Type O LastRead -1 FirstWrite 2}}
	aes128_top_Pipeline_LOAD_KEY {
		DATA {Type I LastRead 1 FirstWrite -1}
		sext_ln52 {Type I LastRead 0 FirstWrite -1}
		key_1 {Type O LastRead -1 FirstWrite 2}
		key {Type O LastRead -1 FirstWrite 2}}
	aes128_top_Pipeline_VITIS_LOOP_69_1 {
		plaintext {Type I LastRead 0 FirstWrite -1}
		plaintext_1 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type O LastRead -1 FirstWrite 1}
		ciphertext_1 {Type O LastRead -1 FirstWrite 1}}
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
		SBOX {Type I LastRead 2 FirstWrite -1}}
	aes128_top_Pipeline_STORE_DATA {
		DATA {Type O LastRead -1 FirstWrite 2}
		sext_ln77 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type I LastRead 1 FirstWrite -1}
		ciphertext_1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "114"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "115"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	DATA { m_axi {  { m_axi_DATA_AWVALID VALID 1 1 }  { m_axi_DATA_AWREADY READY 0 1 }  { m_axi_DATA_AWADDR ADDR 1 64 }  { m_axi_DATA_AWID ID 1 1 }  { m_axi_DATA_AWLEN SIZE 1 8 }  { m_axi_DATA_AWSIZE BURST 1 3 }  { m_axi_DATA_AWBURST LOCK 1 2 }  { m_axi_DATA_AWLOCK CACHE 1 2 }  { m_axi_DATA_AWCACHE PROT 1 4 }  { m_axi_DATA_AWPROT QOS 1 3 }  { m_axi_DATA_AWQOS REGION 1 4 }  { m_axi_DATA_AWREGION USER 1 4 }  { m_axi_DATA_AWUSER DATA 1 1 }  { m_axi_DATA_WVALID VALID 1 1 }  { m_axi_DATA_WREADY READY 0 1 }  { m_axi_DATA_WDATA FIFONUM 1 32 }  { m_axi_DATA_WSTRB STRB 1 4 }  { m_axi_DATA_WLAST LAST 1 1 }  { m_axi_DATA_WID ID 1 1 }  { m_axi_DATA_WUSER DATA 1 1 }  { m_axi_DATA_ARVALID VALID 1 1 }  { m_axi_DATA_ARREADY READY 0 1 }  { m_axi_DATA_ARADDR ADDR 1 64 }  { m_axi_DATA_ARID ID 1 1 }  { m_axi_DATA_ARLEN SIZE 1 8 }  { m_axi_DATA_ARSIZE BURST 1 3 }  { m_axi_DATA_ARBURST LOCK 1 2 }  { m_axi_DATA_ARLOCK CACHE 1 2 }  { m_axi_DATA_ARCACHE PROT 1 4 }  { m_axi_DATA_ARPROT QOS 1 3 }  { m_axi_DATA_ARQOS REGION 1 4 }  { m_axi_DATA_ARREGION USER 1 4 }  { m_axi_DATA_ARUSER DATA 1 1 }  { m_axi_DATA_RVALID VALID 0 1 }  { m_axi_DATA_RREADY READY 1 1 }  { m_axi_DATA_RDATA FIFONUM 0 32 }  { m_axi_DATA_RLAST LAST 0 1 }  { m_axi_DATA_RID ID 0 1 }  { m_axi_DATA_RUSER DATA 0 1 }  { m_axi_DATA_RRESP RESP 0 2 }  { m_axi_DATA_BVALID VALID 0 1 }  { m_axi_DATA_BREADY READY 1 1 }  { m_axi_DATA_BRESP RESP 0 2 }  { m_axi_DATA_BID ID 0 1 }  { m_axi_DATA_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict DATA {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ DATA 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ DATA 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
