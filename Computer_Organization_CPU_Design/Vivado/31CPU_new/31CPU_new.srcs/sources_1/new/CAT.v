module CAT(
  input [3:0] A,
  input [25:0] B,
  input cat_ena,
  output [31:0] cat_out
);

assign cat_out = cat_ena ? {pc_out[31:28], address[25:0], 2'h0} : 32'hz;

endmodule
