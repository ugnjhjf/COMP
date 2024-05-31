`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/22 09:12:09
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU();
// 输入信号
reg [31:0] A;
reg [31:0] B;
reg [4:0] ALUC;
// 输出信号
wire [31:0] alu_out;
wire zero;
wire sign;
wire carry;
wire overflow;

// 实例化被测模块
ALU uut(
 .A(A),
 .B(B),
 .ALUC(ALUC),
 .alu_out(alu_out),
 .zero(zero),
 .sign(sign),
 .carry(carry),
 .overflow(overflow)
);

initial begin
    // 初始化输入信号
    A = 32'b00101;
    B = 32'b00010;
    ALUC = 5'b00000; // ADD 指令
    #10;
    $display("ADD: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);

    // 测试其他指令
    ALUC = 5'b00010; // SUB 指令
    #10;
    $display("SUB: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);
    
    ALUC = 5'b00100; // AND 指令
    #10;
    $display("AND: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);
    
    ALUC = 5'b00101; // OR 指令
    #10;
    $display("OR: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);

    ALUC = 5'b10000; // LUI 指令
    #10;
    $display("LUI: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);

    // 结束仿真
    $finish;
end

endmodule
