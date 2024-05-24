module CAT(
  input [3:0] A,
  input [25:0] B,
  input cat_ena,
  output [31:0] out
);

assign out = cat_ena ? {A, B, 2'h0} : 32'hz;

endmodule
