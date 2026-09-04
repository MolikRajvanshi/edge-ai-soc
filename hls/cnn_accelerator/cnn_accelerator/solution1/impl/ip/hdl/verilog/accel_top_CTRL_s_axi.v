// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module accel_top_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   input_data,
    output wire [63:0]                   weight_data,
    output wire [63:0]                   bias_data,
    output wire [63:0]                   output_data,
    output wire [31:0]                   kernel_size,
    output wire [31:0]                   in_channels,
    output wire [31:0]                   out_channels,
    output wire [31:0]                   in_height,
    output wire [31:0]                   in_width,
    output wire [31:0]                   stride,
    output wire [31:0]                   padding,
    output wire [31:0]                   relu_enable,
    output wire [31:0]                   pool_enable,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of input_data
//        bit 31~0 - input_data[31:0] (Read/Write)
// 0x14 : Data signal of input_data
//        bit 31~0 - input_data[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of weight_data
//        bit 31~0 - weight_data[31:0] (Read/Write)
// 0x20 : Data signal of weight_data
//        bit 31~0 - weight_data[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bias_data
//        bit 31~0 - bias_data[31:0] (Read/Write)
// 0x2c : Data signal of bias_data
//        bit 31~0 - bias_data[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of output_data
//        bit 31~0 - output_data[31:0] (Read/Write)
// 0x38 : Data signal of output_data
//        bit 31~0 - output_data[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of kernel_size
//        bit 31~0 - kernel_size[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of in_channels
//        bit 31~0 - in_channels[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of out_channels
//        bit 31~0 - out_channels[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of in_height
//        bit 31~0 - in_height[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of in_width
//        bit 31~0 - in_width[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of stride
//        bit 31~0 - stride[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of padding
//        bit 31~0 - padding[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of relu_enable
//        bit 31~0 - relu_enable[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of pool_enable
//        bit 31~0 - pool_enable[31:0] (Read/Write)
// 0x84 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL             = 8'h00,
    ADDR_GIE                 = 8'h04,
    ADDR_IER                 = 8'h08,
    ADDR_ISR                 = 8'h0c,
    ADDR_INPUT_DATA_DATA_0   = 8'h10,
    ADDR_INPUT_DATA_DATA_1   = 8'h14,
    ADDR_INPUT_DATA_CTRL     = 8'h18,
    ADDR_WEIGHT_DATA_DATA_0  = 8'h1c,
    ADDR_WEIGHT_DATA_DATA_1  = 8'h20,
    ADDR_WEIGHT_DATA_CTRL    = 8'h24,
    ADDR_BIAS_DATA_DATA_0    = 8'h28,
    ADDR_BIAS_DATA_DATA_1    = 8'h2c,
    ADDR_BIAS_DATA_CTRL      = 8'h30,
    ADDR_OUTPUT_DATA_DATA_0  = 8'h34,
    ADDR_OUTPUT_DATA_DATA_1  = 8'h38,
    ADDR_OUTPUT_DATA_CTRL    = 8'h3c,
    ADDR_KERNEL_SIZE_DATA_0  = 8'h40,
    ADDR_KERNEL_SIZE_CTRL    = 8'h44,
    ADDR_IN_CHANNELS_DATA_0  = 8'h48,
    ADDR_IN_CHANNELS_CTRL    = 8'h4c,
    ADDR_OUT_CHANNELS_DATA_0 = 8'h50,
    ADDR_OUT_CHANNELS_CTRL   = 8'h54,
    ADDR_IN_HEIGHT_DATA_0    = 8'h58,
    ADDR_IN_HEIGHT_CTRL      = 8'h5c,
    ADDR_IN_WIDTH_DATA_0     = 8'h60,
    ADDR_IN_WIDTH_CTRL       = 8'h64,
    ADDR_STRIDE_DATA_0       = 8'h68,
    ADDR_STRIDE_CTRL         = 8'h6c,
    ADDR_PADDING_DATA_0      = 8'h70,
    ADDR_PADDING_CTRL        = 8'h74,
    ADDR_RELU_ENABLE_DATA_0  = 8'h78,
    ADDR_RELU_ENABLE_CTRL    = 8'h7c,
    ADDR_POOL_ENABLE_DATA_0  = 8'h80,
    ADDR_POOL_ENABLE_CTRL    = 8'h84,
    WRIDLE                   = 2'd0,
    WRDATA                   = 2'd1,
    WRRESP                   = 2'd2,
    WRRESET                  = 2'd3,
    RDIDLE                   = 2'd0,
    RDDATA                   = 2'd1,
    RDRESET                  = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_input_data = 'b0;
    reg  [63:0]                   int_weight_data = 'b0;
    reg  [63:0]                   int_bias_data = 'b0;
    reg  [63:0]                   int_output_data = 'b0;
    reg  [31:0]                   int_kernel_size = 'b0;
    reg  [31:0]                   int_in_channels = 'b0;
    reg  [31:0]                   int_out_channels = 'b0;
    reg  [31:0]                   int_in_height = 'b0;
    reg  [31:0]                   int_in_width = 'b0;
    reg  [31:0]                   int_stride = 'b0;
    reg  [31:0]                   int_padding = 'b0;
    reg  [31:0]                   int_relu_enable = 'b0;
    reg  [31:0]                   int_pool_enable = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_INPUT_DATA_DATA_0: begin
                    rdata <= int_input_data[31:0];
                end
                ADDR_INPUT_DATA_DATA_1: begin
                    rdata <= int_input_data[63:32];
                end
                ADDR_WEIGHT_DATA_DATA_0: begin
                    rdata <= int_weight_data[31:0];
                end
                ADDR_WEIGHT_DATA_DATA_1: begin
                    rdata <= int_weight_data[63:32];
                end
                ADDR_BIAS_DATA_DATA_0: begin
                    rdata <= int_bias_data[31:0];
                end
                ADDR_BIAS_DATA_DATA_1: begin
                    rdata <= int_bias_data[63:32];
                end
                ADDR_OUTPUT_DATA_DATA_0: begin
                    rdata <= int_output_data[31:0];
                end
                ADDR_OUTPUT_DATA_DATA_1: begin
                    rdata <= int_output_data[63:32];
                end
                ADDR_KERNEL_SIZE_DATA_0: begin
                    rdata <= int_kernel_size[31:0];
                end
                ADDR_IN_CHANNELS_DATA_0: begin
                    rdata <= int_in_channels[31:0];
                end
                ADDR_OUT_CHANNELS_DATA_0: begin
                    rdata <= int_out_channels[31:0];
                end
                ADDR_IN_HEIGHT_DATA_0: begin
                    rdata <= int_in_height[31:0];
                end
                ADDR_IN_WIDTH_DATA_0: begin
                    rdata <= int_in_width[31:0];
                end
                ADDR_STRIDE_DATA_0: begin
                    rdata <= int_stride[31:0];
                end
                ADDR_PADDING_DATA_0: begin
                    rdata <= int_padding[31:0];
                end
                ADDR_RELU_ENABLE_DATA_0: begin
                    rdata <= int_relu_enable[31:0];
                end
                ADDR_POOL_ENABLE_DATA_0: begin
                    rdata <= int_pool_enable[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign input_data        = int_input_data;
assign weight_data       = int_weight_data;
assign bias_data         = int_bias_data;
assign output_data       = int_output_data;
assign kernel_size       = int_kernel_size;
assign in_channels       = int_in_channels;
assign out_channels      = int_out_channels;
assign in_height         = int_in_height;
assign in_width          = int_in_width;
assign stride            = int_stride;
assign padding           = int_padding;
assign relu_enable       = int_relu_enable;
assign pool_enable       = int_pool_enable;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (ar_hs && raddr == ADDR_ISR)
            int_isr[0] <= 1'b0; // clear on read
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (ar_hs && raddr == ADDR_ISR)
            int_isr[1] <= 1'b0; // clear on read
    end
end

// int_input_data[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_data[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_DATA_DATA_0)
            int_input_data[31:0] <= (WDATA[31:0] & wmask) | (int_input_data[31:0] & ~wmask);
    end
end

// int_input_data[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_data[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_DATA_DATA_1)
            int_input_data[63:32] <= (WDATA[31:0] & wmask) | (int_input_data[63:32] & ~wmask);
    end
end

// int_weight_data[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_weight_data[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WEIGHT_DATA_DATA_0)
            int_weight_data[31:0] <= (WDATA[31:0] & wmask) | (int_weight_data[31:0] & ~wmask);
    end
end

// int_weight_data[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_weight_data[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WEIGHT_DATA_DATA_1)
            int_weight_data[63:32] <= (WDATA[31:0] & wmask) | (int_weight_data[63:32] & ~wmask);
    end
end

// int_bias_data[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_data[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BIAS_DATA_DATA_0)
            int_bias_data[31:0] <= (WDATA[31:0] & wmask) | (int_bias_data[31:0] & ~wmask);
    end
end

// int_bias_data[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_data[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BIAS_DATA_DATA_1)
            int_bias_data[63:32] <= (WDATA[31:0] & wmask) | (int_bias_data[63:32] & ~wmask);
    end
end

// int_output_data[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_output_data[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUT_DATA_DATA_0)
            int_output_data[31:0] <= (WDATA[31:0] & wmask) | (int_output_data[31:0] & ~wmask);
    end
end

// int_output_data[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_output_data[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUT_DATA_DATA_1)
            int_output_data[63:32] <= (WDATA[31:0] & wmask) | (int_output_data[63:32] & ~wmask);
    end
end

// int_kernel_size[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_kernel_size[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_KERNEL_SIZE_DATA_0)
            int_kernel_size[31:0] <= (WDATA[31:0] & wmask) | (int_kernel_size[31:0] & ~wmask);
    end
end

// int_in_channels[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_in_channels[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IN_CHANNELS_DATA_0)
            int_in_channels[31:0] <= (WDATA[31:0] & wmask) | (int_in_channels[31:0] & ~wmask);
    end
end

// int_out_channels[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_out_channels[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUT_CHANNELS_DATA_0)
            int_out_channels[31:0] <= (WDATA[31:0] & wmask) | (int_out_channels[31:0] & ~wmask);
    end
end

// int_in_height[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_in_height[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IN_HEIGHT_DATA_0)
            int_in_height[31:0] <= (WDATA[31:0] & wmask) | (int_in_height[31:0] & ~wmask);
    end
end

// int_in_width[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_in_width[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IN_WIDTH_DATA_0)
            int_in_width[31:0] <= (WDATA[31:0] & wmask) | (int_in_width[31:0] & ~wmask);
    end
end

// int_stride[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_stride[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STRIDE_DATA_0)
            int_stride[31:0] <= (WDATA[31:0] & wmask) | (int_stride[31:0] & ~wmask);
    end
end

// int_padding[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_padding[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PADDING_DATA_0)
            int_padding[31:0] <= (WDATA[31:0] & wmask) | (int_padding[31:0] & ~wmask);
    end
end

// int_relu_enable[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_relu_enable[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RELU_ENABLE_DATA_0)
            int_relu_enable[31:0] <= (WDATA[31:0] & wmask) | (int_relu_enable[31:0] & ~wmask);
    end
end

// int_pool_enable[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pool_enable[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_POOL_ENABLE_DATA_0)
            int_pool_enable[31:0] <= (WDATA[31:0] & wmask) | (int_pool_enable[31:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
