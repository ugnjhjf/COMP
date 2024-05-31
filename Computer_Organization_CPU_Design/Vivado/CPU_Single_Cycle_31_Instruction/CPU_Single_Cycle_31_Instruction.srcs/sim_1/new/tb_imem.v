`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/20 19:43:56
// Design Name: 
// Module Name: tb_imem
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


module tb_imem(
);
    reg [10:0] a;
    wire [31:0] spo;
    IMEM imem(
    .addr(a),
    .instr(spo)
);

initial begin
 a = 11'b0;
end

always begin
  #20 a = a + 1'b1;
  end
  
endmodule
