`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/20 20:04:14
// Design Name: 
// Module Name: tb_ext16_zero
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


module tb_ext16_zero();
// �����ź�
reg [15:0] imm16;
// ����ź�
wire [31:0] imm32;

// ʵ��������ģ��
ext16_zero uut (
    .imm16(imm16),
    .imm32(imm32)
);

initial begin
    // ��ʼ�������ź�
    imm16 = 16'b0000000000000000;
    #10;
    $display("imm16: %b, imm32: %b", imm16, imm32);

    imm16 = 16'b0000000000000001;
    #10;
    $display("imm16: %b, imm32: %b", imm16, imm32);

    imm16 = 16'b1111111111111111;
    #10;
    $display("imm16: %b, imm32: %b", imm16, imm32);

    // ��������
    $finish;
end

endmodule