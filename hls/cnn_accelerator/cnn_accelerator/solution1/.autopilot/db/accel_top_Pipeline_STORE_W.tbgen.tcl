set moduleName accel_top_Pipeline_STORE_W
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
set C_modelName {accel_top_Pipeline_STORE_W}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln166_1 int 32 regular  }
	{ DATA int 32 regular {axi_master 1}  }
	{ final_width int 31 regular  }
	{ zext_ln164 int 10 regular  }
	{ pool_output_V int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ output_data int 64 regular  }
	{ zext_ln166_1 int 8 regular  }
	{ conv_output_V int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ conv_output_V_1 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ conv_output_V_2 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ conv_output_V_3 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ trunc_ln160_1 int 1 regular  }
	{ icmp_ln104 int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln166_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "DATA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "input_data","offset": { "type": "dynamic","port_name": "input_data","bundle": "CTRL"},"direction": "READONLY"},{"cName": "weight_data","offset": { "type": "dynamic","port_name": "weight_data","bundle": "CTRL"},"direction": "READONLY"},{"cName": "bias_data","offset": { "type": "dynamic","port_name": "bias_data","bundle": "CTRL"},"direction": "READONLY"},{"cName": "output_data","offset": { "type": "dynamic","port_name": "output_data","bundle": "CTRL"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "final_width", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln164", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pool_output_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_data", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln166_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv_output_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_output_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_output_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_output_V_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln160_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln104", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_DATA_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_DATA_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_DATA_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_DATA_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_DATA_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_BUSER sc_in sc_lv 1 signal 1 } 
	{ sext_ln166_1 sc_in sc_lv 32 signal 0 } 
	{ final_width sc_in sc_lv 31 signal 2 } 
	{ zext_ln164 sc_in sc_lv 10 signal 3 } 
	{ pool_output_V_address0 sc_out sc_lv 10 signal 4 } 
	{ pool_output_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ pool_output_V_q0 sc_in sc_lv 32 signal 4 } 
	{ output_data sc_in sc_lv 64 signal 5 } 
	{ zext_ln166_1 sc_in sc_lv 8 signal 6 } 
	{ conv_output_V_address0 sc_out sc_lv 8 signal 7 } 
	{ conv_output_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ conv_output_V_q0 sc_in sc_lv 32 signal 7 } 
	{ conv_output_V_1_address0 sc_out sc_lv 8 signal 8 } 
	{ conv_output_V_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ conv_output_V_1_q0 sc_in sc_lv 32 signal 8 } 
	{ conv_output_V_2_address0 sc_out sc_lv 8 signal 9 } 
	{ conv_output_V_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ conv_output_V_2_q0 sc_in sc_lv 32 signal 9 } 
	{ conv_output_V_3_address0 sc_out sc_lv 8 signal 10 } 
	{ conv_output_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ conv_output_V_3_q0 sc_in sc_lv 32 signal 10 } 
	{ trunc_ln160_1 sc_in sc_lv 1 signal 11 } 
	{ icmp_ln104 sc_in sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_DATA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_DATA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_DATA_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "DATA", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_DATA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BUSER" }} , 
 	{ "name": "sext_ln166_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln166_1", "role": "default" }} , 
 	{ "name": "final_width", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "final_width", "role": "default" }} , 
 	{ "name": "zext_ln164", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln164", "role": "default" }} , 
 	{ "name": "pool_output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pool_output_V", "role": "address0" }} , 
 	{ "name": "pool_output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_output_V", "role": "ce0" }} , 
 	{ "name": "pool_output_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_output_V", "role": "q0" }} , 
 	{ "name": "output_data", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_data", "role": "default" }} , 
 	{ "name": "zext_ln166_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln166_1", "role": "default" }} , 
 	{ "name": "conv_output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_output_V", "role": "address0" }} , 
 	{ "name": "conv_output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V", "role": "ce0" }} , 
 	{ "name": "conv_output_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_output_V", "role": "q0" }} , 
 	{ "name": "conv_output_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_output_V_1", "role": "address0" }} , 
 	{ "name": "conv_output_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V_1", "role": "ce0" }} , 
 	{ "name": "conv_output_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_output_V_1", "role": "q0" }} , 
 	{ "name": "conv_output_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_output_V_2", "role": "address0" }} , 
 	{ "name": "conv_output_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V_2", "role": "ce0" }} , 
 	{ "name": "conv_output_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_output_V_2", "role": "q0" }} , 
 	{ "name": "conv_output_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_output_V_3", "role": "address0" }} , 
 	{ "name": "conv_output_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_output_V_3", "role": "ce0" }} , 
 	{ "name": "conv_output_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_output_V_3", "role": "q0" }} , 
 	{ "name": "trunc_ln160_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln160_1", "role": "default" }} , 
 	{ "name": "icmp_ln104", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln104", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "accel_top_Pipeline_STORE_W",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln166_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "final_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln164", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_output_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln166_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_output_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_output_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_output_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_output_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln160_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln104", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "STORE_W", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U91", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U92", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U93", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accel_top_Pipeline_STORE_W {
		sext_ln166_1 {Type I LastRead 0 FirstWrite -1}
		DATA {Type O LastRead 4 FirstWrite 3}
		final_width {Type I LastRead 0 FirstWrite -1}
		zext_ln164 {Type I LastRead 0 FirstWrite -1}
		pool_output_V {Type I LastRead 1 FirstWrite -1}
		output_data {Type I LastRead 0 FirstWrite -1}
		zext_ln166_1 {Type I LastRead 0 FirstWrite -1}
		conv_output_V {Type I LastRead 1 FirstWrite -1}
		conv_output_V_1 {Type I LastRead 1 FirstWrite -1}
		conv_output_V_2 {Type I LastRead 1 FirstWrite -1}
		conv_output_V_3 {Type I LastRead 1 FirstWrite -1}
		trunc_ln160_1 {Type I LastRead 0 FirstWrite -1}
		icmp_ln104 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln166_1 { ap_none {  { sext_ln166_1 in_data 0 32 } } }
	 { m_axi {  { m_axi_DATA_AWVALID VALID 1 1 }  { m_axi_DATA_AWREADY READY 0 1 }  { m_axi_DATA_AWADDR ADDR 1 64 }  { m_axi_DATA_AWID ID 1 1 }  { m_axi_DATA_AWLEN SIZE 1 32 }  { m_axi_DATA_AWSIZE BURST 1 3 }  { m_axi_DATA_AWBURST LOCK 1 2 }  { m_axi_DATA_AWLOCK CACHE 1 2 }  { m_axi_DATA_AWCACHE PROT 1 4 }  { m_axi_DATA_AWPROT QOS 1 3 }  { m_axi_DATA_AWQOS REGION 1 4 }  { m_axi_DATA_AWREGION USER 1 4 }  { m_axi_DATA_AWUSER DATA 1 1 }  { m_axi_DATA_WVALID VALID 1 1 }  { m_axi_DATA_WREADY READY 0 1 }  { m_axi_DATA_WDATA FIFONUM 1 32 }  { m_axi_DATA_WSTRB STRB 1 4 }  { m_axi_DATA_WLAST LAST 1 1 }  { m_axi_DATA_WID ID 1 1 }  { m_axi_DATA_WUSER DATA 1 1 }  { m_axi_DATA_ARVALID VALID 1 1 }  { m_axi_DATA_ARREADY READY 0 1 }  { m_axi_DATA_ARADDR ADDR 1 64 }  { m_axi_DATA_ARID ID 1 1 }  { m_axi_DATA_ARLEN SIZE 1 32 }  { m_axi_DATA_ARSIZE BURST 1 3 }  { m_axi_DATA_ARBURST LOCK 1 2 }  { m_axi_DATA_ARLOCK CACHE 1 2 }  { m_axi_DATA_ARCACHE PROT 1 4 }  { m_axi_DATA_ARPROT QOS 1 3 }  { m_axi_DATA_ARQOS REGION 1 4 }  { m_axi_DATA_ARREGION USER 1 4 }  { m_axi_DATA_ARUSER DATA 1 1 }  { m_axi_DATA_RVALID VALID 0 1 }  { m_axi_DATA_RREADY READY 1 1 }  { m_axi_DATA_RDATA FIFONUM 0 32 }  { m_axi_DATA_RLAST LAST 0 1 }  { m_axi_DATA_RID ID 0 1 }  { m_axi_DATA_RFIFONUM LEN 0 9 }  { m_axi_DATA_RUSER DATA 0 1 }  { m_axi_DATA_RRESP RESP 0 2 }  { m_axi_DATA_BVALID VALID 0 1 }  { m_axi_DATA_BREADY READY 1 1 }  { m_axi_DATA_BRESP RESP 0 2 }  { m_axi_DATA_BID ID 0 1 }  { m_axi_DATA_BUSER DATA 0 1 } } }
	final_width { ap_none {  { final_width in_data 0 31 } } }
	zext_ln164 { ap_none {  { zext_ln164 in_data 0 10 } } }
	pool_output_V { ap_memory {  { pool_output_V_address0 mem_address 1 10 }  { pool_output_V_ce0 mem_ce 1 1 }  { pool_output_V_q0 in_data 0 32 } } }
	output_data { ap_none {  { output_data in_data 0 64 } } }
	zext_ln166_1 { ap_none {  { zext_ln166_1 in_data 0 8 } } }
	conv_output_V { ap_memory {  { conv_output_V_address0 mem_address 1 8 }  { conv_output_V_ce0 mem_ce 1 1 }  { conv_output_V_q0 in_data 0 32 } } }
	conv_output_V_1 { ap_memory {  { conv_output_V_1_address0 mem_address 1 8 }  { conv_output_V_1_ce0 mem_ce 1 1 }  { conv_output_V_1_q0 in_data 0 32 } } }
	conv_output_V_2 { ap_memory {  { conv_output_V_2_address0 mem_address 1 8 }  { conv_output_V_2_ce0 mem_ce 1 1 }  { conv_output_V_2_q0 in_data 0 32 } } }
	conv_output_V_3 { ap_memory {  { conv_output_V_3_address0 mem_address 1 8 }  { conv_output_V_3_ce0 mem_ce 1 1 }  { conv_output_V_3_q0 in_data 0 32 } } }
	trunc_ln160_1 { ap_none {  { trunc_ln160_1 in_data 0 1 } } }
	icmp_ln104 { ap_none {  { icmp_ln104 in_data 0 1 } } }
}
