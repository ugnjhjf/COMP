`timescale 1ns / 1ps

module CPU31_tb;

reg clk;
reg reset;
wire [31:0] inst;
wire [31:0] pc;

// 实例化CPU31模块
CPU31 uut (
    .clk_in(clk),
    .reset(reset),
    .inst(inst),
    .pc(pc)
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
    $display("Time: %d, PC: %h, Instruction: %h", $time, pc, inst);
end

endmodule
