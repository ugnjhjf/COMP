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
    input clk,               // ʱ���ź�
    input ena,               // ʹ���ź�
    input rst,               // ��λ�ź�
    input reg_w,             // �Ĵ���дʹ��
    input [4:0] RdC,         // д�Ĵ������
    input [4:0] RtC,         // ���Ĵ���2���
    input [4:0] RsC,         // ���Ĵ���1���
    input [31:0] Rd,         // д����
    output [31:0] Rs,        // ������1
    output [31:0] Rt         // ������2
);

// �Ĵ�����
reg [31:0] array_reg [31:0];   

// ��ʼ���������
assign Rs = ena ? array_reg[RsC] : 32'bz;
assign Rt = ena ? array_reg[RtC] : 32'bz; 

integer i; // ��ģ��Ŀ�ͷ��������

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
