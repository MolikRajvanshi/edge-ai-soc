#=============================================================================
# Script: create_project.tcl
# Description: Creates a Vivado project for the Edge AI SoC, adds all RTL
#              sources, sets the target device to Zynq-7020 (PYNQ Z2),
#              and configures synthesis/implementation settings.
#
# Usage (two ways):
#   1. Vivado GUI:  Tools > Run Tcl Script > select this file
#   2. Command line: vivado -mode batch -source create_project.tcl
#
# Author: Molik Rajvanshi
#=============================================================================

# ===========================================================================
# STEP 1: Set paths (EDIT THIS to match your system)
# ===========================================================================
# Where the edge-ai-soc folder is located on your machine
set PROJECT_ROOT [file normalize [file dirname [info script]]/../..]

# Where to create the Vivado project (inside synth/vivado/)
set PROJECT_DIR  ${PROJECT_ROOT}/synth/vivado
set PROJECT_NAME "edge_ai_soc"

# RTL source root
set RTL_DIR ${PROJECT_ROOT}/rtl

puts "============================================="
puts "  Edge AI SoC — Vivado Project Creator"
puts "============================================="
puts "Project Root: ${PROJECT_ROOT}"
puts "RTL Dir:      ${RTL_DIR}"
puts "Project Dir:  ${PROJECT_DIR}"
puts "============================================="

# ===========================================================================
# STEP 2: Create project targeting Zynq-7020 (ZedBoard)
# ===========================================================================
# ZedBoard uses: xc7z020clg484-1
# PYNQ Z2 uses:   xc7z020clg400-1

create_project ${PROJECT_NAME} ${PROJECT_DIR}/${PROJECT_NAME} \
    -part xc7z020clg484-1 \
    -force

# Set target language to Verilog (SystemVerilog files are auto-detected)
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

# ===========================================================================
# STEP 3: Add all RTL source files
# ===========================================================================
puts "\n--- Adding RTL source files ---"

# Common utilities (add packages FIRST — order matters for compilation)
add_files -norecurse [list \
    ${RTL_DIR}/common/pkg_common.sv \
    ${RTL_DIR}/common/sync_fifo.sv \
    ${RTL_DIR}/common/async_fifo.sv \
    ${RTL_DIR}/common/counter.sv \
]

# Accelerator package (depends on pkg_common)
add_files -norecurse ${RTL_DIR}/accelerator/pkg_accel.sv

# Accelerator RTL (depends on pkg_accel)
add_files -norecurse [list \
    ${RTL_DIR}/accelerator/mac_unit.sv \
    ${RTL_DIR}/accelerator/pe_cell.sv \
    ${RTL_DIR}/accelerator/systolic_array.sv \
    ${RTL_DIR}/accelerator/activation_relu.sv \
    ${RTL_DIR}/accelerator/max_pool_2x2.sv \
    ${RTL_DIR}/accelerator/bias_adder.sv \
    ${RTL_DIR}/accelerator/weight_buffer.sv \
    ${RTL_DIR}/accelerator/input_buffer.sv \
    ${RTL_DIR}/accelerator/output_buffer.sv \
    ${RTL_DIR}/accelerator/control_fsm.sv \
    ${RTL_DIR}/accelerator/accel_top.sv \
]

# AXI package (depends on pkg_common)
add_files -norecurse ${RTL_DIR}/axi/pkg_axi.sv

# AXI controllers (depends on pkg_axi)
add_files -norecurse [list \
    ${RTL_DIR}/axi/csr_register_file.sv \
    ${RTL_DIR}/axi/axi4_lite_slave.sv \
    ${RTL_DIR}/axi/axi4_stream_sink.sv \
    ${RTL_DIR}/axi/axi4_stream_source.sv \
]

# Security package
add_files -norecurse ${RTL_DIR}/security/pkg_hrot.sv

# Security RTL
add_files -norecurse [list \
    ${RTL_DIR}/security/sha256_core.sv \
    ${RTL_DIR}/security/aes128_core.sv \
    ${RTL_DIR}/security/secure_boot_fsm.sv \
    ${RTL_DIR}/security/hrot_top.sv \
]

# SoC top-level
add_files -norecurse ${RTL_DIR}/top/soc_top.sv

# ===========================================================================
# STEP 4: Set compilation order (packages must compile first)
# ===========================================================================
puts "\n--- Setting compilation order ---"

# Force packages to compile before modules that import them
set_property file_type SystemVerilog [get_files *.sv]

# Set specific compile order for packages
set_property is_global_include true [get_files pkg_common.sv]

# ===========================================================================
# STEP 5: Set top module
# ===========================================================================
set_property top soc_top [current_fileset]
puts "Top module set to: soc_top"

# ===========================================================================
# STEP 6: Add constraints (if they exist)
# ===========================================================================
set XDC_DIR ${PROJECT_ROOT}/synth/constraints

if {[file exists ${XDC_DIR}/pynq_z2_pins.xdc]} {
    add_files -fileset constrs_1 -norecurse ${XDC_DIR}/pynq_z2_pins.xdc
    puts "Added pin constraints: pynq_z2_pins.xdc"
}

if {[file exists ${XDC_DIR}/timing.xdc]} {
    add_files -fileset constrs_1 -norecurse ${XDC_DIR}/timing.xdc
    puts "Added timing constraints: timing.xdc"
}

# ===========================================================================
# STEP 7: Configure synthesis settings
# ===========================================================================
puts "\n--- Configuring synthesis settings ---"

# Use Vivado Synthesis Defaults with some optimizations
set_property strategy Flow_PerfOptimized_high [get_runs synth_1]

# Enable retiming for better Fmax
set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs synth_1]

# Flatten hierarchy for better optimization (can change to "rebuilt" for debug)
set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY rebuilt [get_runs synth_1]

# ===========================================================================
# STEP 8: Configure implementation settings
# ===========================================================================
set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1]

# ===========================================================================
# DONE
# ===========================================================================
puts "\n============================================="
puts "  Project created successfully!"
puts "  Location: ${PROJECT_DIR}/${PROJECT_NAME}"
puts "  Target:   xc7z020clg400-1 (PYNQ Z2)"
puts "  Top:      soc_top"
puts "============================================="
puts ""
puts "  Next steps:"
puts "    1. Open: ${PROJECT_DIR}/${PROJECT_NAME}/${PROJECT_NAME}.xpr"
puts "    2. Click 'Run Synthesis' (or run build.tcl)"
puts "    3. Review timing and utilization reports"
puts "============================================="
