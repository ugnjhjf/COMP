module CPU31(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
);

wire [31:0] npc_addr_out, pc_addr_out; // NPC����PC �� PC����NPC + PC����IMEM
wire [31:0] instruction, alu_result, imm32;

wire [4:0] RsC, RtC, RdC; // IMEM����RegFile

wire [31:0] reg_data1, reg_data2; // RegFile����ALU

wire [4:0] alu_control; // CU����ALU������add/addu��

// ����δ�����ķ���
wire zero, sign, carry, overflow;

// ʵ����NPCģ��
NPC NPC (
    .npc_addr_in(pc_addr_out),
    .npc_addr_out(npc_addr_out)
);

// ʵ����PCģ��
PC pc_reg (
    .clk(clk_in),
    .reset(reset),
    .addr_in(npc_addr_out),
    .addr_out(pc_addr_out)
);

// ʵ����IMEMģ��
IMEM imem (
    .addr(pc_addr_out[11:0]),
    .instr(instruction)
);

// ʵ����CUģ��
CU control (
    .opcode(instruction[31:26]),
    .funct(instruction[5:0]),
    .ALUC(alu_control)
);

//ext16_signed ext16_signed (
//    .imm16(instruction[15:0]),
//    .imm32(imm32)
//);

//// ʵ����16λ����չģ��
//ext16_zero ext16_zero (
//    .imm16(instruction[15:0]),
//    .imm32(imm32) // �����Ҫ������Ϊ������չģ��ֱ�ʹ�ò�ͬ���ź�
//);


// ʵ�����Ĵ����ļ�ģ��
RegFile regfile (
    .reg_clk(clk_in),
    .ena(1'b1),
    .reset(reset),
    .reg_w(1'b1), // ����ʼ��д��Ĵ���
    .RdC(instruction[15:11]), // Ŀ��Ĵ���
    .RtC(instruction[20:16]), // �ڶ���Դ�Ĵ���
    .RsC(instruction[25:21]), // ��һ��Դ�Ĵ���
    .Rd_data_in(alu_result), // д������
    .Rs_data_out(reg_data1), // ��ȡ����1
    .Rt_data_out(reg_data2) // ��ȡ����2
);

// ʵ����ALUģ��
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
