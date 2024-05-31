`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/16 12:26:01
// Design Name: 
// Module Name: adder_32bit
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


module adder_32bit(
    input [31:0]a,
    input [31:0]b,
    output [31:0]sum,
    output cout
    );
    wire [31:0]carry;
    
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : full_adders
            if (i == 0) begin
            full_adder fa(a[i], b[i], 1'b0, sum[i], carry[i]);
            end
            else begin
            full_adder fa(a[i], b[i], carry[i-1], sum[i], carry[i]);
            end
        end
   endgenerate
   assign cout = carry[31];
endmodule
