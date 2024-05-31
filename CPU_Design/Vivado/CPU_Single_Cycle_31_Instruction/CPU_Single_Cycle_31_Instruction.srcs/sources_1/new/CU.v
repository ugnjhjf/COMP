module CU (
    input [5:0] opcode,  // 指令类型码
    input [5:0] funct,   // 指令功能码（对于 R 型指令）

//IMEM
    output reg im_read,      // 指令读使能信号


//DMEM
    output reg dm_read,      // 内存读使能信号
    output reg dm_write,     // 内存写使能信号

//ALU
    output reg [4:0] ALUC    // ALU 操作选择信号
);

always @(*) begin
    case (opcode)
        6'b000000: begin // R 型指令
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
        default: begin
            reg_dst = 0;
            alu_src = 0;
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // 默认 ADD
        end
    endcase
end

endmodule
