module sccomp_dataflow(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
);

// 定义各模块的连线信号
wire [31:0] next_pc, current_pc, instruction, alu_result, reg_data1, reg_data2, mem_data;
wire [31:0] imm32, alu_operand2, branch_target;
wire [4:0] write_reg;
wire [4:0] alu_control;
wire reg_dst, alu_src, mem_to_reg, reg_write, mem_read, mem_write, branch, zero, overflow, sign, carry;
wire [1:0] alu_op;

// 实例化 PC 模块
PC pc_reg (
    .clk(clk_in),
    .rst(reset),
    .addr_in(next_pc),
    .addr_out(current_pc)
);

// 实例化 IMEM 模块
IMEM imem (
    .addr(current_pc[11:2]),
    .instr(instruction)
);

// 实例化控制单元
CU control (
    .opcode(instruction[31:26]),
    .funct(instruction[5:0]),
    .reg_dst(reg_dst),
    .alu_src(alu_src),
    .mem_to_reg(mem_to_reg),
    .reg_write(reg_write),
    .dm_read(mem_read),
    .dm_write(mem_write),
    .branch(branch),
    .ALUC(alu_control)
);

// 实例化寄存器文件
regfile regfile (
    .clk(clk_in),
    .ena(1'b1),
    .rst(reset),
    .reg_w(reg_write),
    .RdC(write_reg),
    .RtC(instruction[20:16]),
    .RsC(instruction[25:21]),
    .Rd(mem_to_reg ? mem_data : alu_result),
    .Rs(reg_data1),
    .Rt(reg_data2)
);

// 实例化 ALU
ALU alu (
    .aluOp(alu_control),
    .A(reg_data1),
    .B(alu_operand2),
    .alu_out(alu_result),
    .zero(zero),
    .sign(sign),
    .carry(carry),
    .overflow(overflow)
);

// 实例化 DMEM
DMEM dmem (
    .clk(clk_in),
    .ena(1'b1),
    .dm_write(mem_write),
    .dm_read(mem_read),
    .dm_addr(alu_result),
    .dm_data_in(reg_data2),
    .dm_data_out(mem_data)
);

// 实例化 MUX 模块
MUX2to1 mux_alu_operand (
    .in0(reg_data2),
    .in1(imm32),
    .sel(alu_src),
    .out(alu_operand2)
);

MUX2to1 mux_write_reg (
    .in0(instruction[20:16]),
    .in1(instruction[15:11]),
    .sel(reg_dst),
    .out(write_reg)
);

// 符号扩展立即数
ext16_signed ext16_signed_inst (
    .imm16(instruction[15:0]),
    .imm32(imm32)
);

// 分支地址计算
assign branch_target = current_pc + (imm32 << 2);

// 分支判断
assign next_pc = branch & zero ? branch_target : (current_pc + 4);

// 输出指令和 PC
assign inst = instruction;
assign pc = current_pc;

endmodule
