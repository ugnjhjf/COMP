module CPU31(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
);

wire [31:0] npc_addr_out, pc_addr_out; //NPC����PC �� PC����NPC + PC����IMEM
wire [31:0] instruction, alu_result,alu_control;

wire [4:0] RsC_CU_RegFile,RtC_CU_RegFile,RdC_CU_RegFile; //�Ĵ���1���Ĵ���2���Ĵ���3��Ŀ�꣩��CU����ALU


wire [4:0] ALUC;       //CU����ALU����ָʾ
wire [4:0] RdC,RtC,RsC; //IMEM����RegFile

wire [31:0] reg_data1,reg_data2,mem_data; //RegFile����ALU

wire [4:0] alu_control //CU����ALU������add/addu��
wire [31:0] alu_result //ALU�������RegFile.Rd




// ʵ����RegFileģ��

// ʵ����NPCģ��
NPC npc(
    //Input
    .npc_addr_in(pc_addr_out),
    //Output
    .npc_addr_out(npc_addr_out)
);

// ʵ����PCģ��
PC pc_reg (
    //Input
    .clk(clk_in),
    .reset(reset),
    .addr_in(npc_addr_out),
    //Output
    .addr_out(pc_addr_out)
);

// ʵ����IMEMģ��
IMEM imem (
//Input
    .addr(pc_addr_out[11:2]),  
//Output
    .instr(instruction)
);

CU control (
//Input
    .opcode(instruction[31:26]), //ָ������(R-type/I-type/J-type)
    .funct(instruction[4:0]), //����ָ��(add/addu...)
//Output
    .ALUC(alu_control)
);


regfile regfile (
//Input
    .clk(clk_in),
    .ena(1'b1),
    .reset(reset),

    .Rd(alu_result), //ALU.out->RegFile.Rd

//Output
    .RdC(instruction[15:11]),//IMEM->RdC
    .RtC(instruction[20:16]),//IMEM->RtC
    .RsC(instruction[25:21]), //IMEM->RsC

    .Rs(reg_data1), //RegFile.Rs->ALU.A
    .Rt(reg_data2), //RegFile.Rt->ALU.B

    .reg_w(1'b1) // ����ʼ��д��Ĵ���
  
);


ALU alu (
//Input
    .ALUC(alu_control),
    .A(reg_data1),
    .B(reg_data2),
//Output
    .alu_out(alu_result),
    .zero(zero),
    .sign(sign),
    .carry(carry),
    .overflow(overflow)

);

ext16_signed ext16_signed_inst (
    //Input
    .imm16(instruction[15:0]),
    //Output
    .imm32(imm32)
);

ext16_zero ext16_zero_inst (
    //Input
    .imm16(instruction[15:0]),
    //Output
    .imm32(imm32)
);

assign inst = instruction;
assign pc = pc_addr_out;

endmodule
