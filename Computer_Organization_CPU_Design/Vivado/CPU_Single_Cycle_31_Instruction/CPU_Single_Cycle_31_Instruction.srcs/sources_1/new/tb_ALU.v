`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/22 09:12:09
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU();
// �����ź�
reg [31:0] A;
reg [31:0] B;
reg [4:0] ALUC;
// ����ź�
wire [31:0] alu_out;
wire zero;
wire sign;
wire carry;
wire overflow;

// ʵ��������ģ��
ALU uut(
 .A(A),
 .B(B),
 .ALUC(ALUC),
 .alu_out(alu_out),
 .zero(zero),
 .sign(sign),
 .carry(carry),
 .overflow(overflow)
);

initial begin
    // ��ʼ�������ź�
    A = 32'b00101;
    B = 32'b00010;
    ALUC = 5'b00000; // ADD ָ��
    #10;
    $display("ADD: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);

    // ��������ָ��
    ALUC = 5'b00010; // SUB ָ��
    #10;
    $display("SUB: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);
    
    ALUC = 5'b00100; // AND ָ��
    #10;
    $display("AND: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);
    
    ALUC = 5'b00101; // OR ָ��
    #10;
    $display("OR: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);

    ALUC = 5'b10000; // LUI ָ��
    #10;
    $display("LUI: result: %b, zero: %b, sign: %b, carry: %b, overflow: %b", alu_out, zero, sign, carry, overflow);

    // ��������
    $finish;
end

endmodule
