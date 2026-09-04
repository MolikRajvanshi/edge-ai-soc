set SynModuleInfo {
  {SRCNAME sha256_top_Pipeline_LOAD_BLOCK MODELNAME sha256_top_Pipeline_LOAD_BLOCK RTLNAME sha256_top_sha256_top_Pipeline_LOAD_BLOCK}
  {SRCNAME sha256_process_block_Pipeline_EXPAND_W MODELNAME sha256_process_block_Pipeline_EXPAND_W RTLNAME sha256_top_sha256_process_block_Pipeline_EXPAND_W
    SUBMODULES {
      {MODELNAME sha256_top_mux_647_32_1_1 RTLNAME sha256_top_mux_647_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME sha256_top_flow_control_loop_pipe_sequential_init RTLNAME sha256_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sha256_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sha256_process_block_Pipeline_COMPRESS MODELNAME sha256_process_block_Pipeline_COMPRESS RTLNAME sha256_top_sha256_process_block_Pipeline_COMPRESS
    SUBMODULES {
      {MODELNAME sha256_top_mux_647_32_1_1_x RTLNAME sha256_top_mux_647_32_1_1_x BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sha256_process_block MODELNAME sha256_process_block RTLNAME sha256_top_sha256_process_block}
  {SRCNAME sha256_top_Pipeline_STORE_DIGEST MODELNAME sha256_top_Pipeline_STORE_DIGEST RTLNAME sha256_top_sha256_top_Pipeline_STORE_DIGEST}
  {SRCNAME sha256_top MODELNAME sha256_top RTLNAME sha256_top IS_TOP 1
    SUBMODULES {
      {MODELNAME sha256_top_H_RAM_AUTO_1R1W RTLNAME sha256_top_H_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sha256_top_DATA_m_axi RTLNAME sha256_top_DATA_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sha256_top_CTRL_s_axi RTLNAME sha256_top_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
