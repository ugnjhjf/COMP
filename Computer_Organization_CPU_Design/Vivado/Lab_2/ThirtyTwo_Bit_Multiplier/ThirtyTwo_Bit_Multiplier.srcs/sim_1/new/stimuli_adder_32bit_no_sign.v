`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 13:11:42
// Design Name: 
// Module Name: stimuli
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


`timescale 1ns / 1ps

module stimuli_MULTU_32bit_unsigned();
    reg clk;           // Clock signal
    reg reset;         // Reset signal
    reg [31:0] a;      // First input
    reg [31:0] b;      // Second input
    wire [63:0] ans;   // Output result from the multiplier

    // Instantiate the Unit Under Test (UUT)
    MULTU_32bit_unsigned uut(
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

    // Monitor and display results
    initial begin
        $monitor("Time=%t, clk=%b, reset=%b, a=%d, b=%d, ans=%h", 
                 $time, clk, reset, a, b, ans);
    end
endmodule

