`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/16 10:19:35
// Design Name: 
// Module Name: stimuli
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


module stimuli( );

reg [3:0] a,b;
reg ck;

wire Cout;
wire [3:0] Sum;

newadder dut(a,b,ck,Sum,Cout);

always
begin
      #10 ck = 0;
      #10 ck = 1;
end

initial
begin
    a = 3; b = 6;
    #10 a = 4;b = 6;
    #10 a = 2;b = 5;
    #10 a = 9;b = 4;
    
end

endmodule
