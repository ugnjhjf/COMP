module CPU31(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
);

wire [31:0] npc_addr_out, pc_addr_out; // NPC连接PC 和 PC连接NPC + PC连接IMEM
wire [31:0] instruction, alu_result, imm32;

wire [4:0] RsC, RtC, RdC; // IMEM连接RegFile

wire [31:0] reg_data1, reg_data2; // RegFile连接ALU

wire [4:0] alu_control; // CU控制ALU操作（add/addu）

// 声明未声明的符号
wire zero, sign, carry, overflow;

// 实例化NPC模块
NPC NPC (
    .npc_addr_in(pc_addr_out),
    .npc_addr_out(npc_addr_out)
);

// 实例化PC模块
PC pc_reg (
    .clk(clk_in),
    .reset(reset),
    .addr_in(npc_addr_out),
    .addr_out(pc_addr_out)
);

// 实例化IMEM模块
IMEM imem (
    .addr(pc_addr_out[11:0]),
    .instr(instruction)
);

// 实例化CU模块
CU control (
    .opcode(instruction[31:26]),
    .funct(instruction[5:0]),
    .ALUC(alu_control)
);

//ext16_signed ext16_signed (
//    .imm16(instruction[15:0]),
//    .imm32(imm32)
//);

//// 实例化16位零扩展模块
//ext16_zero ext16_zero (
//    .imm16(instruction[15:0]),
//    .imm32(imm32) // 如果需要，可以为两个扩展模块分别使用不同的信号
//);


// 实例化寄存器文件模块
RegFile regfile (
    .reg_clk(clk_in),
    .ena(1'b1),
    .reset(reset),
    .reg_w(1'b1), // 假设始终写入寄存器
    .RdC(instruction[15:11]), // 目标寄存器
    .RtC(instruction[20:16]), // 第二个源寄存器
    .RsC(instruction[25:21]), // 第一个源寄存器
    .Rd_data_in(alu_result), // 写入数据
    .Rs_data_out(reg_data1), // 读取数据1
    .Rt_data_out(reg_data2) // 读取数据2
);

// 实例化ALU模块
ALU alu (
    .A(reg_data1),
    .B(reg_data2),
    .ALUC(alu_control),
    .alu_out(alu_result),
    .zero(zero),
    .sign(sign),
    .carry(carry),
    .overflow(overflow)
);



assign inst = instruction;
assign pc = pc_addr_out;

endmodule
