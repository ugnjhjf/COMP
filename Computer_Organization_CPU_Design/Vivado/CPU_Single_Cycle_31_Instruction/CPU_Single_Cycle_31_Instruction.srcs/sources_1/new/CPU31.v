module CPU31(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
);

wire [31:0] npc_addr_out, pc_addr_out; //NPC连接PC 和 PC连接NPC + PC连接IMEM
wire [31:0] instruction, alu_result,alu_control;

wire [4:0] RsC_CU_RegFile,RtC_CU_RegFile,RdC_CU_RegFile; //寄存器1，寄存器2，寄存器3（目标）由CU传入ALU


wire [4:0] ALUC;       //CU连接ALU操作指示
wire [4:0] RdC,RtC,RsC; //IMEM连接RegFile

wire [31:0] reg_data1,reg_data2,mem_data; //RegFile连接ALU

wire [4:0] alu_control //CU控制ALU操作（add/addu）
wire [31:0] alu_result //ALU结果传入RegFile.Rd




// 实例化RegFile模块

// 实例化NPC模块
NPC npc(
    //Input
    .npc_addr_in(pc_addr_out),
    //Output
    .npc_addr_out(npc_addr_out)
);

// 实例化PC模块
PC pc_reg (
    //Input
    .clk(clk_in),
    .reset(reset),
    .addr_in(npc_addr_out),
    //Output
    .addr_out(pc_addr_out)
);

// 实例化IMEM模块
IMEM imem (
//Input
    .addr(pc_addr_out[11:2]),  
//Output
    .instr(instruction)
);

CU control (
//Input
    .opcode(instruction[31:26]), //指令类型(R-type/I-type/J-type)
    .funct(instruction[4:0]), //具体指令(add/addu...)
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

    .reg_w(1'b1) // 假设始终写入寄存器
  
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
