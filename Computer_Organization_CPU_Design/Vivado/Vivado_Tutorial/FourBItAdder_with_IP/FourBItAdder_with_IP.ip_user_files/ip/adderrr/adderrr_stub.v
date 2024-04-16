// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Apr 16 10:16:41 2024
// Host        : DESKTOP-LAOKQO9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ugnjhjf/Desktop/COMP/Computer_Organization_CPU_Design/Vivado/Vivado_Tutorial/FourBItAdder_with_IP/FourBItAdder_with_IP.srcs/sources_1/ip/adderrr/adderrr_stub.v
// Design      : adderrr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *)
module adderrr(A, B, CLK, C_OUT, S)
/* synthesis syn_black_box black_box_pad_pin="A[3:0],B[3:0],CLK,C_OUT,S[3:0]" */;
  input [3:0]A;
  input [3:0]B;
  input CLK;
  output C_OUT;
  output [3:0]S;
endmodule
