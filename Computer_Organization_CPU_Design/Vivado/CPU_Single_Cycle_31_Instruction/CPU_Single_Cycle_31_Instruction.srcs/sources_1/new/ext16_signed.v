`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/20 11:14:55
// Design Name: 
// Module Name: ext16_signed
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


module ext16_signed(
    input [15:0] imm16, // 16位立即数输入
    output [31:0] imm32 // 32位扩展结果输出
);

assign imm32 = {{16{imm16[15]}}, imm16}; // 符号扩展

endmodule
