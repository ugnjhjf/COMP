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

    // 实例化32位加法器，用于进行加法运算
    adder_32bit add(
        .a(multiplicand),
        .b(temp[31:0]),  // 使用temp的低32位
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
                    temp[31:0] <= sum_result;  // 将加法结果存回temp的低32位
                    temp[63:32] <= temp[63:32] + {31'b0, cout};  // 处理进位
                end
                multiplier = multiplier >> 1;  // 位移乘数
                multiplicand = multiplicand << 1;  // 位移被乘数
            end
            ans <= temp;
        end
    end
endmodule
