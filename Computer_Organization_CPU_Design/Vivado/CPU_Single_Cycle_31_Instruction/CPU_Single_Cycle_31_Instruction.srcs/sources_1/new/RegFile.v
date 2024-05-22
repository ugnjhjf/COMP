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

module regfile(
    input clk,               // 时钟信号
    input ena,               // 使能信号
    input rst,               // 复位信号
    input reg_w,             // 寄存器写使能
    input [4:0] RdC,         // 写寄存器编号
    input [4:0] RtC,         // 读寄存器2编号
    input [4:0] RsC,         // 读寄存器1编号
    input [31:0] Rd,         // 写数据
    output [31:0] Rs,        // 读数据1
    output [31:0] Rt         // 读数据2
);

// 寄存器堆
reg [31:0] array_reg [31:0];   

// 初始化输出数据
assign Rs = ena ? array_reg[RsC] : 32'bz;
assign Rt = ena ? array_reg[RtC] : 32'bz; 

integer i; // 在模块的开头声明变量

always @(negedge clk or posedge rst) begin
    if (rst && ena) begin
        for (i = 0; i < 32; i = i + 1) begin
            array_reg[i] <= 32'h0;
        end
    end else if (ena && reg_w && (RdC != 5'h0)) begin
        array_reg[RdC] <= Rd;
    end
end

endmodule
