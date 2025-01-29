`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 14:20:41
// Design Name: 
// Module Name: 8bit_adder
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

module Eightbit_adder(
    input a0,a1,a2,a3,a4,a5,a6,a7,
    input b0,b1,b2,b3,b4,b5,b6,b7,
    output s0,s1,s2,s3,s4,s5,s6,s7,
    output carry
    );
    
wire w1,w2,w3,w4,w5,w6,w7;
half_adder HA1(a0, b0, s0, w1);
full_adder FA1(a1, b1, w1, s1, w2);
full_adder FA2(a2, b2, w2, s2, w3);
full_adder FA3(a3, b3, w3, s3, w4);
full_adder FA4(a4, b4, w4, s4, w5);
full_adder FA5(a5, b5, w5, s5, w6);
full_adder FA6(a6, b6, w6, s6, w7);
full_adder FA7(a7, b7, w7, s7, carry);

endmodule
