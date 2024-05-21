module DMEM(
    input clk,
    input ena,
    input dm_write,
    input dm_read,
    input [31:0] dm_addr,
    input [31:0] dm_data_in,
    output [31:0] dm_data_out
);

reg [31:0] dmem [31:0];

always @(posedge clk) begin
    if (ena && dm_write) begin
        dmem[dm_addr] <= dm_data_in;
    end
end

assign dm_data_out = (ena && dm_read && !dm_write) ? dmem[dm_addr] : 32'bz;

endmodule
