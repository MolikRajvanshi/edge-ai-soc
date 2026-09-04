# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\PC-CST-A3\Desktop\edge-ai-soc\vitis_workspace\zedboard_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\PC-CST-A3\Desktop\edge-ai-soc\vitis_workspace\zedboard_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zedboard_platform}\
-hw {C:\Users\PC-CST-A3\Desktop\edge-ai-soc\vivado\edge_ai_soc\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/PC-CST-A3/Desktop/edge-ai-soc/vitis_workspace}

platform write
platform generate -domains 
platform active {zedboard_platform}
platform generate
bsp reload
bsp config stdin "ps7_uart_1"
bsp config stdout "ps7_uart_1"
bsp config stdin "ps7_uart_1"
bsp write
platform generate -domains 
