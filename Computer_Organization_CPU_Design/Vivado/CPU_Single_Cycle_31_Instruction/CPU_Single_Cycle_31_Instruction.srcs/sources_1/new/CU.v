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
            reg_dst = 1;          // 选择写入目标寄存器为 rd
            alu_src = 0;          // ALU 第二个操作数为寄存器
            mem_to_reg = 0;       // 写回寄存器的数据来自 ALU
            reg_write = 1;        // 使能寄存器写
            dm_read = 0;          // 不读内存
            dm_write = 0;         // 不写内存
            branch = 0;           // 非分支指令
            ALUC = funct;         // ALU 操作选择信号来自功能码
        end
        6'b100011: begin // LW 指令
            reg_dst = 0;          // 选择写入目标寄存器为 rt
            alu_src = 1;          // ALU 第二个操作数为立即数
            mem_to_reg = 1;       // 写回寄存器的数据来自内存
            reg_write = 1;        // 使能寄存器写
            dm_read = 1;          // 使能内存读
            dm_write = 0;         // 不写内存
            branch = 0;           // 非分支指令
            ALUC = 5'b00000;      // ALU 执行加法操作
        end
        6'b101011: begin // SW 指令
            reg_dst = 0;          // 无关紧要，写回寄存器无关
            alu_src = 1;          // ALU 第二个操作数为立即数
            mem_to_reg = 0;       // 无关紧要，写回寄存器无关
            reg_write = 0;        // 不使能寄存器写
            dm_read = 0;          // 不读内存
            dm_write = 1;         // 使能内存写
            branch = 0;           // 非分支指令
            ALUC = 5'b00000;      // ALU 执行加法操作
        end
        6'b000100: begin // BEQ 指令
            reg_dst = 0;          // 无关紧要，写回寄存器无关
            alu_src = 0;          // ALU 第二个操作数为寄存器
            mem_to_reg = 0;       // 无关紧要，写回寄存器无关
            reg_write = 0;        // 不使能寄存器写
            dm_read = 0;          // 不读内存
            dm_write = 0;         // 不写内存
            branch = 1;           // 分支指令
            ALUC = 5'b00001;      // ALU 执行减法操作
        end
        // 添加其他指令的控制信号生成逻辑
        default: begin
            reg_dst = 0;          // 默认选择写入目标寄存器为 rt
            alu_src = 0;          // 默认 ALU 第二个操作数为寄存器
            mem_to_reg = 0;       // 默认写回寄存器的数据来自 ALU
            reg_write = 0;        // 默认不使能寄存器写
            dm_read = 0;          // 默认不读内存
            dm_write = 0;         // 默认不写内存
            branch = 0;           // 默认非分支指令
            ALUC = 5'b00000;      // 默认 ALU 执行加法操作
        end
    endcase
end

endmodule
