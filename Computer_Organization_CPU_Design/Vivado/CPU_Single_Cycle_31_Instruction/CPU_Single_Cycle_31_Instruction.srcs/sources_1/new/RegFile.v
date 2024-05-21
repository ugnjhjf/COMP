`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/21 21:42:38
// Design Name: 
// Module Name: RegFile
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
module regfile(                 
    input clk,              
    input ena,              
    input rst,              
    input reg_w,    
    input [4:0] RdC,           
    input [4:0] RtC,          
    input [4:0] RsC,   
    input [31:0] Rd,  
    output [31:0] Rs, 
    output [31:0] Rt
);

reg [31:0] array_reg [31:0];   

assign Rs = ena ? array_reg[RsC] : 32'bz;
assign Rt = ena ? array_reg[RtC] : 32'bz; 

always @(negedge clk or posedge rst) begin
    if (rst && ena) begin
        integer i;
        for (i = 0; i < 32; i = i + 1) begin
            array_reg[i] <= 32'h0;
        end
    end else if (ena && reg_w && (RdC != 5'h0)) begin
        array_reg[RdC] <= Rd;
    end
end

endmodule
