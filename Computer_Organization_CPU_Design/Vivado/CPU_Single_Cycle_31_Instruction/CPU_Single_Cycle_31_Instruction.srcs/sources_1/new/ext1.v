`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/20 11:02:52
// Design Name: 
// Module Name: ext1
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


module ext1(
input imm1,
output[31:0] imm32
);

assign imm32 = {{31{imm1}}, imm1}; // ·ûºÅÀ©Õ¹
endmodule
