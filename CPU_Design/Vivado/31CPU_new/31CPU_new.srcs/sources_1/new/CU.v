`timescale 1ns / 1ps
module CU (
    input reset,
    input [5:0] opcode,  
    input [5:0] funct, 
    input zero,
    input overflow,

    // IMEM
    output reg im_read,      

    // DMEM
    output reg dm_read,      
    output reg dm_write,     
    output reg dm_ena,
    output reg reg_write,
    output reg branch,

    // MUX select
    output reg MUX_1_sel,
    output reg MUX_2_sel,
    output reg MUX_3_sel,
    output reg MUX_4_sel,
    output reg MUX_5_sel,
    output reg MUX_6_sel,
    output reg MUX_7_sel,
    output reg MUX_8_sel,
    output reg MUX_9_sel,
    output reg MUX_10_sel,

    output reg reg_ena,

    // ALU
    output reg [4:0] ALUC,    
    output reg alu_ena,

    // RegFIle
    output reg cat_ena,
    output reg I_instru
);

always @(*) begin
    alu_ena = 0;
    reg_ena = 0;
    im_read = 0;
    reg_write = 0;
    dm_read = 0;
    dm_write = 0;
    dm_ena = 0;
    branch = 0;
    ALUC = 5'b11111; 

    MUX_1_sel = 0;
    MUX_2_sel = 0;
    MUX_3_sel = 1;
    MUX_4_sel = 0;
    MUX_5_sel = 0;
    MUX_6_sel = 0;
    MUX_7_sel = 0;
    MUX_8_sel = 0;
    MUX_9_sel = 0;
    MUX_10_sel = 0;
    reg_ena = 0;
    reg_write = 0;
    I_instru = 0;

    case (opcode)
        6'b000000: begin // R-type
            case (funct)
                6'b100000: begin //add
                    reg_ena = 1;
                    alu_ena = 1;
                    I_instru = 0;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00000;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b100001: begin //addu
                    reg_ena = 1;
                    alu_ena = 1;
                    I_instru = 0;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00001;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b100010: begin //sub
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00010;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b100011: begin //subu
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00011;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b100100: begin //and
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00100;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b100101: begin //or
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00101;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b100110: begin //xor
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00110;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b100111: begin //nor
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00111;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b101010: begin //slt
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01000;
                    MUX_10_sel = 1;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b101011: begin //sltu
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01001;
                    MUX_10_sel = 1;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    MUX_1_sel = 0;
                    MUX_2_sel = 0;
                    MUX_3_sel = 1;
                end
                6'b000000: begin // sll
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01010;
                    MUX_8_sel = 0;
                    MUX_7_sel = 1;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end
                6'b000010: begin // srl
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01011;
                    MUX_8_sel = 0;
                    MUX_7_sel = 1;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end
                6'b000011: begin // sra
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01100;
                    MUX_8_sel = 0;
                    MUX_7_sel = 1;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end
                6'b000100: begin // sllv 
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01101;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end
                6'b000110: begin // srlv 
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01110;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end
                6'b000111: begin // srav 
                    reg_ena = 1;
                    alu_ena = 1;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01111;
                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end 
                6'b001000: begin // jr 
                    reg_ena = 1;
                    alu_ena = 0;
                    reg_write = 0;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'bzzzzz;
                    MUX_3_sel = 0;
                end 
            endcase
        end
        //I-Type
        6'b001000: begin // ADDI
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 1;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000;
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end
        6'b001001: begin // ADDIU
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 1;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00001;
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end
        6'b001100: begin // ANDI
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 1;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00100;
            MUX_9_sel = 1;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end
        6'b001101: begin // ORI
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 1;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00101;
            MUX_9_sel = 1;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end
        6'b001110: begin // XORI
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 1;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00110;
            MUX_9_sel = 1;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end
        6'b100011: begin // LW
            reg_ena = 1;
            alu_ena = 1;
            dm_read = 1;
            dm_ena = 1;
            dm_write = 0;
            I_instru = 1;
            reg_write = 1;
            branch = 0;
            ALUC = 5'b00000;
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 1;
            MUX_4_sel = 0;
        end
        6'b101011: begin // SW
            reg_ena = 1;
            alu_ena = 1;
            dm_read = 0;
            dm_ena = 1;
            dm_write = 1;
            I_instru = 1;
            reg_write = 0;
            branch = 0;
            ALUC = 5'b00000;
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
        end
        6'b000100: begin // BEQ
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 0;
            reg_write = 0;
            branch = (zero == 1) ? 1 : 0;
            ALUC = 5'b00011;
            MUX_1_sel = 0;
            MUX_8_sel = 0;
            MUX_7_sel = 0;
        end
        6'b000101: begin // BNE
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 0;
            reg_write = 0;
            branch = (zero == 0) ? 1 : 0;
            ALUC = 5'b00011;
            MUX_1_sel = 1;
            MUX_8_sel = 0;
            MUX_7_sel = 0;
        end
        6'b001010: begin // SLTI
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 1;
            reg_write = 1;
            branch = 0;
            ALUC = 5'b01000;
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_10_sel = 0;
            MUX_6_sel = 0;
            MUX_5_sel = 0;
        end
        6'b001011: begin // SLTIU
            reg_ena = 1;
            alu_ena = 1;
            I_instru = 1;
            reg_write = 1;
            branch = 0;
            ALUC = 5'b01001;
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_10_sel = 0;
            MUX_6_sel = 0;
            MUX_5_sel = 0;
        end
        6'b001111: begin // LUI
            alu_ena = 1;
            reg_ena = 1;
            I_instru = 1;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b10000;
            MUX_9_sel = 1;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end
        6'b000010: begin // J
            cat_ena = 1;
            MUX_2_sel = 1;
            ALUC = 5'bzzzzz;
        end
        6'b000011: begin // JAL
            cat_ena = 1;
            ALUC = 5'bzzzzz;
            MUX_4_sel = 1;
            MUX_2_sel = 1;
        end
    endcase
end

endmodule
