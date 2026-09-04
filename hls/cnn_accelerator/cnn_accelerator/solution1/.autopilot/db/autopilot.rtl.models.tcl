set SynModuleInfo {
  {SRCNAME accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W MODELNAME accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W RTLNAME accel_top_accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W
    SUBMODULES {
      {MODELNAME accel_top_mul_31ns_31ns_32_1_1 RTLNAME accel_top_mul_31ns_31ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_flow_control_loop_pipe_sequential_init RTLNAME accel_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accel_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW MODELNAME accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW RTLNAME accel_top_accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW}
  {SRCNAME conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW MODELNAME conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW RTLNAME accel_top_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW
    SUBMODULES {
      {MODELNAME accel_top_mac_muladd_8s_8s_32s_32_4_1 RTLNAME accel_top_mac_muladd_8s_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_engine MODELNAME conv_engine RTLNAME accel_top_conv_engine
    SUBMODULES {
      {MODELNAME accel_top_sdiv_32ns_32s_32_36_seq_1 RTLNAME accel_top_sdiv_32ns_32s_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_mul_32ns_32ns_64_1_1 RTLNAME accel_top_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_mul_32ns_64ns_96_5_1 RTLNAME accel_top_mul_32ns_64ns_96_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_mul_32s_32s_32_1_1 RTLNAME accel_top_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu_Pipeline_RELU_ROW_RELU_COL MODELNAME relu_Pipeline_RELU_ROW_RELU_COL RTLNAME accel_top_relu_Pipeline_RELU_ROW_RELU_COL
    SUBMODULES {
      {MODELNAME accel_top_mux_21_32_1_1 RTLNAME accel_top_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu MODELNAME relu RTLNAME accel_top_relu}
  {SRCNAME maxpool_2x2_Pipeline_POOL_ROW_POOL_COL MODELNAME maxpool_2x2_Pipeline_POOL_ROW_POOL_COL RTLNAME accel_top_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL}
  {SRCNAME maxpool_2x2 MODELNAME maxpool_2x2 RTLNAME accel_top_maxpool_2x2}
  {SRCNAME accel_top_Pipeline_STORE_W MODELNAME accel_top_Pipeline_STORE_W RTLNAME accel_top_accel_top_Pipeline_STORE_W}
  {SRCNAME accel_top MODELNAME accel_top RTLNAME accel_top IS_TOP 1
    SUBMODULES {
      {MODELNAME accel_top_mul_31ns_32s_32_1_1 RTLNAME accel_top_mul_31ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_mul_32ns_32ns_63_1_1 RTLNAME accel_top_mul_32ns_32ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_sdiv_32ns_32ns_32_36_seq_1 RTLNAME accel_top_sdiv_32ns_32ns_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_mul_32ns_32ns_62_1_1 RTLNAME accel_top_mul_32ns_32ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_local_input_V_RAM_2P_BRAM_1R1W RTLNAME accel_top_local_input_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_local_weights_V_RAM_2P_BRAM_1R1W RTLNAME accel_top_local_weights_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_conv_output_V_RAM_2P_BRAM_1R1W RTLNAME accel_top_conv_output_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_pool_output_V_RAM_2P_BRAM_1R1W RTLNAME accel_top_pool_output_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_top_DATA_m_axi RTLNAME accel_top_DATA_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME accel_top_CTRL_s_axi RTLNAME accel_top_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
