module DMEM(
    input clk,
    input ena,
    input dm_write,
    input dm_read,
    input [31:0] dm_addr,
    input [31:0] dm_data_in,
    output [31:0] dm_data_out
);

reg [31:0] dmem [0:1023];

assign dm_data_out = (dm_read && ena) ? dmem[dm_addr[11:2]] : 32'bz;

always @(posedge clk) begin
    if (ena && dm_write) begin
        dmem[dm_addr[11:2]] <= dm_data_in;
    end
end

endmodule
