`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/21 11:34:25
// Design Name: 
// Module Name: PC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PC(
    input clk,
    input rst,
    input [31:0] addr_in,
    output reg [31:0] addr_out
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        addr_out <= 32'h00400000; // ³õÊ¼Öµ
    end else begin
        addr_out <= addr_in;
    end
end

endmodule

