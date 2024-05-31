`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/16 10:58:09
// Design Name: 
// Module Name: multiplier_32_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Use the simple addition method to multiply two numbers
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// This module multiplies two 32-bit numbers using the addition and shift method.
//////////////////////////////////////////////////////////////////////////////////

module multiplier_32_bit(
    input [31:0]a,
    input [31:0]b,
    output reg [64:0]ans  // Output should be a reg as it is assigned inside an always block
);
   reg [64:0] multiplicand;
   reg [31:0] multiplier;
   reg next_op;  // Store the current bit to process from the multiplier
   
   integer i;
always @(a or b) begin
    multiplicand = {33'b0, a};  // Initialize multiplicand with 'a' and pad higher bits with 0
    multiplier = b;             // Initialize multiplier with 'b'
    ans = 0;                    // Reset the answer each time there is a change in inputs
    
    for (i = 0; i < 32; i = i + 1) begin
        next_op = multiplier[0];  // Check the LSB of the multiplier to decide the operation
        if (next_op == 1) begin
            ans = ans + multiplicand;  // Add the current multiplicand to the answer if LSB is 1
        end
        multiplicand = multiplicand << 1;  // Logical left shift the multiplicand
        multiplier = multiplier >> 1;      // Logical right shift the multiplier
    end
end

endmodule
