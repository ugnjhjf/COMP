module CU (
    input clk_in,
    input reset,
    input [5:0] opcode,  // 类型码
    input [5:0] funct,   // 操作码
    input zero,
    input overflow,

    // IMEM
    output reg im_read,      // IMEM读取

    // DMEM
    output reg dm_read,      // DMEM读信号
    output reg dm_write,     // DMEM写信号
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
    output reg [4:0] ALUC,    // ALU 指令

    // RegFIle
    output reg reg_ena,
    output reg reg_w,
    output reg cat_ena
);

always @(*) begin
    // 默认值
     = 0;
     = 0;
    mem_to_reg = 0;
    reg_write = 0;
    dm_read = 0;
    dm_write = 0;
    branch = 0;
    ALUC = 5'b00000; // 默认 ADD
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
                6'b000000: begin // SLL
                    mem_to_reg = 0;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b01010; // SLL
                    
                    MUX_8_SEL = 0;
                    MUX_7_sel = 1;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    
                end
                6'b100000: begin // ADD
                    //  = 1;
                    //  = 0;
                    mem_to_reg = 0;
                    reg_write = 1;
                    dm_read = 0;
                    dm_write = 0;
                    branch = 0;
                    ALUC = 5'b00000; // ADD

                    MUX_8_sel = 0;
                    MUX_7_sel = 0;
                    MUX_6_sel = 1;
                    MUX_5_sel = 0;
                    
                end
                // 6'b100010: begin // SUB
                //      = 1;
                //      = 0;
                //     mem_to_reg = 0;
                //     reg_write = 1;
                //     dm_read = 0;
                //     dm_write = 0;
                    

                // end
            endcase
        end
        // 6'b100011: begin // LW
   
        //     mem_to_reg = 1;
        //     reg_write = 1;
        //     dm_read = 1;
        //     dm_write = 0;
        //     branch = 0;
        //     ALUC = 5'b00000; // ADD
        // end
        // 6'b101011: begin // SW
   
        //     mem_to_reg = 0;
        //     reg_write = 0;
        //     dm_read = 0;
        //     dm_write = 1;
        //     branch = 0;
        //     ALUC = 5'b00000; // ADD
        // end
        // 6'b000100: begin // BEQ
   
        //     mem_to_reg = 0;
        //     reg_write = 0;
        //     dm_read = 0;
        //     dm_write = 0;
        //     branch = 1;
        //     ALUC = 5'b00010; // SUB
        // end
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
        // 6'b001001: begin // ADDIU
   
        //     mem_to_reg = 0;
        //     reg_write = 1;
        //     dm_read = 0;
        //     dm_write = 0;
        //     branch = 0;
        //     ALUC = 5'b00001; // ADDU
        // end
        // 6'b001010: begin // SLTI
   
        //     mem_to_reg = 0;
        //     reg_write = 1;
        //     dm_read = 0;
        //     dm_write = 0;
        //     branch = 0;
        //     ALUC = 5'b01000; // SLT
        // end
        // 6'b001011: begin // SLTIU
   
        //     mem_to_reg = 0;
        //     reg_write = 1;
        //     dm_read = 0;
        //     dm_write = 0;
        //     branch = 0;
        //     ALUC = 5'b01001; // SLTU
        // end
        // 6'b001100: begin // ANDI
   
        //     mem_to_reg = 0;
        //     reg_write = 1;
        //     dm_read = 0;
        //     dm_write = 0;
        //     branch = 0;
        //     ALUC = 5'b00100; // AND
        // end
        default: begin
             = 0;
             = 0;
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
