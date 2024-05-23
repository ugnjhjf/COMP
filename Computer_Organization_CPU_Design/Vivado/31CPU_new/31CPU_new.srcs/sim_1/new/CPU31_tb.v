`timescale 1ns / 1ps

module CPU31_tb;

reg clk;
reg reset;
wire [31:0] inst;
wire [10:0] pc;
wire [4:0] ALUC;

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
    .Func(Func)
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
    #100;
    $finish;
end

// 监视器，用于监视PC和指令
always @(posedge clk) begin
    $display("Time: %d, PC: %h, Instruction: %h, ALU_A: %b, ALU_B:%b, ALU_ans: %b, Op:%b, Func: %b", $time, pc, inst,ALU_A,ALU_B,ALU_ans,Op,Func);
end



endmodule
