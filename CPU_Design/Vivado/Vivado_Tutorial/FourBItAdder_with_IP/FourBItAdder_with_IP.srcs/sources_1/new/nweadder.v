`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/16 10:12:51
// Design Name: 
// Module Name: newadder
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


module newadder(
    input [3:0] a,b,
    input ck,
    output [3:0] Sum,
    output Cout
    );
    adderrr Add_4bit (
      .A(a),          // input wire [3 : 0] A
      .B(b),          // input wire [3 : 0] B
      .CLK(ck),      // input wire CLK
      .C_OUT(Cout),  // output wire C_OUT
      .S(Sum)          // output wire [3 : 0] S
    );
endmodule
