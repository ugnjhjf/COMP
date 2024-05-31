`timescale 1ns / 1ps

module testbench();
    reg clk = 0;  // ʱ���źţ���ʼֵΪ0
    reg reset = 1;  // ��λ�źţ���ʼΪ1��ʾ��λ״̬
    reg [31:0] a;  // ��һ�����룬32λ��
    reg [31:0] b;  // �ڶ������룬32λ��
    wire [63:0] product;  // �˷������64λ��

    // ʵ�����˷���ģ��
    MULT_32bit_signed multiplier(
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .product(product)
    );

    // ʱ�������߼���ÿ5ns��תһ�Σ�����һ������Ϊ10ns��ʱ���ź�
    //always #500 clk = !clk;

    // ��ʼ���Ͳ����߼�
    initial begin
        $display("Starting the simulation.");
        reset = 1;  // ��ʼʱ�Ƚ��и�λ
        #10 reset = 0;  // 10ns������λ

        a = 10;     // ��������aΪ10
        b = -15;    // ��������bΪ-15
        #10;        // �ȴ�һ��ʱ���ó˷��������

    end
endmodule
