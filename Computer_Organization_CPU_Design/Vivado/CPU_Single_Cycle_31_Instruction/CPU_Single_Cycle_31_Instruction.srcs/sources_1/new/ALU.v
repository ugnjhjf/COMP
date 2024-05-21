`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/21 16:23:17
// Design Name: 
// Module Name: ALU
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


module ALU(

input aluOp,

input [31:0]A,
input [31:0]B,

output [31:0] alu_out,

output zero,
output sign,
output carry,
output overflow
    );
    
    parameter ADD = 4'b0000;
    
endmodule
