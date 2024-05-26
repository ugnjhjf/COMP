`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/20 11:03:36
// Design Name: 
// Module Name: ext16_zero
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


module ext16_zero(
    input[15:0] imm16,
    output unsigned [31:0]  imm32
);

    assign imm32 = {16'b0 , imm16};
endmodule
