`timescale 1ns / 1ps

`timescale 1ns / 1ps

module stimuli_MULTU_32bit_signed();
    reg clk = 0;
    reg reset = 1;
    reg [31:0] a;
    reg [31:0] b;
    wire [63:0] product;

    MULT_32bit_signed uut(
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .product(product)
    );

    always #5 clk = !clk;  // Clock generation

    initial begin
        #10 reset = 0; a = 32'hFFFFFFFF; b = 32'h00000002;  // Test case 1: -1 * 2
        #100 a = 32'h00000002; b = 32'hFFFFFFFF;             // Test case 2: 2 * -1
        #100 a = 32'h7FFFFFFF; b = 32'h00000001;             // Test case 3: Max positive * 1
        #100 $finish;
    end
endmodule

//module stimuli_MULTU_32bit_signed();
//    reg clk;           
//    reg reset;         
//    reg [31:0] a;      
//    reg [31:0] b;      
//    wire [63:0] product;

//    // Instantiate the Unit Under Test (UUT)
//    MULTU_32bit_signed uut(
//        .clk(clk),
//        .reset(reset),
//        .a(a),
//        .b(b),
//        .product(product)
//    );

//    // Clock generation
//    initial begin
//        clk = 0;
//        forever #5 clk = !clk;
//    end

//    // Test sequence
//    initial begin
//        reset = 1; #10;
//        reset = 0; #10;
//        a = -10; b = 70; #100;
//        $display("Result: %d", product);
//        $finish;
//    end
//endmodule
