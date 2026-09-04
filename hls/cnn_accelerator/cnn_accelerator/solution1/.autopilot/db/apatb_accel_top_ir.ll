; ModuleID = 'C:/Users/PC-CST-A3/Desktop/edge-ai-soc/hls/cnn_accelerator/cnn_accelerator/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: noinline
define void @apatb_accel_top_ir(%"struct.ap_int<8>"* noalias nocapture nonnull readonly %input_data, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %weight_data, %"struct.ap_int<32>"* noalias nocapture nonnull readonly %bias_data, %"struct.ap_int<32>"* noalias nocapture nonnull %output_data, i32 %kernel_size, i32 %in_channels, i32 %out_channels, i32 %in_height, i32 %in_width, i32 %stride, i32 %padding, i32 %relu_enable, i32 %pool_enable) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 65536)
  %input_data_copy = bitcast i8* %malloccall to [65536 x i8]*
  %malloccall1 = call i8* @malloc(i64 65536)
  %weight_data_copy = bitcast i8* %malloccall1 to [65536 x i8]*
  %bias_data_copy = alloca [64 x i32], align 512
  %malloccall2 = call i8* @malloc(i64 262144)
  %output_data_copy = bitcast i8* %malloccall2 to [65536 x i32]*
  %0 = bitcast %"struct.ap_int<8>"* %input_data to [65536 x %"struct.ap_int<8>"]*
  %1 = bitcast %"struct.ap_int<8>"* %weight_data to [65536 x %"struct.ap_int<8>"]*
  %2 = bitcast %"struct.ap_int<32>"* %bias_data to [64 x %"struct.ap_int<32>"]*
  %3 = bitcast %"struct.ap_int<32>"* %output_data to [65536 x %"struct.ap_int<32>"]*
  call fastcc void @copy_in([65536 x %"struct.ap_int<8>"]* nonnull %0, [65536 x i8]* %input_data_copy, [65536 x %"struct.ap_int<8>"]* nonnull %1, [65536 x i8]* %weight_data_copy, [64 x %"struct.ap_int<32>"]* nonnull %2, [64 x i32]* nonnull align 512 %bias_data_copy, [65536 x %"struct.ap_int<32>"]* nonnull %3, [65536 x i32]* %output_data_copy)
  %4 = getelementptr [65536 x i8], [65536 x i8]* %input_data_copy, i32 0, i32 0
  %5 = getelementptr [65536 x i8], [65536 x i8]* %weight_data_copy, i32 0, i32 0
  %6 = getelementptr [64 x i32], [64 x i32]* %bias_data_copy, i32 0, i32 0
  %7 = getelementptr [65536 x i32], [65536 x i32]* %output_data_copy, i32 0, i32 0
  call void @apatb_accel_top_hw(i8* %4, i8* %5, i32* %6, i32* %7, i32 %kernel_size, i32 %in_channels, i32 %out_channels, i32 %in_height, i32 %in_width, i32 %stride, i32 %padding, i32 %relu_enable, i32 %pool_enable)
  call void @copy_back([65536 x %"struct.ap_int<8>"]* %0, [65536 x i8]* %input_data_copy, [65536 x %"struct.ap_int<8>"]* %1, [65536 x i8]* %weight_data_copy, [64 x %"struct.ap_int<32>"]* %2, [64 x i32]* %bias_data_copy, [65536 x %"struct.ap_int<32>"]* %3, [65536 x i32]* %output_data_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([65536 x %"struct.ap_int<8>"]* noalias readonly, [65536 x i8]* noalias, [65536 x %"struct.ap_int<8>"]* noalias readonly, [65536 x i8]* noalias, [64 x %"struct.ap_int<32>"]* noalias readonly, [64 x i32]* noalias align 512, [65536 x %"struct.ap_int<32>"]* noalias readonly, [65536 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<8>.43"([65536 x i8]* %1, [65536 x %"struct.ap_int<8>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<8>.43"([65536 x i8]* %3, [65536 x %"struct.ap_int<8>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_int<32>.32"([64 x i32]* align 512 %5, [64 x %"struct.ap_int<32>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<32>"([65536 x i32]* %7, [65536 x %"struct.ap_int<32>"]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a64struct.ap_int<32>"([64 x %"struct.ap_int<32>"]* noalias, [64 x i32]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x %"struct.ap_int<32>"]* %0, null
  %3 = icmp eq [64 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [64 x i32], [64 x i32]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_int<32>"], [64 x %"struct.ap_int<32>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<32>"([65536 x i32]* noalias, [65536 x %"struct.ap_int<32>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [65536 x i32]* %0, null
  %3 = icmp eq [65536 x %"struct.ap_int<32>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [65536 x %"struct.ap_int<32>"], [65536 x %"struct.ap_int<32>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [65536 x i32], [65536 x i32]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65536
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([65536 x %"struct.ap_int<8>"]* noalias, [65536 x i8]* noalias readonly, [65536 x %"struct.ap_int<8>"]* noalias, [65536 x i8]* noalias readonly, [64 x %"struct.ap_int<32>"]* noalias, [64 x i32]* noalias readonly align 512, [65536 x %"struct.ap_int<32>"]* noalias, [65536 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<8>"([65536 x %"struct.ap_int<8>"]* %0, [65536 x i8]* %1)
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<8>"([65536 x %"struct.ap_int<8>"]* %2, [65536 x i8]* %3)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_int<32>"([64 x %"struct.ap_int<32>"]* %4, [64 x i32]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<32>.26"([65536 x %"struct.ap_int<32>"]* %6, [65536 x i32]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<32>.26"([65536 x %"struct.ap_int<32>"]* noalias, [65536 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [65536 x %"struct.ap_int<32>"]* %0, null
  %3 = icmp eq [65536 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [65536 x i32], [65536 x i32]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [65536 x %"struct.ap_int<32>"], [65536 x %"struct.ap_int<32>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65536
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a64struct.ap_int<32>.32"([64 x i32]* noalias align 512, [64 x %"struct.ap_int<32>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x i32]* %0, null
  %3 = icmp eq [64 x %"struct.ap_int<32>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_int<32>"], [64 x %"struct.ap_int<32>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [64 x i32], [64 x i32]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<8>"([65536 x %"struct.ap_int<8>"]* noalias, [65536 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [65536 x %"struct.ap_int<8>"]* %0, null
  %3 = icmp eq [65536 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [65536 x i8], [65536 x i8]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [65536 x %"struct.ap_int<8>"], [65536 x %"struct.ap_int<8>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65536
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<8>.43"([65536 x i8]* noalias, [65536 x %"struct.ap_int<8>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [65536 x i8]* %0, null
  %3 = icmp eq [65536 x %"struct.ap_int<8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [65536 x %"struct.ap_int<8>"], [65536 x %"struct.ap_int<8>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [65536 x i8], [65536 x i8]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %6, i8* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65536
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_accel_top_hw(i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([65536 x %"struct.ap_int<8>"]* noalias, [65536 x i8]* noalias readonly, [65536 x %"struct.ap_int<8>"]* noalias, [65536 x i8]* noalias readonly, [64 x %"struct.ap_int<32>"]* noalias, [64 x i32]* noalias readonly align 512, [65536 x %"struct.ap_int<32>"]* noalias, [65536 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_int<32>.26"([65536 x %"struct.ap_int<32>"]* %6, [65536 x i32]* %7)
  ret void
}

define void @accel_top_hw_stub_wrapper(i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 65536)
  %13 = bitcast i8* %malloccall to [65536 x %"struct.ap_int<8>"]*
  %malloccall1 = tail call i8* @malloc(i64 65536)
  %14 = bitcast i8* %malloccall1 to [65536 x %"struct.ap_int<8>"]*
  %15 = alloca [64 x %"struct.ap_int<32>"]
  %malloccall2 = tail call i8* @malloc(i64 262144)
  %16 = bitcast i8* %malloccall2 to [65536 x %"struct.ap_int<32>"]*
  %17 = bitcast i8* %0 to [65536 x i8]*
  %18 = bitcast i8* %1 to [65536 x i8]*
  %19 = bitcast i32* %2 to [64 x i32]*
  %20 = bitcast i32* %3 to [65536 x i32]*
  call void @copy_out([65536 x %"struct.ap_int<8>"]* %13, [65536 x i8]* %17, [65536 x %"struct.ap_int<8>"]* %14, [65536 x i8]* %18, [64 x %"struct.ap_int<32>"]* %15, [64 x i32]* %19, [65536 x %"struct.ap_int<32>"]* %16, [65536 x i32]* %20)
  %21 = bitcast [65536 x %"struct.ap_int<8>"]* %13 to %"struct.ap_int<8>"*
  %22 = bitcast [65536 x %"struct.ap_int<8>"]* %14 to %"struct.ap_int<8>"*
  %23 = bitcast [64 x %"struct.ap_int<32>"]* %15 to %"struct.ap_int<32>"*
  %24 = bitcast [65536 x %"struct.ap_int<32>"]* %16 to %"struct.ap_int<32>"*
  call void @accel_top_hw_stub(%"struct.ap_int<8>"* %21, %"struct.ap_int<8>"* %22, %"struct.ap_int<32>"* %23, %"struct.ap_int<32>"* %24, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  call void @copy_in([65536 x %"struct.ap_int<8>"]* %13, [65536 x i8]* %17, [65536 x %"struct.ap_int<8>"]* %14, [65536 x i8]* %18, [64 x %"struct.ap_int<32>"]* %15, [64 x i32]* %19, [65536 x %"struct.ap_int<32>"]* %16, [65536 x i32]* %20)
  ret void
}

declare void @accel_top_hw_stub(%"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<32>"*, %"struct.ap_int<32>"*, i32, i32, i32, i32, i32, i32, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
