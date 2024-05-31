`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 13:11:42
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


module stimuli(    );
reg a,b; //inputs
wire y0,y1,y2; //outputs
logic_gates uut(a,b,y0,y1,y2);

initial
begin
   a = 0; b = 0;
 #10 a = 0; b = 1; //10 nanoseconds
 #10 a = 1; b = 0;
 #10 a = 1; b = 1;  
 #10 $finish;
end

endmodule
