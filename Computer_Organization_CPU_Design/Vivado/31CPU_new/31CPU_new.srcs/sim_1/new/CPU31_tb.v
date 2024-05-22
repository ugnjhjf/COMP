`timescale 1ns / 1ps

module CPU31_tb;

reg clk;
reg reset;
wire [31:0] inst;
wire [31:0] pc;

// ʵ����CPU31ģ��
CPU31 uut (
    .clk_in(clk),
    .reset(reset),
    .inst(inst),
    .pc(pc)
);

// ʱ���ź�����
always #5 clk = ~clk;

initial begin
    // ��ʼ���ź�
    clk = 0;
    reset = 1;
    #10;
    reset = 0;

    // ��������һ��ʱ��
    #100;
    $finish;
end

// �����������ڼ���PC��ָ��
always @(posedge clk) begin
    $display("Time: %d, PC: %h, Instruction: %h", $time, pc, inst);
end

endmodule
