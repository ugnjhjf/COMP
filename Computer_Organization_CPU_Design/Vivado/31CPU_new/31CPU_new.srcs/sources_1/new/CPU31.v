module CPU31(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [10:0] pc,
    //Test Code
    output [31:0] ALU_A,
    output [31:0] ALU_B,
    output [31:0] ALU_ans,
    output [4:0] ALUC,
    output [5:0] Op,
    output [5:0] Func,
    //EXT16_signed
    output [15:0] ext16_signed_in,
    output [31:0] ext16_signed_out,

    output [31:0] ext16_zero_out,
    //RegFIle
    output [4:0] RsC,RtC,RdC,
    output [31:0] array_reg_ID_0,array_reg_ID_1,
    output [31:0] array_reg_ID_2,array_reg_ID_3,
    output [31:0] array_reg_ID_4,array_reg_ID_5,
    output [31:0] array_reg_ID_6,array_reg_ID_7,
    output [31:0] array_reg_ID_8,array_reg_ID_9,
    output [31:0] array_reg_ID_10,array_reg_ID_11,
    output [31:0] array_reg_ID_12,array_reg_ID_13,
    output [31:0] array_reg_ID_14,array_reg_ID_15,
    output [31:0] array_reg_ID_16,array_reg_ID_17,
    output [31:0] array_reg_ID_18,array_reg_ID_19,
    output [31:0] array_reg_ID_20,array_reg_ID_21,
    output [31:0] array_reg_ID_22,array_reg_ID_23,
    output [31:0] array_reg_ID_24,array_reg_ID_25,
    output [31:0] array_reg_ID_26,array_reg_ID_27,
    output [31:0] array_reg_ID_28,array_reg_ID_29,
    output [31:0] array_reg_ID_30,array_reg_ID_31

);

wire [31:0] npc_addr_out, pc_addr_out; // NPC连接PC 和 PC连接NPC + PC连接IMEM
wire [31:0] instruction, alu_result, imm32;

//CU Control Line to Module


//CU -> MUX
wire CU_to_MUX_1,CU_to_MUX_2,CU_to_MUX_3,CU_to_MUX_4,CU_to_MUX_5,CU_to_MUX_6,CU_to_MUX_7,CU_to_MUX_8,CU_to_MUX_9,CU_to_MUX_10; //CU控制MUX

//EXT16 -> MUX_9
wire [31:0] EXT16signed_to_MUX_9,EXT16zero_to_MUX_9;

//RegFile -> ALU
wire [31:0] MUX_7_to_ALU,Rs_to_MUX_7,EXT5_to_MUX_7; //Rs和MUX_7的连线
wire [31:0] MUX_8_to_ALU,Rt_to_MUX_8,MUX_9_to_MUX_8; //Rt和MUX_8的连线
wire [31:0] MUX_5_to_Rd,MUX_6_to_MUX_5,MUX_4_to_MUX_5;
//ALU.in
wire [4:0] alu_control; // CU控制ALU操作（add/addu）
//ALU.flag
wire ZF_to_CU,OF_to_CU;

//MUX Connection(Data)
wire [31:0] EXT1_to_MUX_6,MUX_10_to_EXT1;
//MUX Connection(1 Output)

wire sign_to_MUX_10,carry_to_MUX_10;
// 实例化NPC模块
NPC NPC (
    .addr_in(pc_addr_out),
    .addr_out(npc_addr_out)
);

// 实例化PC模块
PC pc_reg (
    .clk(clk_in),
    .reset(reset),
    .addr_in(npc_addr_out),
    .addr_out(pc_addr_out)
);

// 实例化IMEM模块
IMEM imem (
    .addr(pc_addr_out[10:0]),
    .instr(instruction)
);

// 实例化CU模块
CU control (
    .clk_in(clk_in),
    .reset(reset),
    .opcode(instruction[31:26]),
    .funct(instruction[5:0]),
    .ALUC(alu_control),


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

// 实例化寄存器文件模块
regfile regfile (
    .clk_in(clk_in),
    .ena(1'b1),
    .reset(reset),
    .reg_w(1'b1), // 假设始终写入寄存器
    .RdC(instruction[15:11]), // 目标寄存器
    .RtC(instruction[20:16]), // 第二个源寄存器
    .RsC(instruction[25:21]), // 第一个源寄存器
    .Rd_data_in(MUX_5_to_Rd), // 写入数据
    .Rs_data_out(Rs_to_MUX_7), // 读取数据1
    .Rt_data_out(Rt_to_MUX_8) // 读取数据2
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


//MUX


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


endmodule
