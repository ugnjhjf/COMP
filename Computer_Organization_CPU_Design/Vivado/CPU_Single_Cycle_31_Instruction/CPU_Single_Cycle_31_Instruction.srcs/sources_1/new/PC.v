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
    input  ena,              
    input  rst,              
    input  [31:0] addr_in,   
    output [31:0] addr_out   
    );

reg [31:0] pc_reg = 32'h00400000;


assign addr_out = pc_ena ? pc_reg : 32'hz;   


always @(negedge pc_clk or posedge rst_n)   
begin
    if(rst_n && pc_ena)        
        pc_reg <= 32'h00400000; 
    else if(pc_ena)            
        pc_reg <= addr_in;

end

endmodule
