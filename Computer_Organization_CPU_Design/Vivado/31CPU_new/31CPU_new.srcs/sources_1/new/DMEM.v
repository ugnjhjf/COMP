module DMEM(
    input dmem_clk,
    input dm_ena,
    input dm_write,
    input dm_read,
    input [31:0] dm_addr,
    input [31:0] dm_data_in,
    output [31:0] dm_data_out
);

reg [31:0] dmem [0:1023];

assign dm_data_out = (dm_read && dm_ena) ? dmem[dm_addr[11:2]] : 32'bz;

always @(posedge clk) begin
    if (dm_ena && dm_write) begin
        dmem[dm_addr[11:2]] <= dm_data_in;
    end
end

endmodule
