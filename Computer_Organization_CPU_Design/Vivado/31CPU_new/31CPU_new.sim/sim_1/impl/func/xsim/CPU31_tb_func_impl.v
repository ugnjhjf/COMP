// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu May 23 16:53:46 2024
// Host        : DESKTOP-LAOKQO9 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/ugnjhjf/Desktop/COMP_P/Computer_Organization_CPU_Design/Vivado/31CPU_new/31CPU_new.sim/sim_1/impl/func/xsim/CPU31_tb_func_impl.v
// Design      : CPU31
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "794dc217" *) 
(* NotValidForBitStream *)
module CPU31
   (clk_in,
    reset,
    inst,
    pc);
  input clk_in;
  input reset;
  output [31:0]inst;
  output [31:0]pc;

  wire clk_in;
  wire clk_in_IBUF;
  wire clk_in_IBUF_BUFG;
  wire [31:0]inst;
  wire [31:0]inst_OBUF;
  wire [31:0]pc;
  wire [31:2]pc_OBUF;
  wire reset;
  wire reset_IBUF;

  BUFG clk_in_IBUF_BUFG_inst
       (.I(clk_in_IBUF),
        .O(clk_in_IBUF_BUFG));
  IBUF clk_in_IBUF_inst
       (.I(clk_in),
        .O(clk_in_IBUF));
  IMEM imem
       (.out(pc_OBUF[11:2]),
        .spo(inst_OBUF));
  OBUF \inst_OBUF[0]_inst 
       (.I(inst_OBUF[0]),
        .O(inst[0]));
  OBUF \inst_OBUF[10]_inst 
       (.I(inst_OBUF[10]),
        .O(inst[10]));
  OBUF \inst_OBUF[11]_inst 
       (.I(inst_OBUF[11]),
        .O(inst[11]));
  OBUF \inst_OBUF[12]_inst 
       (.I(inst_OBUF[12]),
        .O(inst[12]));
  OBUF \inst_OBUF[13]_inst 
       (.I(inst_OBUF[13]),
        .O(inst[13]));
  OBUF \inst_OBUF[14]_inst 
       (.I(inst_OBUF[14]),
        .O(inst[14]));
  OBUF \inst_OBUF[15]_inst 
       (.I(inst_OBUF[15]),
        .O(inst[15]));
  OBUF \inst_OBUF[16]_inst 
       (.I(inst_OBUF[16]),
        .O(inst[16]));
  OBUF \inst_OBUF[17]_inst 
       (.I(inst_OBUF[17]),
        .O(inst[17]));
  OBUF \inst_OBUF[18]_inst 
       (.I(inst_OBUF[18]),
        .O(inst[18]));
  OBUF \inst_OBUF[19]_inst 
       (.I(inst_OBUF[19]),
        .O(inst[19]));
  OBUF \inst_OBUF[1]_inst 
       (.I(inst_OBUF[1]),
        .O(inst[1]));
  OBUF \inst_OBUF[20]_inst 
       (.I(inst_OBUF[20]),
        .O(inst[20]));
  OBUF \inst_OBUF[21]_inst 
       (.I(inst_OBUF[21]),
        .O(inst[21]));
  OBUF \inst_OBUF[22]_inst 
       (.I(inst_OBUF[22]),
        .O(inst[22]));
  OBUF \inst_OBUF[23]_inst 
       (.I(inst_OBUF[23]),
        .O(inst[23]));
  OBUF \inst_OBUF[24]_inst 
       (.I(inst_OBUF[24]),
        .O(inst[24]));
  OBUF \inst_OBUF[25]_inst 
       (.I(inst_OBUF[25]),
        .O(inst[25]));
  OBUF \inst_OBUF[26]_inst 
       (.I(inst_OBUF[26]),
        .O(inst[26]));
  OBUF \inst_OBUF[27]_inst 
       (.I(inst_OBUF[27]),
        .O(inst[27]));
  OBUF \inst_OBUF[28]_inst 
       (.I(inst_OBUF[28]),
        .O(inst[28]));
  OBUF \inst_OBUF[29]_inst 
       (.I(inst_OBUF[29]),
        .O(inst[29]));
  OBUF \inst_OBUF[2]_inst 
       (.I(inst_OBUF[2]),
        .O(inst[2]));
  OBUF \inst_OBUF[30]_inst 
       (.I(inst_OBUF[30]),
        .O(inst[30]));
  OBUF \inst_OBUF[31]_inst 
       (.I(inst_OBUF[31]),
        .O(inst[31]));
  OBUF \inst_OBUF[3]_inst 
       (.I(inst_OBUF[3]),
        .O(inst[3]));
  OBUF \inst_OBUF[4]_inst 
       (.I(inst_OBUF[4]),
        .O(inst[4]));
  OBUF \inst_OBUF[5]_inst 
       (.I(inst_OBUF[5]),
        .O(inst[5]));
  OBUF \inst_OBUF[6]_inst 
       (.I(inst_OBUF[6]),
        .O(inst[6]));
  OBUF \inst_OBUF[7]_inst 
       (.I(inst_OBUF[7]),
        .O(inst[7]));
  OBUF \inst_OBUF[8]_inst 
       (.I(inst_OBUF[8]),
        .O(inst[8]));
  OBUF \inst_OBUF[9]_inst 
       (.I(inst_OBUF[9]),
        .O(inst[9]));
  OBUF \pc_OBUF[0]_inst 
       (.I(1'b0),
        .O(pc[0]));
  OBUF \pc_OBUF[10]_inst 
       (.I(pc_OBUF[10]),
        .O(pc[10]));
  OBUF \pc_OBUF[11]_inst 
       (.I(pc_OBUF[11]),
        .O(pc[11]));
  OBUF \pc_OBUF[12]_inst 
       (.I(pc_OBUF[12]),
        .O(pc[12]));
  OBUF \pc_OBUF[13]_inst 
       (.I(pc_OBUF[13]),
        .O(pc[13]));
  OBUF \pc_OBUF[14]_inst 
       (.I(pc_OBUF[14]),
        .O(pc[14]));
  OBUF \pc_OBUF[15]_inst 
       (.I(pc_OBUF[15]),
        .O(pc[15]));
  OBUF \pc_OBUF[16]_inst 
       (.I(pc_OBUF[16]),
        .O(pc[16]));
  OBUF \pc_OBUF[17]_inst 
       (.I(pc_OBUF[17]),
        .O(pc[17]));
  OBUF \pc_OBUF[18]_inst 
       (.I(pc_OBUF[18]),
        .O(pc[18]));
  OBUF \pc_OBUF[19]_inst 
       (.I(pc_OBUF[19]),
        .O(pc[19]));
  OBUF \pc_OBUF[1]_inst 
       (.I(1'b0),
        .O(pc[1]));
  OBUF \pc_OBUF[20]_inst 
       (.I(pc_OBUF[20]),
        .O(pc[20]));
  OBUF \pc_OBUF[21]_inst 
       (.I(pc_OBUF[21]),
        .O(pc[21]));
  OBUF \pc_OBUF[22]_inst 
       (.I(pc_OBUF[22]),
        .O(pc[22]));
  OBUF \pc_OBUF[23]_inst 
       (.I(pc_OBUF[23]),
        .O(pc[23]));
  OBUF \pc_OBUF[24]_inst 
       (.I(pc_OBUF[24]),
        .O(pc[24]));
  OBUF \pc_OBUF[25]_inst 
       (.I(pc_OBUF[25]),
        .O(pc[25]));
  OBUF \pc_OBUF[26]_inst 
       (.I(pc_OBUF[26]),
        .O(pc[26]));
  OBUF \pc_OBUF[27]_inst 
       (.I(pc_OBUF[27]),
        .O(pc[27]));
  OBUF \pc_OBUF[28]_inst 
       (.I(pc_OBUF[28]),
        .O(pc[28]));
  OBUF \pc_OBUF[29]_inst 
       (.I(pc_OBUF[29]),
        .O(pc[29]));
  OBUF \pc_OBUF[2]_inst 
       (.I(pc_OBUF[2]),
        .O(pc[2]));
  OBUF \pc_OBUF[30]_inst 
       (.I(pc_OBUF[30]),
        .O(pc[30]));
  OBUF \pc_OBUF[31]_inst 
       (.I(pc_OBUF[31]),
        .O(pc[31]));
  OBUF \pc_OBUF[3]_inst 
       (.I(pc_OBUF[3]),
        .O(pc[3]));
  OBUF \pc_OBUF[4]_inst 
       (.I(pc_OBUF[4]),
        .O(pc[4]));
  OBUF \pc_OBUF[5]_inst 
       (.I(pc_OBUF[5]),
        .O(pc[5]));
  OBUF \pc_OBUF[6]_inst 
       (.I(pc_OBUF[6]),
        .O(pc[6]));
  OBUF \pc_OBUF[7]_inst 
       (.I(pc_OBUF[7]),
        .O(pc[7]));
  OBUF \pc_OBUF[8]_inst 
       (.I(pc_OBUF[8]),
        .O(pc[8]));
  OBUF \pc_OBUF[9]_inst 
       (.I(pc_OBUF[9]),
        .O(pc[9]));
  PC pc_reg
       (.clear(reset_IBUF),
        .clk(clk_in_IBUF_BUFG),
        .out(pc_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module IMEM
   (spo,
    out);
  output [31:0]spo;
  input [9:0]out;

  wire [9:0]out;
  wire [31:0]spo;
  wire [10:10]NLW_instr_mem_a_UNCONNECTED;

  (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.1" *) 
  dist_mem_gen_0 instr_mem
       (.a({NLW_instr_mem_a_UNCONNECTED[10],out}),
        .spo(spo));
endmodule

module PC
   (out,
    clk,
    clear);
  output [29:0]out;
  input clk;
  input clear;

  wire \addr_out[2]_i_2_n_0 ;
  wire \addr_out_reg[10]_i_1_n_0 ;
  wire \addr_out_reg[10]_i_1_n_4 ;
  wire \addr_out_reg[10]_i_1_n_5 ;
  wire \addr_out_reg[10]_i_1_n_6 ;
  wire \addr_out_reg[10]_i_1_n_7 ;
  wire \addr_out_reg[14]_i_1_n_0 ;
  wire \addr_out_reg[14]_i_1_n_4 ;
  wire \addr_out_reg[14]_i_1_n_5 ;
  wire \addr_out_reg[14]_i_1_n_6 ;
  wire \addr_out_reg[14]_i_1_n_7 ;
  wire \addr_out_reg[18]_i_1_n_0 ;
  wire \addr_out_reg[18]_i_1_n_4 ;
  wire \addr_out_reg[18]_i_1_n_5 ;
  wire \addr_out_reg[18]_i_1_n_6 ;
  wire \addr_out_reg[18]_i_1_n_7 ;
  wire \addr_out_reg[22]_i_1_n_0 ;
  wire \addr_out_reg[22]_i_1_n_4 ;
  wire \addr_out_reg[22]_i_1_n_5 ;
  wire \addr_out_reg[22]_i_1_n_6 ;
  wire \addr_out_reg[22]_i_1_n_7 ;
  wire \addr_out_reg[26]_i_1_n_0 ;
  wire \addr_out_reg[26]_i_1_n_4 ;
  wire \addr_out_reg[26]_i_1_n_5 ;
  wire \addr_out_reg[26]_i_1_n_6 ;
  wire \addr_out_reg[26]_i_1_n_7 ;
  wire \addr_out_reg[2]_i_1_n_0 ;
  wire \addr_out_reg[2]_i_1_n_4 ;
  wire \addr_out_reg[2]_i_1_n_5 ;
  wire \addr_out_reg[2]_i_1_n_6 ;
  wire \addr_out_reg[2]_i_1_n_7 ;
  wire \addr_out_reg[30]_i_1_n_6 ;
  wire \addr_out_reg[30]_i_1_n_7 ;
  wire \addr_out_reg[6]_i_1_n_0 ;
  wire \addr_out_reg[6]_i_1_n_4 ;
  wire \addr_out_reg[6]_i_1_n_5 ;
  wire \addr_out_reg[6]_i_1_n_6 ;
  wire \addr_out_reg[6]_i_1_n_7 ;
  wire clear;
  wire clk;
  wire [29:0]out;
  wire [2:0]\NLW_addr_out_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_out_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_out_reg[18]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_out_reg[22]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_out_reg[26]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_out_reg[2]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_out_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_addr_out_reg[30]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_out_reg[6]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \addr_out[2]_i_2 
       (.I0(out[0]),
        .O(\addr_out[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[10]_i_1_n_7 ),
        .Q(out[8]));
  CARRY4 \addr_out_reg[10]_i_1 
       (.CI(\addr_out_reg[6]_i_1_n_0 ),
        .CO({\addr_out_reg[10]_i_1_n_0 ,\NLW_addr_out_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_out_reg[10]_i_1_n_4 ,\addr_out_reg[10]_i_1_n_5 ,\addr_out_reg[10]_i_1_n_6 ,\addr_out_reg[10]_i_1_n_7 }),
        .S(out[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[10]_i_1_n_6 ),
        .Q(out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[10]_i_1_n_5 ),
        .Q(out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[10]_i_1_n_4 ),
        .Q(out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[14]_i_1_n_7 ),
        .Q(out[12]));
  CARRY4 \addr_out_reg[14]_i_1 
       (.CI(\addr_out_reg[10]_i_1_n_0 ),
        .CO({\addr_out_reg[14]_i_1_n_0 ,\NLW_addr_out_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_out_reg[14]_i_1_n_4 ,\addr_out_reg[14]_i_1_n_5 ,\addr_out_reg[14]_i_1_n_6 ,\addr_out_reg[14]_i_1_n_7 }),
        .S(out[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[14]_i_1_n_6 ),
        .Q(out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[14]_i_1_n_5 ),
        .Q(out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[14]_i_1_n_4 ),
        .Q(out[15]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[18]_i_1_n_7 ),
        .Q(out[16]));
  CARRY4 \addr_out_reg[18]_i_1 
       (.CI(\addr_out_reg[14]_i_1_n_0 ),
        .CO({\addr_out_reg[18]_i_1_n_0 ,\NLW_addr_out_reg[18]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_out_reg[18]_i_1_n_4 ,\addr_out_reg[18]_i_1_n_5 ,\addr_out_reg[18]_i_1_n_6 ,\addr_out_reg[18]_i_1_n_7 }),
        .S(out[19:16]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[18]_i_1_n_6 ),
        .Q(out[17]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[18]_i_1_n_5 ),
        .Q(out[18]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[18]_i_1_n_4 ),
        .Q(out[19]));
  FDPE #(
    .INIT(1'b1)) 
    \addr_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\addr_out_reg[22]_i_1_n_7 ),
        .PRE(clear),
        .Q(out[20]));
  CARRY4 \addr_out_reg[22]_i_1 
       (.CI(\addr_out_reg[18]_i_1_n_0 ),
        .CO({\addr_out_reg[22]_i_1_n_0 ,\NLW_addr_out_reg[22]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_out_reg[22]_i_1_n_4 ,\addr_out_reg[22]_i_1_n_5 ,\addr_out_reg[22]_i_1_n_6 ,\addr_out_reg[22]_i_1_n_7 }),
        .S(out[23:20]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[22]_i_1_n_6 ),
        .Q(out[21]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[22]_i_1_n_5 ),
        .Q(out[22]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[22]_i_1_n_4 ),
        .Q(out[23]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[26]_i_1_n_7 ),
        .Q(out[24]));
  CARRY4 \addr_out_reg[26]_i_1 
       (.CI(\addr_out_reg[22]_i_1_n_0 ),
        .CO({\addr_out_reg[26]_i_1_n_0 ,\NLW_addr_out_reg[26]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_out_reg[26]_i_1_n_4 ,\addr_out_reg[26]_i_1_n_5 ,\addr_out_reg[26]_i_1_n_6 ,\addr_out_reg[26]_i_1_n_7 }),
        .S(out[27:24]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[26]_i_1_n_6 ),
        .Q(out[25]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[26]_i_1_n_5 ),
        .Q(out[26]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[26]_i_1_n_4 ),
        .Q(out[27]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[2]_i_1_n_7 ),
        .Q(out[0]));
  CARRY4 \addr_out_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\addr_out_reg[2]_i_1_n_0 ,\NLW_addr_out_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\addr_out_reg[2]_i_1_n_4 ,\addr_out_reg[2]_i_1_n_5 ,\addr_out_reg[2]_i_1_n_6 ,\addr_out_reg[2]_i_1_n_7 }),
        .S({out[3:1],\addr_out[2]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[30]_i_1_n_7 ),
        .Q(out[28]));
  CARRY4 \addr_out_reg[30]_i_1 
       (.CI(\addr_out_reg[26]_i_1_n_0 ),
        .CO(\NLW_addr_out_reg[30]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_out_reg[30]_i_1_O_UNCONNECTED [3:2],\addr_out_reg[30]_i_1_n_6 ,\addr_out_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,out[29:28]}));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[30]_i_1_n_6 ),
        .Q(out[29]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[2]_i_1_n_6 ),
        .Q(out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[2]_i_1_n_5 ),
        .Q(out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[2]_i_1_n_4 ),
        .Q(out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[6]_i_1_n_7 ),
        .Q(out[4]));
  CARRY4 \addr_out_reg[6]_i_1 
       (.CI(\addr_out_reg[2]_i_1_n_0 ),
        .CO({\addr_out_reg[6]_i_1_n_0 ,\NLW_addr_out_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_out_reg[6]_i_1_n_4 ,\addr_out_reg[6]_i_1_n_5 ,\addr_out_reg[6]_i_1_n_6 ,\addr_out_reg[6]_i_1_n_7 }),
        .S(out[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[6]_i_1_n_6 ),
        .Q(out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[6]_i_1_n_5 ),
        .Q(out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clear),
        .D(\addr_out_reg[6]_i_1_n_4 ),
        .Q(out[7]));
endmodule

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.1" *) 
module dist_mem_gen_0
   (a,
    spo);
  input [10:0]a;
  output [31:0]spo;

  wire [10:0]a;
  wire [31:0]spo;
  wire NLW_U0_clk_UNCONNECTED;
  wire NLW_U0_i_ce_UNCONNECTED;
  wire NLW_U0_qdpo_ce_UNCONNECTED;
  wire NLW_U0_qdpo_clk_UNCONNECTED;
  wire NLW_U0_qdpo_rst_UNCONNECTED;
  wire NLW_U0_qdpo_srst_UNCONNECTED;
  wire NLW_U0_qspo_ce_UNCONNECTED;
  wire NLW_U0_qspo_rst_UNCONNECTED;
  wire NLW_U0_qspo_srst_UNCONNECTED;
  wire NLW_U0_we_UNCONNECTED;
  wire [10:10]NLW_U0_a_UNCONNECTED;
  wire [31:0]NLW_U0_d_UNCONNECTED;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [10:0]NLW_U0_dpra_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "11" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2048" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_12 U0
       (.a({NLW_U0_a_UNCONNECTED[10],a[9:0]}),
        .clk(NLW_U0_clk_UNCONNECTED),
        .d(NLW_U0_d_UNCONNECTED[31:0]),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra(NLW_U0_dpra_UNCONNECTED[10:0]),
        .i_ce(NLW_U0_i_ce_UNCONNECTED),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(NLW_U0_qdpo_ce_UNCONNECTED),
        .qdpo_clk(NLW_U0_qdpo_clk_UNCONNECTED),
        .qdpo_rst(NLW_U0_qdpo_rst_UNCONNECTED),
        .qdpo_srst(NLW_U0_qdpo_srst_UNCONNECTED),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(NLW_U0_qspo_ce_UNCONNECTED),
        .qspo_rst(NLW_U0_qspo_rst_UNCONNECTED),
        .qspo_srst(NLW_U0_qspo_srst_UNCONNECTED),
        .spo(spo),
        .we(NLW_U0_we_UNCONNECTED));
endmodule

(* C_ADDR_WIDTH = "11" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "2048" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_0.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module dist_mem_gen_0_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [10:0]a;
  input [31:0]d;
  input [10:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [10:0]a;
  wire [29:0]\^spo ;
  wire [10:10]\NLW_synth_options.dist_mem_inst_a_UNCONNECTED ;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \^spo [29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \^spo [29];
  assign spo[25:0] = \^spo [25:0];
  GND GND
       (.G(\<const0> ));
  dist_mem_gen_0_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a({\NLW_synth_options.dist_mem_inst_a_UNCONNECTED [10],a[9:0]}),
        .spo({\^spo [29],\^spo [25:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module dist_mem_gen_0_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [26:0]spo;
  input [10:0]a;

  wire [10:0]a;
  wire [26:0]spo;
  wire [10:10]\NLW_gen_rom.rom_inst_a_UNCONNECTED ;

  dist_mem_gen_0_rom \gen_rom.rom_inst 
       (.a({\NLW_gen_rom.rom_inst_a_UNCONNECTED [10],a[9:0]}),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_mem_gen_0_rom
   (spo,
    a);
  output [26:0]spo;
  input [10:0]a;

  wire [10:0]a;
  wire [26:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;

  MUXF7 \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hDD1700009B160000)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F0000FFE00000)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[10]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[4]),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[1]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1035000019240000)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h5407000000000000)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h104C000035240000)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[12]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h002020C0)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[9]),
        .I3(a[6]),
        .I4(a[4]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  MUXF7 \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[13]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0050000095900000)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h033C000008800000)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h5532000020800000)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0095000005900000)) 
    \spo[14]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  MUXF7 \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .O(spo[15]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h09004C0004004400)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5154000002800000)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  MUXF7 \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[16]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hD933000099320000)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h57FF000000000000)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  MUXF7 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h1EC300001BC20000)) 
    \spo[17]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007F00)) 
    \spo[17]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  MUXF7 \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .O(spo[18]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hF54E000056020000)) 
    \spo[18]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000F00)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5060FFFF50600000)) 
    \spo[19]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_1_n_0 ),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h03FF0000EE000000)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  MUXF7 \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .O(spo[1]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h5D5F00004D0A0000)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000700)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h606060A0A0A0A0A0)) 
    \spo[20]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(spo[20]));
  MUXF7 \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .O(spo[21]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h4400100004008000)) 
    \spo[21]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0000000000000)) 
    \spo[21]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  MUXF7 \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .O(spo[22]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h010050000A000000)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007800)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  MUXF7 \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[23]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h3400000004000000)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h43008000)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  MUXF7 \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[24]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h400050000000A000)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h56000000)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4848488800000000)) 
    \spo[25]_INST_0 
       (.I0(a[4]),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(spo[25]));
  LUT6 #(
    .INIT(64'hBF80BF83BF80BC80)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(\spo[26]_INST_0_i_3_n_0 ),
        .O(spo[26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[26]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[8]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  MUXF7 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hDD57000027120000)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004300)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  MUXF7 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h455700004D0A0000)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00005600)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  MUXF7 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hBE1D0000BB0C0000)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000BD55F00000000)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_2_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \spo[5]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[7]_INST_0_i_1_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[7]_INST_0_i_3_n_0 ),
        .O(spo[5]));
  MUXF7 \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h141D00001B0C0000)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4200000002000000)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[0]),
        .I2(\spo[7]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[7]_INST_0_i_3_n_0 ),
        .O(spo[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h144E00001D0C0000)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h5000000040008000)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h5009000080000000)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
