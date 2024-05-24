module PC(
    input clk,
    input reset,
    input [31:0] addr_in,
    output [31:0] addr_out
);

reg [31:0] pc_reg = 32'h00400000;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        pc_reg <= 32'h00400000; 
    end else begin
        pc_reg <= addr_in;
    end
end

assign addr_out = pc_reg;
endmodule