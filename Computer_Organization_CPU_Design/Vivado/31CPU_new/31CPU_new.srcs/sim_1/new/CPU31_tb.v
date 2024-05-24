`timescale 1ns / 1ps

module CPU31_tb;

reg clk;
reg reset;
wire [31:0] inst;
wire [10:0] pc;
wire [4:0] ALUC;
wire [5:0] Op;
wire [5:0] Func;
wire [15:0] ext16_signed_in;
wire [31:0] ext16_signed_out;
wire [31:0] ext16_zero_out;
wire [31:0] ALU_A,ALU_B,ALU_ans;

wire [31:0] array_reg_ID_0;
wire [31:0] array_reg_ID_1;
wire [31:0] array_reg_ID_2;
wire [31:0] array_reg_ID_3;
wire [31:0] array_reg_ID_4;
wire [31:0] array_reg_ID_5;
wire [31:0] array_reg_ID_6;
wire [31:0] array_reg_ID_7;
wire [31:0] array_reg_ID_8;
wire [31:0] array_reg_ID_9;
wire [31:0] array_reg_ID_10;
wire [31:0] array_reg_ID_11;
wire [31:0] array_reg_ID_12;
wire [31:0] array_reg_ID_13;
wire [31:0] array_reg_ID_14;
wire [31:0] array_reg_ID_15;
wire [31:0] array_reg_ID_16;
wire [31:0] array_reg_ID_17;
wire [31:0] array_reg_ID_18;
wire [31:0] array_reg_ID_19;
wire [31:0] array_reg_ID_20;
wire [31:0] array_reg_ID_21;
wire [31:0] array_reg_ID_22;
wire [31:0] array_reg_ID_23;
wire [31:0] array_reg_ID_24;
wire [31:0] array_reg_ID_25;
wire [31:0] array_reg_ID_26;
wire [31:0] array_reg_ID_27;
wire [31:0] array_reg_ID_28;
wire [31:0] array_reg_ID_29;
wire [31:0] array_reg_ID_30;
wire [31:0] array_reg_ID_31;

wire [4:0] RdC;
wire [4:0] RsC;
wire [4:0] RtC;
wire [31:0] MUX_8_out;


// 实例化CPU31模块
CPU31 uut (
    .clk_in(clk),
    .reset(reset),
    .inst(inst),
    .pc(pc),

    
    //TEST
    .ALU_A(ALU_A),
    .ALU_B(ALU_B),
    .ALU_ans(ALU_ans),
    .ALUC(ALUC),
    //CU Test
    .Op(Op),
    .Func(Func),
    .ext16_signed_in(ext16_signed_in),
    .ext16_signed_out(ext16_signed_out),
    .ext16_zero_out(ext16_zero_out),
    .MUX_8_out(MUX_8_out),
    //RegFile
    .RsC(RsC),
    .RtC(RtC),
    .RdC(RdC),

    //Register in RegFIle
    .reg_0(array_reg_ID_0),
    .reg_1(array_reg_ID_1),
    .reg_2(array_reg_ID_2),
    .reg_3(array_reg_ID_3),
    .reg_4(array_reg_ID_4),
    .reg_5(array_reg_ID_5),
    .reg_6(array_reg_ID_6),
    .reg_7(array_reg_ID_7),
    .reg_8(array_reg_ID_8),
    .reg_9(array_reg_ID_9),
    .reg_10(array_reg_ID_10),
    .reg_11(array_reg_ID_11),
    .reg_12(array_reg_ID_12),
    .reg_13(array_reg_ID_13),
    .reg_14(array_reg_ID_14),
    .reg_15(array_reg_ID_15),
    .reg_16(array_reg_ID_16),
    .reg_17(array_reg_ID_17),
    .reg_18(array_reg_ID_18),
    .reg_19(array_reg_ID_19),
    .reg_20(array_reg_ID_20),
    .reg_21(array_reg_ID_21),
    .reg_22(array_reg_ID_22),
    .reg_23(array_reg_ID_23),
    .reg_24(array_reg_ID_24),
    .reg_25(array_reg_ID_25),
    .reg_26(array_reg_ID_26),
    .reg_27(array_reg_ID_27),
    .reg_28(array_reg_ID_28),
    .reg_29(array_reg_ID_29),
    .reg_30(array_reg_ID_30),
    .reg_31(array_reg_ID_31)

);

// 时钟信号生成
always #5 clk = ~clk;

initial begin
    // 初始化信号
    clk = 0;
    reset = 1;
    #10;
    reset = 0;

    // 仿真运行一段时间
    #1000;
    $finish;
end

// 监视器，用于监视PC和指令
always @(posedge clk) begin
    $display("Time: %d, PC: %h, Instruction: %b, ALU_A: %b, ALU_B:%b, ALU_ans: %b, Op:%b, Func: %b", $time, pc, inst,ALU_A,ALU_B,ALU_ans,Op,Func);
    $display("Ext16_signed In:%b, Ext16_signed Out:%b, Ext16_zero_out",ext16_signed_in,ext16_signed_out,ext16_zero_out );
    $display("RsC:%b, RtC:%b, RdC:%b",RsC,RtC,RdC);
    $display("MUX_8_out: %b",MUX_8_out);
    $display("array_reg_ID_0:%b, array_reg_ID_1:%b, array_reg_ID_2:%b, array_reg_ID_3:%b",array_reg_ID_0,array_reg_ID_1,array_reg_ID_2,array_reg_ID_3);
$display("array_reg_ID_4:%b, array_reg_ID_5:%b, array_reg_ID_6:%b, array_reg_ID_7:%b",array_reg_ID_4,array_reg_ID_5,array_reg_ID_6,array_reg_ID_7);
$display("array_reg_ID_8:%b, array_reg_ID_9:%b, array_reg_ID_10:%b, array_reg_ID_11:%b",array_reg_ID_8,array_reg_ID_9,array_reg_ID_10,array_reg_ID_11);
$display("array_reg_ID_12:%b, array_reg_ID_13:%b, array_reg_ID_14:%b, array_reg_ID_15:%b",array_reg_ID_12,array_reg_ID_13,array_reg_ID_14,array_reg_ID_15);
$display("array_reg_ID_16:%b, array_reg_ID_17:%b, array_reg_ID_18:%b, array_reg_ID_19:%b",array_reg_ID_16,array_reg_ID_17,array_reg_ID_18,array_reg_ID_19);
$display("array_reg_ID_20:%b, array_reg_ID_21:%b, array_reg_ID_22:%b, array_reg_ID_23:%b",array_reg_ID_20,array_reg_ID_21,array_reg_ID_22,array_reg_ID_23);
$display("array_reg_ID_24:%b, array_reg_ID_25:%b, array_reg_ID_26:%b, array_reg_ID_27:%b",array_reg_ID_24,array_reg_ID_25,array_reg_ID_26,array_reg_ID_27);
$display("array_reg_ID_28:%b, array_reg_ID_29:%b, array_reg_ID_30:%b, array_reg_ID_31:%b",array_reg_ID_28,array_reg_ID_29,array_reg_ID_30,array_reg_ID_31);
end



endmodule
