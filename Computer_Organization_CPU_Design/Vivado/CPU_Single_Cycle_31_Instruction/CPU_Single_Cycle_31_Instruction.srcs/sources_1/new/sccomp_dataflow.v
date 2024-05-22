module sccomp_dataflow(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
);

// �����ģ��������ź�
wire [31:0] next_pc, current_pc, instruction, alu_result, reg_data1, reg_data2, mem_data;
wire [31:0] imm32, alu_operand2, branch_target;
wire [4:0] write_reg;
wire [4:0] alu_control;
wire reg_dst, alu_src, mem_to_reg, reg_write, mem_read, mem_write, branch, zero, overflow, sign, carry;
wire [1:0] alu_op;

// ʵ���� PC ģ��
PC pc_reg (
    .clk(clk_in),
    .rst(reset),
    .addr_in(next_pc),
    .addr_out(current_pc)
);

// ʵ���� IMEM ģ��
IMEM imem (
    .addr(current_pc[11:2]),
    .instr(instruction)
);

// ʵ�������Ƶ�Ԫ
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

// ʵ�����Ĵ����ļ�
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

// ʵ���� ALU
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

// ʵ���� DMEM
DMEM dmem (
    .clk(clk_in),
    .ena(1'b1),
    .dm_write(mem_write),
    .dm_read(mem_read),
    .dm_addr(alu_result),
    .dm_data_in(reg_data2),
    .dm_data_out(mem_data)
);

// ʵ���� MUX ģ��
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

// ������չ������
ext16_signed ext16_signed_inst (
    .imm16(instruction[15:0]),
    .imm32(imm32)
);

// ��֧��ַ����
assign branch_target = current_pc + (imm32 << 2);

// ��֧�ж�
assign next_pc = branch & zero ? branch_target : (current_pc + 4);

// ���ָ��� PC
assign inst = instruction;
assign pc = current_pc;

endmodule
