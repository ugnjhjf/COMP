module PC(
    input clk,
    input reset,
    input [31:0] addr_in,
    output reg [31:0] addr_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        addr_out <= 32'h00400000; 
    end else begin
       addr_out <= addr_in;
    end
end

endmodule