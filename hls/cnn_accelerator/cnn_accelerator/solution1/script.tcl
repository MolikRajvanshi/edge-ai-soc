############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn_accelerator
set_top accel_top
add_files src/accel_top.cpp
add_files src/accel_top.h
add_files src/conv_engine.cpp
add_files src/maxpool.cpp
add_files src/relu.cpp
add_files -tb testbench/tb_accel.cpp
add_files -tb testbench/test_data.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10ns -name default
set_clock_uncertainty 1.25ns
#source "./cnn_accelerator/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
