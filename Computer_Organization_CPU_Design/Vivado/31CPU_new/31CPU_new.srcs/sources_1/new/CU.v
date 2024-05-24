`timescale 1ns / 1ps
module CU (
    input clk_in,
    input reset,
    input [5:0] opcode,  
    input [5:0] funct, 
    input immediate_flag,
    input zero,
    input overflow,

    // IMEM
    output reg im_read,      

    // DMEM
    output reg dm_read,      
    output reg dm_write,     
    output reg mem_to_reg,
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

    // ALU
    output reg [4:0] ALUC,    

    // RegFIle
    output reg reg_ena,
    output reg cat_ena
);

always @(*) begin
  
    im_read = 0;
    mem_to_reg = 0;
    reg_write = 0;
    dm_read = 0;
    dm_write = 0;
    branch = 0;
    ALUC = 5'b00000; 
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
    reg_ena = 1;
    cat_ena = 0;

    case (opcode)
        6'b000000: begin // R-type
            case (funct)
                6'b100000: begin //add
                    mem_to_reg = 0;
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
                    mem_to_reg = 0;
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
                    mem_to_reg = 0;
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
                    mem_to_reg = 0;
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
                    mem_to_reg = 0;
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
                end
                 6'b100110: begin //xor
                end
                 6'b100111: begin //nor
                end
                 6'b101010: begin //slt
                end
                6'b101011: begin //sltu
                end
                6'b000000: begin // sll
                    mem_to_reg = 0;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01010; // sll(alu)
                    MUX_8_sel = 0;
                    MUX_7_sel = 1;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end
                    6'b000010: begin // srl
                    mem_to_reg = 0;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01010; //srl(alu)
                    MUX_8_sel = 0;
                    MUX_7_sel = 1;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                end

         
       
            endcase
        end
        //I-Type
        6'b001000: begin // ADDI
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // ADD

            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end
        6'b001001: begin // ADDIU
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00001; // ADDU

            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
        end

        default: begin
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // Default ADD
            MUX_1_sel = 0;
            MUX_2_sel = 0;
            MUX_3_sel = 1;
        end
    endcase
end

endmodule
