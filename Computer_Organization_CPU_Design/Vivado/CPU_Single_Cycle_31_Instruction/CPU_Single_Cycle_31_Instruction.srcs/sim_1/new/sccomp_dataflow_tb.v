`timescale 1ns / 1ps

module sccomp_dataflow_tb;

reg clk;
reg reset;
wire [31:0] inst;
wire [31:0] pc;

// ʵ��������ģ��
sccomp_dataflow uut (
    .clk_in(clk),
    .reset(reset),
    .inst(inst),
    .pc(pc)
);

initial begin
    // ��ʼ���ź�
    clk = 0;
    reset = 1;
    #10;
    reset = 0;

    // ����һ��ʱ��
    #1000;
    $finish;
end

// ����ʱ���ź�
always #5 clk = ~clk;

// ����ָ��ִ�����
always @(posedge clk) begin
    $display("Time: %d, PC: %h, Instruction: %h", $time, pc, inst);
end

endmodule
