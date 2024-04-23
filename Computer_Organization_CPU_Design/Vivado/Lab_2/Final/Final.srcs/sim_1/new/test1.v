`timescale 1ns / 1ps

module test1;

    // Inputs
    reg clk;
    reg reset;
    reg signed [31:0] a;
    reg signed [31:0] b;

    // Outputs
    wire signed [63:0] z;

    // ʵ����������ģ��
    MULTU_signed_32bit uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .z(z)
    );

    // ʱ���ź�����
    initial begin
        clk = 0;
        forever #5 clk = !clk; // ��������Ϊ10ns��ʱ���ź�
    end

    // ��������
    initial begin
        // ��ʼ��
        reset = 1; #10;
        reset = 0; #10;

        // ��������1������������
        a = 32'd15000;
        b = 32'd20000;
        #10; // �ȴ�һ��ʱ������
        $display("Test Case 1: %d x %d = %d", a, b, z); // ������

        // ��������2������������
        a = -32'd15000;
        b = 32'd20000;
        #10;
        $display("Test Case 2: %d x %d = %d", a, b, z);

        // ��������3�������˸���
        a = 32'd15000;
        b = -32'd20000;
        #10;
        $display("Test Case 3: %d x %d = %d", a, b, z);

        // ��������4�������˸���
        a = -32'd15000;
        b = -32'd20000;
        #10;
        $display("Test Case 4: %d x %d = %d", a, b, z);

        // ��������
        $finish;
    end

endmodule