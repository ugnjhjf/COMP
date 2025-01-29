module half_adder(
    input a,
    input b,
    output sum,
    output cout
);

assign sum = a ^ b;
assign carry = a & b;

endmodule