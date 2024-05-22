module sccomp_dataflow_tb;

reg clk;
reg reset;
wire [31:0] inst;
wire [31:0] pc;

// 实例化顶层模块
sccomp_dataflow uut (
    .clk_in(clk),
    .reset(reset),
    .inst(inst),
    .pc(pc)
);

initial begin
    // 初始化信号
    clk = 0;
    reset = 1;
    #10;
    reset = 0;

    // 仿真一段时间
    #1000;
    $finish;
end

// 生成时钟信号
always #5 clk = ~clk;

endmodule
