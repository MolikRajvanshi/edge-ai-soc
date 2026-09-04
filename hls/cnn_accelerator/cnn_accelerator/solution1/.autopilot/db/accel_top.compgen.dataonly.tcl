# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
input_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
weight_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
bias_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
output_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
kernel_size { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
in_channels { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
out_channels { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
in_height { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
in_width { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
stride { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
padding { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
relu_enable { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
pool_enable { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


