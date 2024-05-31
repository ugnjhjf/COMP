`timescale 1ns / 1ps
module ADD_1(
    input [31:0] A,
    input [10:0] B,
    output [31:0] out
);
assign out = A + B;
endmodule