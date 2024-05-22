module NPC(
    input [31:0] npc_addr_in,
    output [31:0] npc_addr_out
);

assign npc_addr_out = npc_addr_in + 4;
endmodule