`timescale 1ns / 1ps
module regfile(                 //�Ĵ�����RegFile��д��Ϊͬ������ȡΪ�첽
    input  clk_in,             //ʱ���źţ��½�����Ч
    input  ena,             //ʹ���źŶˣ���������Ч
    input  reset,               //��λ�źţ��ߵ�ƽ��Ч����������أ�
    input  reg_w,               //д�źţ��ߵ�ƽʱ�Ĵ�����д�룬�͵�ƽ����д��
    input  [4:0] RdC,           //Rd��Ӧ�ļĴ����ĵ�ַ��д��ˣ�
    input  [4:0] RtC,           //Rt��Ӧ�ļĴ����ĵ�ַ������ˣ�
    input  [4:0] RsC,           //Rs��Ӧ�ļĴ����ĵ�ַ������ˣ�
    input  [31:0] Rd_data_in,   //Ҫ��Ĵ�����д���ֵ��������reg_w��
    output [31:0] Rs_data_out,  //Rs��Ӧ�ļĴ��������ֵ
    output [31:0] Rt_data_out,   //Rt��Ӧ�ļĴ��������ֵ

    //RegTest
    output [31:0] array_reg_ID_0,   //ID_0
    output [31:0] array_reg_ID_1,   //ID_1
    output [31:0] array_reg_ID_2,   //ID_2
    output [31:0] array_reg_ID_3,   //ID_3
    output [31:0] array_reg_ID_4,   //ID_4
    output [31:0] array_reg_ID_5,   //ID_5
    output [31:0] array_reg_ID_6,   //ID_6
    output [31:0] array_reg_ID_7,   //ID_7
    output [31:0] array_reg_ID_8,   //ID_8
    output [31:0] array_reg_ID_9,   //ID_9
    output [31:0] array_reg_ID_10,  //ID_10
    output [31:0] array_reg_ID_11,  //ID_11
    output [31:0] array_reg_ID_12,  //ID_12
    output [31:0] array_reg_ID_13,  //ID_13
    output [31:0] array_reg_ID_14,  //ID_14
    output [31:0] array_reg_ID_15,  //ID_15
    output [31:0] array_reg_ID_16,   //ID_16;
    output [31:0] array_reg_ID_17,   //ID_17
    output [31:0] array_reg_ID_18,   //ID_18
    output [31:0] array_reg_ID_19,   //ID_19
    output [31:0] array_reg_ID_20,   //ID_20
    output [31:0] array_reg_ID_21,   //ID_21
    output [31:0] array_reg_ID_22,   //ID_22
    output [31:0] array_reg_ID_23,   //ID_23
    output [31:0] array_reg_ID_24,   //ID_24
    output [31:0] array_reg_ID_25,   //ID_25
    output [31:0] array_reg_ID_26,   //ID_26
    output [31:0] array_reg_ID_27,   //ID_27
    output [31:0] array_reg_ID_28,   //ID_28
    output [31:0] array_reg_ID_29,   //ID_29
    output [31:0] array_reg_ID_30,   //ID_30
    output [31:0] array_reg_ID_31   //ID_31

    );
/* �ڲ��ñ��� */
reg [31:0] array_reg [31:0];    //����Ĵ�����

/* ��ֵ���첽��ȡ */
assign Rs_data_out = ena ? array_reg[RsC] : 32'bz;
assign Rt_data_out = ena ? array_reg[RtC] : 32'bz;  //ֻҪʹ�ܶ�Ϊ�ߵ�ƽ�����üĴ����ѣ�����ʱ���Զ�ȡ����

/* �����������첽д������� */
always @(negedge clk_in or posedge reset)  //��λ�ź������ػ�ʱ���½�����Ч
begin
    if(reset && ena)    //��λ�źŸߵ�ƽ����λ��ȫ����0������������д������ena����ֻ�����üĴ����Ѻ������գ����Ӵ�����ʱ���ԣ�Ϊ�����ݰ�ȫ���ǣ��������ǰ�ߣ���ֹ�Ĵ������ݱ���������գ�
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
    else if(ena && reg_w && (RdC != 5'h0)) //ena��reg_w��Ϊ�ߵ�ƽ�����üĴ���������Ҫд���ݣ�����д���ر�ע�⣺0�żĴ�����0���������޸ģ�����д�뷶Χ֮�ڣ�
        array_reg[RdC] <= Rd_data_in;
end
//Test Code
assign array_reg_ID_0 = array_reg[0];
assign array_reg_ID_1 =  array_reg[1];
assign array_reg_ID_2 =  array_reg[2];
assign array_reg_ID_3 =  array_reg[3];
assign array_reg_ID_4 =  array_reg[4];
assign array_reg_ID_5 =  array_reg[5];
assign array_reg_ID_6 =  array_reg[6];
assign array_reg_ID_7 =  array_reg[7];
assign array_reg_ID_8 =  array_reg[8];
assign array_reg_ID_9 =  array_reg[9];
assign array_reg_ID_10 =  array_reg[10];
assign array_reg_ID_11 =  array_reg[11];
assign array_reg_ID_12 =  array_reg[12];
assign array_reg_ID_13 =  array_reg[13];
assign array_reg_ID_14 =  array_reg[14];
assign array_reg_ID_15 =  array_reg[15];
assign array_reg_ID_16 =  array_reg[16];
assign array_reg_ID_17 =  array_reg[17];
assign array_reg_ID_18 =  array_reg[18];
assign array_reg_ID_19 =  array_reg[19];
assign array_reg_ID_20 =  array_reg[20];
assign array_reg_ID_21 =  array_reg[21];
assign array_reg_ID_22 =  array_reg[22];
assign array_reg_ID_23 =  array_reg[23];
assign array_reg_ID_24 =  array_reg[24];
assign array_reg_ID_25 =  array_reg[25];
assign array_reg_ID_26 =  array_reg[26];
assign array_reg_ID_27 =  array_reg[27];
assign array_reg_ID_28 =  array_reg[28];
assign array_reg_ID_29 =  array_reg[29];
assign array_reg_ID_30 =  array_reg[30];
assign array_reg_ID_31 =  array_reg[31];
endmodule
