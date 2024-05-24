module CU (
    input clk_in,
    input reset,
    input [5:0] opcode,  // 类型码
    input [5:0] funct,   // 操作码
    input zero,
    input overflow,

//IMEM
    output reg im_read,      // IMEM读取


//DMEM
    output reg dm_read,      // DMEM读信号
    output reg dm_write,     // DMEM写信号
    output reg  reg_dst,
     output reg  alu_src,
     output reg  mem_to_reg,
    output reg   reg_write,
    output reg   branch,
    //MUX select
    output reg MUX_1_sel,MUX_2_sel,MUX_3_sel,MUX_4_sel,MUX_5_sel,MUX_6_sel,MUX_7_sel,MUX_8_sel,MUX_9_sel,MUX_10_sel,

//ALU
    output reg [4:0] ALUC,    // ALU 指令

    //RegFIle
    output reg reg_ena,
    output reg cat_ena
    
);



always @(*) begin
    //MUX select
    MUX_1_sel = 0;
    MUX_2_sel = 0;
    MUX_3_sel = 1;

    case (opcode)
        6'b000000: begin // R-type
            reg_dst = 1;
            alu_src = 0;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = funct;
        end
        6'b100011: begin // LW
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 1;
            reg_write = 1;
            dm_read = 1;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // ADD
        end
        6'b101011: begin // SW
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 1;
            branch = 0;
            ALUC = 5'b00000; // ADD
        end
        6'b000100: begin // BEQ
            reg_dst = 0;
            alu_src = 0;
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 0;
            branch = 1;
            ALUC = 5'b00001; // SUB
        end

        6'b001001: begin // ADDI
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;
            


            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // ADD
        end
        6'b001001:begin //ADDIU
            MUX_9_sel = 0;
            MUX_8_sel = 1;
            MUX_7_sel = 0;
            MUX_6_sel = 1;
            MUX_5_sel = 0;

            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // ADD
        end
        6'b001010: begin //SLTI
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00001; // SUB
        end
        6'b001011: begin //SLTIU
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00001; // SUB
        end
        6'b001100: begin //ANDI
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00001; // SUB
        end

        default: begin
            reg_dst = 0;
            alu_src = 0;
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; //Default ADD
        end
    endcase
end

endmodule
