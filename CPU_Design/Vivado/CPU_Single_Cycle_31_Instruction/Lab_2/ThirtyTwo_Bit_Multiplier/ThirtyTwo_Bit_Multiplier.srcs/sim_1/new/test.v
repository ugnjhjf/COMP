`timescale 1ns / 1ps

module testbench();
    reg clk = 0;  // 时钟信号，初始值为0
    reg reset = 1;  // 复位信号，初始为1表示复位状态
    reg [31:0] a;  // 第一个输入，32位宽
    reg [31:0] b;  // 第二个输入，32位宽
    wire [63:0] product;  // 乘法结果，64位宽

    // 实例化乘法器模块
    MULT_32bit_signed multiplier(
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .product(product)
    );

    // 时钟生成逻辑，每5ns翻转一次，产生一个周期为10ns的时钟信号
    //always #500 clk = !clk;

    // 初始化和测试逻辑
    initial begin
        $display("Starting the simulation.");
        reset = 1;  // 开始时先进行复位
        #10 reset = 0;  // 10ns后解除复位

        a = 10;     // 设置输入a为10
        b = -15;    // 设置输入b为-15
        #10;        // 等待一段时间让乘法操作完成

    end
endmodule
