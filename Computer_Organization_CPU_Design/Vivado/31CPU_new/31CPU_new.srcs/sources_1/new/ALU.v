`timescale 1ns / 1ps
module ALU(
    input [4:0] ALUC,  
    input [31:0] A,
    input [31:0] B,
    // input ena,
    output [31:0] alu_out,
    output sign,
    output carry,
    output overflow,
    output zero

);
    
    parameter ADD = 5'b00000; 
    parameter ADDU = 5'b00001; 
    parameter SUB = 5'b00010; 
    parameter SUBU = 5'b00011; 

    parameter AND = 5'b00100; 
    parameter OR = 5'b00101; 
    parameter XOR = 5'b00110; 
    parameter NOR = 5'b00111; 

    parameter SLT = 5'b01000; 
    parameter SLTU = 5'b01001; 
    parameter SLL = 5'b01010; 
    parameter SRL = 5'b01011; 
    parameter SRA = 5'b01100; 

    parameter SLLV = 5'b01101; 
    parameter SRLV = 5'b01110; 
    parameter SRAV = 5'b01111; 

    parameter LUI = 5'b10000; 
    
    reg [32:0] result;


    reg overflow_flag;
    
    wire signed [31:0] signedA, signedB;
    assign signedA = A;
    assign signedB = B;


    always @(*) begin
        overflow_flag = 0;
        case(ALUC)
            ADD: begin
                result = signedA + signedB;
                // overflow_flag = (signA[31] == signB[31]) && (result[31] != signA[31]);
            end
            ADDU: result = A + B;
            SUB: begin
                result = signedA - signedB;
                // overflow_flag = (signA[31] != signB[31]) && (result[31] != signA[31]);
            end
            SUBU: result = A - B;
            
            AND: result = A & B;
            OR: result = A | B;
            XOR: result = A ^ B;
            NOR: result = ~(A | B);

            SLT: result = (signedA < signedB) ? 1 : 0;
            SLTU: result = (A < B) ? 1 : 0;

            SLL: result = A << B;
            SRL: result = A >> B;
            SRA: result = A >>> B;

            SLLV: result = A << B;
            SRLV: result = A >> B;
            SRAV: result = A >>> B;

            LUI: result = {B[15:0], 16'b0};
            default: result = 0;
        endcase
    end
    
    assign alu_out = result[31:0];
    assign zero = (alu_out == 0) ? 1 : 0;
    assign sign = alu_out[31];
    assign carry = (ALUC == ADD || ALUC == ADDU || ALUC == SUB || ALUC == SUBU) ? result[32] : 0;
    assign overflow = overflow_flag;
endmodule
