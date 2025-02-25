// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat May 25 21:03:47 2024
// Host        : DESKTOP-LAOKQO9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [10:0]a;
  output [31:0]spo;

  wire [10:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
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
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
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

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29:28] = \^spo [29:28];
  assign spo[27] = \^spo [28];
  assign spo[26] = \^spo [28];
  assign spo[25:11] = \^spo [25:11];
  assign spo[10] = \^spo [8];
  assign spo[9] = \^spo [8];
  assign spo[8:7] = \^spo [8:7];
  assign spo[6] = \^spo [7];
  assign spo[5:0] = \^spo [5:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [29:28],\^spo [25:11],\^spo [8:7],\^spo [5:0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [24:0]spo;
  input [10:0]a;

  wire [10:0]a;
  wire [24:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [24:0]spo;
  input [10:0]a;

  wire [10:0]a;
  wire [24:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;

  LUT6 #(
    .INIT(64'h00005555CCCCDDCF)) 
    \spo[0]_INST_0 
       (.I0(\spo[25]_INST_0_i_2_n_0 ),
        .I1(\spo[25]_INST_0_i_1_n_0 ),
        .I2(\spo[0]_INST_0_i_1_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[6]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'hFBF0F6F8FBFCFFFB)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spo[11]_INST_0 
       (.I0(spo[7]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h0302031203120212)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[6]),
        .I1(\spo[21]_INST_0_i_1_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB8B8)) 
    \spo[12]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[22]_INST_0_i_2_n_0 ),
        .I3(\spo[12]_INST_0_i_1_n_0 ),
        .I4(\spo[12]_INST_0_i_2_n_0 ),
        .I5(\spo[12]_INST_0_i_3_n_0 ),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'hFEAAFEFEAAAAAAAA)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[7]),
        .I1(\spo[8]_INST_0_i_1_n_0 ),
        .I2(\spo[16]_INST_0_i_3_n_0 ),
        .I3(\spo[12]_INST_0_i_4_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200200000000)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF010101C1)) 
    \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_6_n_0 ),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDFFFF)) 
    \spo[12]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \spo[12]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[8]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAAABFE)) 
    \spo[13]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[23]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFF22272272)) 
    \spo[14]_INST_0 
       (.I0(a[5]),
        .I1(\spo[25]_INST_0_i_3_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_1_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_1_n_0 ),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h0000002022880020)) 
    \spo[14]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_2_n_0 ),
        .I1(a[2]),
        .I2(\spo[8]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_4_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFF5FCF5FFF5FF)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_1_n_0 ),
        .I2(\spo[15]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[15]_INST_0_i_3_n_0 ),
        .I5(\spo[15]_INST_0_i_4_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B1F5F5)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[5]),
        .I1(\spo[15]_INST_0_i_5_n_0 ),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800008000)) 
    \spo[15]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_2_n_0 ),
        .I1(\spo[18]_INST_0_i_1_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\spo[25]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020200)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \spo[15]_INST_0_i_4 
       (.I0(\spo[15]_INST_0_i_6_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(\spo[18]_INST_0_i_1_n_0 ),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \spo[15]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[8]),
        .I4(a[10]),
        .I5(a[9]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spo[15]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[8]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE00AE000000AE)) 
    \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .I2(\spo[16]_INST_0_i_3_n_0 ),
        .I3(\spo[16]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h0000001FFFFFFFFF)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[3]),
        .I1(a[4]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \spo[16]_INST_0_i_4 
       (.I0(\spo[16]_INST_0_i_5_n_0 ),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(\spo[17]_INST_0_i_2_n_0 ),
        .I5(a[4]),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spo[16]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[8]),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1050105033F35353)) 
    \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[17]_INST_0_i_2_n_0 ),
        .I3(\spo[17]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_4_n_0 ),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h00000000FF44FF45)) 
    \spo[17]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_2_n_0 ),
        .I1(\spo[17]_INST_0_i_5_n_0 ),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[17]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[6]),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFDD)) 
    \spo[17]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFE)) 
    \spo[17]_INST_0_i_4 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[8]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spo[17]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFAAAAABAAAAAAAA)) 
    \spo[18]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_1_n_0 ),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(\spo[18]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[18]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[4]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[0]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBBAAAAAAAA)) 
    \spo[19]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_1_n_0 ),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[19]_INST_0_i_1_n_0 ),
        .I5(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[6]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \spo[1]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[6]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00BFBFCB)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(\spo[25]_INST_0_i_2_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \spo[20]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(a[6]),
        .I3(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h000001050F0A0A0A)) 
    \spo[21]_INST_0 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[21]_INST_0_i_1_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFF1)) 
    \spo[21]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[8]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BBB8B8B8B8)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[22]_INST_0_i_2_n_0 ),
        .I3(\spo[23]_INST_0_i_1_n_0 ),
        .I4(\spo[22]_INST_0_i_3_n_0 ),
        .I5(\spo[22]_INST_0_i_4_n_0 ),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h0000444000001115)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[25]_INST_0_i_2_n_0 ),
        .I5(a[3]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002020208020202)) 
    \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_5_n_0 ),
        .I1(a[3]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(\spo[18]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00A80000)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[22]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[7]),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000051FB005500AA)) 
    \spo[23]_INST_0 
       (.I0(a[6]),
        .I1(\spo[23]_INST_0_i_1_n_0 ),
        .I2(\spo[23]_INST_0_i_2_n_0 ),
        .I3(\spo[23]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[5]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[2]),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000555500004440)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[25]_INST_0_i_2_n_0 ),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEECCCDDDDD)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[3]),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h77774444030C030C)) 
    \spo[24]_INST_0 
       (.I0(\spo[25]_INST_0_i_3_n_0 ),
        .I1(a[6]),
        .I2(\spo[24]_INST_0_i_1_n_0 ),
        .I3(a[7]),
        .I4(\spo[24]_INST_0_i_2_n_0 ),
        .I5(a[5]),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'hFFFFFFE0FF00FF00)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[5]_INST_0_i_1_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h030003FFAAAAAAAA)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[25]_INST_0_i_3_n_0 ),
        .I5(a[6]),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h0000004004040444)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(\spo[8]_INST_0_i_1_n_0 ),
        .I5(\spo[25]_INST_0_i_2_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[9]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F7FFFF)) 
    \spo[25]_INST_0_i_3 
       (.I0(a[2]),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \spo[26]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[6]),
        .I4(\spo[26]_INST_0_i_1_n_0 ),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h0088008800C800D0)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_2_n_0 ),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(\spo[29]_INST_0_i_3_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \spo[29]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spo[29]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[8]),
        .I3(a[10]),
        .I4(a[9]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \spo[2]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[6]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'hF4F4F4FBF4FDFDFF)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \spo[3]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[6]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'hFFFF111FFFFF4DDD)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[25]_INST_0_i_2_n_0 ),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBBAAAAAAAA)) 
    \spo[4]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_1_n_0 ),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'hFFBEFFFFFFFFFFFF)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEAEAEA)) 
    \spo[5]_INST_0 
       (.I0(spo[7]),
        .I1(\spo[5]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_2_n_0 ),
        .I5(\spo[25]_INST_0_i_1_n_0 ),
        .O(spo[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[8]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808028200000080)) 
    \spo[6]_INST_0 
       (.I0(\spo[19]_INST_0_i_2_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0888028200800080)) 
    \spo[8]_INST_0 
       (.I0(\spo[19]_INST_0_i_2_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[8]_INST_0_i_1_n_0 ),
        .I4(a[2]),
        .I5(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[8]),
        .I3(a[10]),
        .I4(a[9]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
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
