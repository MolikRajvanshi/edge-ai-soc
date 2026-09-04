set SynModuleInfo {
  {SRCNAME aes128_top_Pipeline_LOAD_DATA MODELNAME aes128_top_Pipeline_LOAD_DATA RTLNAME aes128_top_aes128_top_Pipeline_LOAD_DATA
    SUBMODULES {
      {MODELNAME aes128_top_flow_control_loop_pipe_sequential_init RTLNAME aes128_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME aes128_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME aes128_top_Pipeline_LOAD_KEY MODELNAME aes128_top_Pipeline_LOAD_KEY RTLNAME aes128_top_aes128_top_Pipeline_LOAD_KEY}
  {SRCNAME aes128_encrypt_Pipeline_VITIS_LOOP_38_2 MODELNAME aes128_encrypt_Pipeline_VITIS_LOOP_38_2 RTLNAME aes128_top_aes128_encrypt_Pipeline_VITIS_LOOP_38_2
    SUBMODULES {
      {MODELNAME aes128_top_mux_1698_8_1_1 RTLNAME aes128_top_mux_1698_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME aes128_top_mux_1578_8_1_1 RTLNAME aes128_top_mux_1578_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME aes128_top_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_RCON_ROM_AUTO_1R RTLNAME aes128_top_aes128_encrypt_Pipeline_VITIS_LOOP_38_2_RCON_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes128_encrypt_Pipeline_AES_ROUNDS_LOOP MODELNAME aes128_encrypt_Pipeline_AES_ROUNDS_LOOP RTLNAME aes128_top_aes128_encrypt_Pipeline_AES_ROUNDS_LOOP
    SUBMODULES {
      {MODELNAME aes128_top_mux_1458_8_1_1 RTLNAME aes128_top_mux_1458_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes128_encrypt MODELNAME aes128_encrypt RTLNAME aes128_top_aes128_encrypt
    SUBMODULES {
      {MODELNAME aes128_top_aes128_encrypt_SBOX_ROM_AUTO_1R RTLNAME aes128_top_aes128_encrypt_SBOX_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes128_top_Pipeline_VITIS_LOOP_69_1 MODELNAME aes128_top_Pipeline_VITIS_LOOP_69_1 RTLNAME aes128_top_aes128_top_Pipeline_VITIS_LOOP_69_1
    SUBMODULES {
      {MODELNAME aes128_top_mux_21_8_1_1 RTLNAME aes128_top_mux_21_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME aes128_top_Pipeline_STORE_DATA MODELNAME aes128_top_Pipeline_STORE_DATA RTLNAME aes128_top_aes128_top_Pipeline_STORE_DATA}
  {SRCNAME aes128_top MODELNAME aes128_top RTLNAME aes128_top IS_TOP 1
    SUBMODULES {
      {MODELNAME aes128_top_plaintext_RAM_AUTO_1R1W RTLNAME aes128_top_plaintext_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME aes128_top_DATA_m_axi RTLNAME aes128_top_DATA_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME aes128_top_CTRL_s_axi RTLNAME aes128_top_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
