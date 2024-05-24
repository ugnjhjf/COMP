`timescale 1ns / 1ps

module adder_32bit_signed(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum,
    output overflow
);

wire [31:0] carry; // Carry for each bit position
wire [31:0] internal_sum; // internal sum before final assignment

// Generate 32 full adders
genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin : full_adders
        if (i == 0) begin
            full_adder fa(a[i], b[i], 1'b0, internal_sum[i], carry[i]);
        end else begin
            full_adder fa(a[i], b[i], carry[i-1], internal_sum[i], carry[i]);
        end
    end
endgenerate

assign sum = internal_sum;
assign overflow = carry[31] ^ carry[30]; // Overflow if carry into MSB does not equal carry out of MSB

endmodule
