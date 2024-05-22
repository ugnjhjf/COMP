module CU (
    input [5:0] opcode,  // 指令操作码
    input [5:0] funct,   // 指令功能码（对于 R 型指令）

    output reg reg_dst,      // 目标寄存器选择信号
    output reg alu_src,      // ALU 源操作数选择信号
    output reg mem_to_reg,   // 内存数据写回寄存器选择信号
    output reg reg_write,    // 寄存器写使能信号
    output reg dm_read,      // 内存读使能信号
    output reg dm_write,     // 内存写使能信号
    output reg branch,       // 分支信号
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
            ALUC = funct; // 对应的 ALU 操作
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
