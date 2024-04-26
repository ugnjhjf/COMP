`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 11:16:48
// Design Name: 
// Module Name: testbench_MULTU_unsigned_32bit
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


module testbench_MULTU_unsigned_32bit();

    reg clk;           // Clock signal
    reg reset;         // Reset signal
    reg [31:0] a;      // First input
    reg [31:0] b;      // Second input
    wire [63:0] ans;   // Output result from the multiplier

    // Instantiate the Unit Under Test (UUT)
    MULTU_unsigned_32bit uut(
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .ans(ans)
    );

    // Clock generation (10ns clock period)
    initial begin
        clk = 0;
        forever #5 clk = !clk;  // Toggle clock every 5 ns
    end

    // Test sequence
    initial begin
        reset = 1;  // Assert reset
        a = 0; b = 0;  // Initialize inputs
        #10 reset = 0;  // Deassert reset after 10 ns

        #10 a = 150; b = 17;  // Change inputs to 15 and 10
        #500 


        $finish;  // End simulation
    end


endmodule

