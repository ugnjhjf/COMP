
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 11:13:19
// Design Name: 
// Module Name: MULTU_32bit_signed
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module testbench_MULTU_signed_32bit;

    // Inputs
    reg clk;
    reg reset;
    reg signed [31:0] a;
    reg signed [31:0] b;

    // Outputs
    wire signed [63:0] z;

    // 实例化被测试模块
    MULTU_signed_32bit uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .z(z)
    );

    // 时钟信号生成
    initial begin
        clk = 0;
        forever #5 clk = !clk; // 生成周期为10ns的时钟信号
    end

    // 测试用例
    initial begin
        // 初始化
        reset = 1; #10;
        reset = 0; #10;

        // 测试用例1：正数乘正数
        a = 32'd15000;
        b = 32'd20000;
        #10; // 等待一个时钟周期
        $display("Test Case 1: %d x %d = %d", a, b, z); // 输出结果

        // 测试用例2：负数乘正数
        a = -32'd15000;
        b = 32'd20000;
        #10;
        $display("Test Case 2: %d x %d = %d", a, b, z);

        // 测试用例3：正数乘负数
        a = 32'd15000;
        b = -32'd20000;
        #10;
        $display("Test Case 3: %d x %d = %d", a, b, z);

        // 测试用例4：负数乘负数
        a = -32'd15000;
        b = -32'd20000;
        #10;
        $display("Test Case 4: %d x %d = %d", a, b, z);

        // 结束测试
        $finish;
    end

endmodule
