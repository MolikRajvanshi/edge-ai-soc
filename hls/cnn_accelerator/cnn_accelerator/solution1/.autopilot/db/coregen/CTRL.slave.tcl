dict set slaves CTRL {ports {input_data {type i_ap_none width 64} weight_data {type i_ap_none width 64} bias_data {type i_ap_none width 64} output_data {type i_ap_none width 64} kernel_size {type i_ap_none width 32} in_channels {type i_ap_none width 32} out_channels {type i_ap_none width 32} in_height {type i_ap_none width 32} in_width {type i_ap_none width 32} stride {type i_ap_none width 32} padding {type i_ap_none width 32} relu_enable {type i_ap_none width 32} pool_enable {type i_ap_none width 32} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR
