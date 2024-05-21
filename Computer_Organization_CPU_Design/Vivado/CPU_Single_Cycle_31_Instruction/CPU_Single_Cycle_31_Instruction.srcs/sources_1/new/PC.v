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


`timescale 1ns / 1ps
module PC(                     
    input clk,              
    input rst,              
    input [31:0] addr_in,   
    output [31:0] addr_out  
);

reg [31:0] pc_reg = 32'h00400000;

assign addr_out = pc_reg;

always @(negedge clk or posedge rst) begin
    if (rst) begin
        pc_reg <= 32'h00400000; 
    end else begin
        pc_reg <= addr_in;
    end
end

endmodule

