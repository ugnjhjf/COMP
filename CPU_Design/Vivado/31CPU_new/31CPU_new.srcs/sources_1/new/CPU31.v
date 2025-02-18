`timescale 1ns / 1ps
module CPU31(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc,
    //Test Code
    output [31:0] ALU_A,
    output [31:0] ALU_B,
    output [31:0] ALU_ans,
    output [4:0] ALUC,
    output [5:0] Op,
    output [5:0] Func,
    //EXT16_signed
    output [15:0] ext16_signed_in,
    output [31:0] ext16_signed_out,MUX_8_out,

    output [31:0] ext16_zero_out,
    //RegFIle
    output [4:0] RsC,RtC,RdC,
    output [31:0] reg_0,reg_1,reg_2,reg_3,reg_4,reg_5,reg_6,reg_7,reg_8,
    output [31:0] reg_9,reg_10,reg_11,reg_12,reg_13,reg_14,reg_15,reg_16,
    output [31:0] reg_17,reg_18,reg_19,reg_20,reg_21,reg_22,reg_23,reg_24,
    output [31:0] reg_25,reg_26,reg_27,reg_28,reg_29,reg_30,
    output [31:0] reg_31,
    //Test
    output [31:0] Rd_data_out,
    output reg_ena,reg_write
    //Test
);

//Test
wire[31:0] Rd_data_out_connect;
//Test

// 实例化CU模块

wire [31:0] Rs_to_MUX_3,MUX_3_to_PC,MUX_2_to_MUX_3;

wire [31:0] npc_addr_out, pc_addr_out; // NPC连接PC 和 PC连接NPC + PC连接IMEM
wire [31:0] instruction, alu_result, imm32;

//CU->DMEM
wire CU_to_DMEM_read,CU_to_DMEM_ena,CU_to_DMEM_write;

//CU Control Line to Module
wire CU_to_reg_write,CU_to_reg_I_instru;
//CU -> MUX Control Line
wire CU_to_MUX_1,CU_to_MUX_2,CU_to_MUX_3,CU_to_MUX_4,CU_to_MUX_5,CU_to_MUX_6,CU_to_MUX_7,CU_to_MUX_8,CU_to_MUX_9,CU_to_MUX_10; //CU控制MUX
wire alu_ena;
//EXT16 -> MUX_9
wire [31:0] EXT16signed_to_MUX_9,EXT16zero_to_MUX_9;

//DMEM
wire [31:0] Rt_to_DMEM_datain,DMEM_dataout_to_MUX_4;
//CAT->MUX
wire [31:0] CAT_to_MUX_2;
//NPC->IMEM
wire [31:0] NPC_to_MUX_1,MUX_1_to_MUX_2,ADD_to_MUX_1;
//RegFile -> ALU
wire [31:0] MUX_7_to_ALU,Rs_to_MUX_7,EXT5_to_MUX_7; //Rs和MUX_7的连线
wire [31:0] MUX_8_to_ALU,Rt_to_MUX_8,MUX_9_to_MUX_8; //Rt和MUX_8的连线
wire [31:0] MUX_5_to_Rd,MUX_6_to_MUX_5,MUX_4_to_MUX_5;
wire [31:0] EXT18signed_to_ADD_1;
//ALU.in
wire [4:0] alu_control; // CU控制ALU操作（add/addu）
//ALU.flag
wire ZF_to_CU,OF_to_CU;
wire reg_ena;
//MUX Connection(Data)
wire [31:0] EXT1_to_MUX_6,MUX_10_to_EXT1,ADD_1_to_MUX_1,ADD_2_to_MUX_4;
//MUX Connection(1 Output)

wire sign_to_MUX_10,carry_to_MUX_10;
// 实例化NPC模块
NPC NPC (
    .addr_in(pc_addr_out),
    .addr_out(npc_addr_out)
);

MUX2to1 MUX_1(
    .in0(npc_addr_out),
    .in1(ADD_1_to_MUX_1),
    .sel(CU_to_MUX_1),
    .out(MUX_1_to_MUX_2)
);

MUX2to1 MUX_2(
    .in0(MUX_1_to_MUX_2),
    .in1(instruction),
    .sel(CU_to_MUX_2),
    .out(MUX_2_to_MUX_3)
);

MUX2to1 MUX_3(
    .in0(Rs_to_MUX_7),
    .in1(MUX_2_to_MUX_3),
    .sel(CU_to_MUX_3),
    .out(MUX_3_to_PC)
);

// 实例化PC模块
PC pc_reg (
    .clk(clk_in),
    .reset(reset),
    .addr_in(MUX_3_to_PC),
    .addr_out(pc_addr_out)
);

// 实例化IMEM模块
IMEM imem (
    .addr(pc_addr_out[10:0]),
    .instr(instruction[31:0])
);
// 实例化寄存器文件模块
regfile regfile (
    .clk_in(clk_in),
    .ena(reg_ena),
    .reset(reset),
    .reg_write(CU_to_reg_write), // 假设始终写入寄存器

    .I_instru(CU_to_reg_I_instru),

    .RdC(instruction[15:11]), // 目标寄存器
    .RtC(instruction[20:16]), // 第二个源寄存器
    .RsC(instruction[25:21]), // 第一个源寄存器
    
    //Test
    .Rd_data_out(Rd_data_out_connect),
    //Test
    .Rd_data_in(MUX_5_to_Rd), // 写入数据
    .Rs_data_out(Rs_to_MUX_7), // 读取数据1
    .Rt_data_out(Rt_to_MUX_8), // 读取数据2
    
    .reg_0(reg_0), .reg_1(reg_1), .reg_2(reg_2), .reg_3(reg_3),
    .reg_4(reg_4), .reg_5(reg_5), .reg_6(reg_6), .reg_7(reg_7),
    .reg_8(reg_8), .reg_9(reg_9), .reg_10(reg_10), .reg_11(reg_11),
    .reg_12(reg_12), .reg_13(reg_13), .reg_14(reg_14), .reg_15(reg_15),
    .reg_16(reg_16), .reg_17(reg_17), .reg_18(reg_18), .reg_19(reg_19),
    .reg_20(reg_20), .reg_21(reg_21), .reg_22(reg_22), .reg_23(reg_23),
    .reg_24(reg_24), .reg_25(reg_25), .reg_26(reg_26), .reg_27(reg_27),
    .reg_28(reg_28), .reg_29(reg_29), .reg_30(reg_30), .reg_31(reg_31)
);

// 实例化ALU模块
ALU alu (
    .ALUC(alu_control),

    .A(MUX_7_to_ALU),
    .B(MUX_8_to_ALU),
    .alu_out(alu_result),
    .sign(sign_to_MUX_10),
    .carry(carry_to_MUX_10),
    .zero(ZF_to_CU),
    .overflow(OF_to_CU)
);

// 实例化CU模块
CU control (

    .reset(reset),
    .opcode(instruction[31:26]),
    .funct(instruction[5:0]),
    .ALUC(alu_control),
    // .alu_ena(alu_ena),
    .reg_ena(reg_ena),

    //DMEM
    .dm_ena(CU_to_DMEM_ena),
    .dm_write(CU_to_DMEM_write),
    .dm_read(CU_to_DMEM_read),

    
    //MUX

    .reg_write(CU_to_reg_write),
    .I_instru(CU_to_reg_I_instru),

    .MUX_1_sel(CU_to_MUX_1),
    .MUX_2_sel(CU_to_MUX_2),
    .MUX_3_sel(CU_to_MUX_3),
    .MUX_4_sel(CU_to_MUX_4),
    .MUX_5_sel(CU_to_MUX_5),
    .MUX_6_sel(CU_to_MUX_6),
    .MUX_7_sel(CU_to_MUX_7),
    .MUX_8_sel(CU_to_MUX_8),
    .MUX_9_sel(CU_to_MUX_9),
    .MUX_10_sel(CU_to_MUX_10)
);

DMEM DMEM(
    .dmem_clk(clk_in),
    .dm_ena(CU_to_DMEM_ena),
    .dm_write(CU_to_DMEM_write),
    .dm_read(CU_to_DMEM_read),
    .dm_addr(alu_result),
    .dm_data_in(Rt_to_DMEM_datain),
    
    .dm_data_out()
);

//MUX
MUX2to1 MUX_4(
.in0(DMEM_dataout_to_MUX_4),
.in1(ADD_2_to_MUX_4),
.sel(CU_to_MUX_4),
.out(MUX_4_to_MUX_5)
);

MUX2to1 MUX_5(
    .in0(MUX_6_to_MUX_5),
    .in1(MUX_4_to_MUX_5),
    .sel(CU_to_MUX_5),
    .out(MUX_5_to_Rd)
);
MUX2to1 MUX_6(
    .in0(EXT1_to_MUX_6),
    .in1(alu_result),
    .sel(CU_to_MUX_6),
    .out(MUX_6_to_MUX_5)
);
MUX2to1 MUX_7(
    .in0(Rs_to_MUX_7),
    .in1(EXT5_to_MUX_7),
    .sel(CU_to_MUX_7),
    .out(MUX_7_to_ALU)
);
MUX2to1 MUX_8(
    .in0(Rt_to_MUX_8),
    .in1(MUX_9_to_MUX_8),
    .sel(CU_to_MUX_8),
    .out(MUX_8_to_ALU)
);

MUX2to1 MUX_9(
    .in0(EXT16signed_to_MUX_9),
    .in1(EXT16zero_to_MUX_9),
    .sel(CU_to_MUX_9),
    .out(MUX_9_to_MUX_8)
);

MUX2to1 MUX_10(
    .in0(sign_to_MUX_10),
    .in1(carry_to_MUX_10),
    .sel(CU_to_MUX_10),
    .out(MUX_10_to_EXT1)
);

//EXTs
ext1 ext1(
    .in(MUX_10_to_EXT1),
    .out(EXT1_to_MUX_6)
);

ext16_signed ext16_signed(
    .imm16(instruction[15:0]),
    .imm32(EXT16signed_to_MUX_9)
);

ext16_zero ext16_zero(
    .imm16(instruction[15:0]),
    .imm32(EXT16zero_to_MUX_9)
);

ext5 ext5(
    .in(instruction[10:6]),
    .out(EXT5_to_MUX_7)
);

ext18_signed ext18_signed(
    .in(instruction[15:0]),
    .out(EXT18signed_to_ADD_1)
);

ADD_1 ADD_1(
    .A(EXT18signed_to_ADD_1),
    .B(npc_addr_out),
    .out(ADD_1_to_MUX_1)
);

ADD_2 ADD_2( //Jump
    .B(pc_addr_out),
    .out(ADD_2_to_MUX_4)
);



CAT CAT(
    .A(pc_addr_out[31:28]),
    .B(instruction[25:0]), //偏移在CAT内完成
    .cat_ena(),
    .out(CAT_to_MUX_2)
);

assign inst = instruction;
assign pc = pc_addr_out;

//TEST
assign ALU_A = MUX_7_to_ALU;
assign ALU_B = MUX_8_to_ALU;
assign ALU_ans = MUX_5_to_Rd;
assign ALUC = alu_control;
//CU Test
assign Op = instruction[31:26];
assign Func = instruction[5:0];
//EXT16 Signed test
assign  ext16_signed_in = instruction[15:0];
assign ext16_signed_out = EXT16signed_to_MUX_9;
//EXT16 Zero test
assign ext16_zero_out = EXT16zero_to_MUX_9;
assign MUX_8_out = MUX_8_to_ALU;




assign  RdC = instruction[15:11]; // 目标寄存器
assign  RtC = instruction[20:16]; // 第二个源寄存器
assign  RsC = instruction[25:21]; // 第一个源寄存器

//Test
assign Rd_data_out = Rd_data_out_connect;
assign reg_ena = CU_to_reg_write;
assign reg_write = CU_to_reg_write;

//Test
endmodule
