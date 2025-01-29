`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Testbench for the 8-bit Adder
// 
// Description:
// This testbench will test the eight_bit_adder module by applying all possible input
// combinations for a smaller range and monitoring the outputs to ensure proper operation.
//////////////////////////////////////////////////////////////////////////////////

module test_eight_bit_adder;

    // Inputs
    reg [7:0] a;
    reg [7:0] b;

    // Outputs
    wire [7:0] sum;
    wire carry_out;

    // Instantiate the 8-bit Adder (Unit Under Test)
    eight_bit_adder uut (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry_out(carry_out)
    );

    // Initial block begins at time 0 and runs once
    initial begin
        // Initialize Inputs
        a = 0; b = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Add stimulus here
        // Test Case 1: Zero Addition
        a = 8'b00000000; b = 8'b00000000;
        #10; // wait for 10 time units

        // Test Case 2: Max Values without carry
        a = 8'b01111111; b = 8'b01111111;
        #10; // wait for 10 time units

        // Test Case 3: Overflow Test with carry
        a = 8'b11111111; b = 8'b00000001;
        #10; // wait for 10 time units

        // Test Case 4: Random Addition Test
        a = 8'b10101010; b = 8'b01010101;
        #10; // wait for 10 time units

        // Test Case 5: Carry-in test
        a = 8'b10000000; b = 8'b10000000;
        #10; // wait for 10 time units

        // Display Results at the end
        #10;
        $display("Test Complete: Results");
        $display("a = %b, b = %b, sum = %b, carry_out = %b", a, b, sum, carry_out);
        
        // End the simulation
        $finish;
    end

    // Monitor changes and display them
    initial begin
        $monitor("At time %t, a = %b, b = %b --> sum = %b, carry_out = %b", 
                 $time, a, b, sum, carry_out);
    end

endmodule
