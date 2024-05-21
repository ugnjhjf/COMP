module DMEM(
    input clk,
    input ena,

    input DM_write,
    input DM_read,

    input DM_addr[31:0],
    input DM_data_in[31:0],

    output DM_data_out[31:0]
);

reg [31:0] dmem [31:0];

    assign DM_data_out = (ena && DM_read && !DM_write) ? dmem[DM_addr] : 32'bz;

endmodule