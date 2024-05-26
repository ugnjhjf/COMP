`timescale 1ns / 1ps

module CPU31_tb;

reg clk;
reg reset;
wire [31:0] inst;
wire [31:0] pc;
wire [4:0] ALUC;
wire [5:0] Op;
wire [5:0] Func;
wire [15:0] ext16_signed_in;
wire [31:0] ext16_signed_out;
wire [31:0] ext16_zero_out;
wire [31:0] ALU_A,ALU_B,ALU_ans;

wire [31:0] reg_0, reg_1, reg_2, reg_3, reg_4, reg_5, reg_6, reg_7, reg_8;
wire [31:0] reg_9, reg_10, reg_11, reg_12, reg_13, reg_14, reg_15, reg_16;
wire [31:0] reg_17, reg_18, reg_19, reg_20, reg_21, reg_22, reg_23, reg_24;
wire [31:0] reg_25, reg_26, reg_27, reg_28, reg_29, reg_30, reg_31;
wire [31:0] Rd_data_out;

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
    
    .Rd_data_out(Rd_data_out),

    //Register in RegFIle
    .reg_0(reg_0),
    .reg_1(reg_1),
    .reg_2(reg_2),
    .reg_3(reg_3),
    .reg_4(reg_4),
    .reg_5(reg_5),
    .reg_6(reg_6),
    .reg_7(reg_7),
    .reg_8(reg_8),
    .reg_9(reg_9),
    .reg_10(reg_10),
    .reg_11(reg_11),
    .reg_12(reg_12),
    .reg_13(reg_13),
    .reg_14(reg_14),
    .reg_15(reg_15),
    .reg_16(reg_16),
    .reg_17(reg_17),
    .reg_18(reg_18),
    .reg_19(reg_19),
    .reg_20(reg_20),
    .reg_21(reg_21),
    .reg_22(reg_22),
    .reg_23(reg_23),
    .reg_24(reg_24),
    .reg_25(reg_25),
    .reg_26(reg_26),
    .reg_27(reg_27),
    .reg_28(reg_28),
    .reg_29(reg_29),
    .reg_30(reg_30),
    .reg_31(reg_31)
);

// 时钟信号生成
always #5 clk = ~clk;

initial begin
    // 初始化信号
    clk = 0;
    reset = 1;
    #5;
    reset = 0;
    
    // 仿真运行更长时间
    #100000000;
    $finish;
end

// 监视器，用于监视PC和指令
always @(posedge clk) begin
    $display("Time: %d, PC: %h, Instruction: %b, ALU_A: %b, ALU_B:%b, ALU_ans: %b, Op:%b, Func: %b", $time, pc, inst, ALU_A, ALU_B, ALU_ans, Op, Func);
    $display("Ext16_signed In:%b, Ext16_signed Out:%b, Ext16_zero_out", ext16_signed_in, ext16_signed_out, ext16_zero_out );
    $display("RsC:%b, RtC:%b, RdC:%b", RsC, RtC, RdC);
    $display("MUX_8_out: %b", MUX_8_out);
    $display("reg_0:%b, reg_1:%b, reg_2:%b, reg_3:%b", reg_0, reg_1, reg_2, reg_3);
    $display("reg_4:%b, reg_5:%b, reg_6:%b, reg_7:%b", reg_4, reg_5, reg_6, reg_7);
    $display("reg_8:%b, reg_9:%b, reg_10:%b, reg_11:%b", reg_8, reg_9, reg_10, reg_11);
    $display("reg_12:%b, reg_13:%b, reg_14:%b, reg_15:%b", reg_12, reg_13, reg_14, reg_15);
    $display("reg_16:%b, reg_17:%b, reg_18:%b, reg_19:%b", reg_16, reg_17, reg_18, reg_19);
    $display("reg_20:%b, reg_21:%b, reg_22:%b, reg_23:%b", reg_20, reg_21, reg_22, reg_23);
    $display("reg_24:%b, reg_25:%b, reg_26:%b, reg_27:%b", reg_24, reg_25, reg_26, reg_27);
    $display("reg_28:%b, reg_29:%b, reg_30:%b, reg_31:%b", reg_28, reg_29, reg_30, reg_31);
    $display("Rd_data_out: %b", Rd_data_out);
end

endmodule
