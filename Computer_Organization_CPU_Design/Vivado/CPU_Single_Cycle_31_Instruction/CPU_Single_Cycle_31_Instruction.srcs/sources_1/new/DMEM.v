module DMEM(
    input clk,
    input ena,

    input dm_write,
    input dm_read,

    input dm_addr[31:0],
    input dm_data_in[31:0],

    output dm_data_out[31:0]
);

reg [31:0] dmem [31:0];

    assign dm_data_out = (ena && dm_read && !dm_write) ? dmem[dm_addr] : 32'bz;

endmodule