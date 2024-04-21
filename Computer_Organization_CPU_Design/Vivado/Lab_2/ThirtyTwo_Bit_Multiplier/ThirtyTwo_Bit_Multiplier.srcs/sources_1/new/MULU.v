`timescale 1ns / 1ps

module MULTU_32bit_unsigned(
    input clk,
    input reset,
    input [31:0] a,
    input [31:0] b,
    output reg [63:0] ans
);
    reg [31:0] multiplicand;
    reg [31:0] multiplier;
    reg [63:0] temp;
    wire [31:0] sum_result;
    wire cout;
    integer j;

    // ʵ����32λ�ӷ��������ڽ��мӷ�����
    adder_32bit add(
        .a(multiplicand),
        .b(temp[31:0]),  // ʹ��temp�ĵ�32λ
        .sum(sum_result),
        .cout(cout)
    );

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            multiplicand <= 0;
            multiplier <= 0;
            temp <= 0;
            ans <= 0;
        end else begin
            multiplicand <= a;
            multiplier <= b;
            temp <= 0;
            for (j = 0; j < 32; j = j + 1) begin
                if (multiplier[0] == 1) begin
                    temp[31:0] <= sum_result;  // ���ӷ�������temp�ĵ�32λ
                    temp[63:32] <= temp[63:32] + {31'b0, cout};  // �����λ
                end
                multiplier = multiplier >> 1;  // λ�Ƴ���
                multiplicand = multiplicand << 1;  // λ�Ʊ�����
            end
            ans <= temp;
        end
    end
endmodule
