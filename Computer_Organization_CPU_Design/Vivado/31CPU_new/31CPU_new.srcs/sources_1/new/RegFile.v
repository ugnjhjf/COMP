`timescale 1ns / 1ps
module regfile(                 //寄存器堆RegFile，写入为同步，读取为异步
    input  clk_in,              //时钟信号，下降沿有效
    input  ena,                 //使能信号端，上升沿有效
    input  reset,               //复位信号，高电平有效（检测上升沿）
    input  reg_write,           //写信号，高电平时寄存器可写入，低电平不可写入
    input  [4:0] RdC,           //Rd对应的寄存器的地址（写入端）
    input  [4:0] RtC,           //Rt对应的寄存器的地址（输出端）
    input  [4:0] RsC,           //Rs对应的寄存器的地址（输出端）
    input  [31:0] Rd_data_in,   //要向寄存器中写入的值（需拉高reg_write）
    output [31:0] Rs_data_out,  //Rs对应的寄存器的输出值
    output [31:0] Rt_data_out,  //Rt对应的寄存器的输出值

    output [31:0] reg_0, 
    output [31:0] reg_1,
    output [31:0] reg_2,
    output [31:0] reg_3,
    output [31:0] reg_4,
    output [31:0] reg_5,
    output [31:0] reg_6,
    output [31:0] reg_7,
    output [31:0] reg_8,
    output [31:0] reg_9,
    output [31:0] reg_10,
    output [31:0] reg_11,
    output [31:0] reg_12,
    output [31:0] reg_13,
    output [31:0] reg_14,
    output [31:0] reg_15,
    output [31:0] reg_16,
    output [31:0] reg_17,
    output [31:0] reg_18,
    output [31:0] reg_19,
    output [31:0] reg_20,
    output [31:0] reg_21,
    output [31:0] reg_22,
    output [31:0] reg_23,
    output [31:0] reg_24,
    output [31:0] reg_25,
    output [31:0] reg_26,
    output [31:0] reg_27,
    output [31:0] reg_28,
    output [31:0] reg_29,
    output [31:0] reg_30,
    output [31:0] reg_31
    );
/* 内部用变量 */
reg [31:0] array_reg [31:0];    //定义寄存器堆

/* 赋值，异步读取 */
assign Rs_data_out = ena ? array_reg[RsC] : 32'bz;
assign Rt_data_out = ena ? array_reg[RtC] : 32'bz;  //只要使能端为高电平（启用寄存器堆）就随时可以读取数据

assign reg_0  = array_reg[0];
assign reg_1  = array_reg[1];
assign reg_2  = array_reg[2];
assign reg_3  = array_reg[3];
assign reg_4  = array_reg[4];
assign reg_5  = array_reg[5];
assign reg_6  = array_reg[6];
assign reg_7  = array_reg[7];
assign reg_8  = array_reg[8];
assign reg_9  = array_reg[9];
assign reg_10 = array_reg[10];
assign reg_11 = array_reg[11];
assign reg_12 = array_reg[12];
assign reg_13 = array_reg[13];
assign reg_14 = array_reg[14];
assign reg_15 = array_reg[15];
assign reg_16 = array_reg[16];
assign reg_17 = array_reg[17];
assign reg_18 = array_reg[18];
assign reg_19 = array_reg[19];
assign reg_20 = array_reg[20];
assign reg_21 = array_reg[21];
assign reg_22 = array_reg[22];
assign reg_23 = array_reg[23];
assign reg_24 = array_reg[24];
assign reg_25 = array_reg[25];
assign reg_26 = array_reg[26];
assign reg_27 = array_reg[27];
assign reg_28 = array_reg[28];
assign reg_29 = array_reg[29];
assign reg_30 = array_reg[30];
assign reg_31 = array_reg[31];

/* 接下来考虑同步复位和写入 */
always @(negedge clk_in)  //时钟下降沿有效
begin
    if(reset && ena)    //复位信号高电平，复位，全部置0
    begin
        array_reg[0]  <= 32'h0;
        array_reg[1]  <= 32'h0;
        array_reg[2]  <= 32'h0;
        array_reg[3]  <= 32'h0;
        array_reg[4]  <= 32'h0;
        array_reg[5]  <= 32'h0;
        array_reg[6]  <= 32'h0;
        array_reg[7]  <= 32'h0;
        array_reg[8]  <= 32'h0;
        array_reg[9]  <= 32'h0;
        array_reg[10] <= 32'h0;
        array_reg[11] <= 32'h0;
        array_reg[12] <= 32'h0;
        array_reg[13] <= 32'h0;
        array_reg[14] <= 32'h0;
        array_reg[15] <= 32'h0;
        array_reg[16] <= 32'h0;
        array_reg[17] <= 32'h0;
        array_reg[18] <= 32'h0;
        array_reg[19] <= 32'h0;
        array_reg[20] <= 32'h0;
        array_reg[21] <= 32'h0;
        array_reg[22] <= 32'h0;
        array_reg[23] <= 32'h0;
        array_reg[24] <= 32'h0;
        array_reg[25] <= 32'h0;
        array_reg[26] <= 32'h0;
        array_reg[27] <= 32'h0;
        array_reg[28] <= 32'h0;
        array_reg[29] <= 32'h0;
        array_reg[30] <= 32'h0;
        array_reg[31] <= 32'h0;
    end
    else if(ena && reg_write) //ena和reg_write都为高电平，启用寄存器堆且需要写数据，允许写（特别注意：0号寄存器常0，不允许修改，不在写入范围之内）
        array_reg[RdC] <= Rd_data_in;
end

endmodule
