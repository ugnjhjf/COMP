`timescale 1ns / 1ps

module signed_booth_multiplier_tb;

// Inputs
reg signed [31:0] multiplicand;
reg signed [31:0] multiplier;

// Outputs
wire signed [63:0] product;

// Instantiate the Unit Under Test (UUT)
signed_booth_multiplier uut (
    .multiplicand(multiplicand), 
    .multiplier(multiplier), 
    .product(product)
);

initial begin
    // Initialize Inputs
    multiplicand = 0;
    multiplier = 0;

    // Wait 100 ns for global reset to finish
    #100;
    
    // Add stimulus here
    // Test case 1: Positive x Positive
    multiplicand = 32'd15;  // 15
    multiplier = 32'd10;    // 10
    #10;  // Wait for the multiplication to complete
    $display("Test 1: 15 x 10 = %d, Expected: 150", product);

    // Test case 2: Positive x Negative
    multiplicand = 32'd20;  // 20
    multiplier = -32'd3;    // -3
    #10;
    $display("Test 2: 20 x -3 = %d, Expected: -60", product);

    // Test case 3: Negative x Negative
    multiplicand = -32'd25; // -25
    multiplier = -32'd4;    // -4
    #10;
    $display("Test 3: -25 x -4 = %d, Expected: 100", product);

    // Test case 4: Negative x Positive
    multiplicand = -32'd7;  // -7
    multiplier = 32'd8;     // 8
    #10;
    $display("Test 4: -7 x 8 = %d, Expected: -56", product);
    
    // End the simulation
    $finish;
end

endmodule
