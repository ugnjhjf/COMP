`timescale 1ns / 1ps
module regfile(                 //�Ĵ�����RegFile��д��Ϊͬ������ȡΪ�첽
    input  clk_in,              //ʱ���źţ��½�����Ч
    input  ena,                 //ʹ���źŶˣ��ߵ�ƽ��Ч
    input  reset,               //��λ�źţ��ߵ�ƽ��Ч
    input  reg_write,           //д�źţ��ߵ�ƽʱ�Ĵ�����д�룬�͵�ƽ����д��
    input  [4:0] RdC,           //Rd��Ӧ�ļĴ����ĵ�ַ��д��ˣ�
    input  [4:0] RtC,           //Rt��Ӧ�ļĴ����ĵ�ַ������ˣ�
    input  [4:0] RsC,           //Rs��Ӧ�ļĴ����ĵ�ַ������ˣ�
    input  I_instru,
    input  [31:0] Rd_data_in,   //Ҫ��Ĵ�����д���ֵ��������reg_write��
//Test 1line
    output [31:0] Rd_data_out,  //Rd-Test
    //Test 1 line
    output [31:0] Rs_data_out,  //Rs��Ӧ�ļĴ��������ֵ
    output [31:0] Rt_data_out,  //Rt��Ӧ�ļĴ��������ֵ

    output [31:0] reg_0, reg_1, reg_2, reg_3, reg_4, reg_5, reg_6, reg_7,
    output [31:0] reg_8, reg_9, reg_10, reg_11, reg_12, reg_13, reg_14, reg_15,
    output [31:0] reg_16, reg_17, reg_18, reg_19, reg_20, reg_21, reg_22, reg_23,
    output [31:0] reg_24, reg_25, reg_26, reg_27, reg_28, reg_29, reg_30, reg_31
    );
/* �ڲ��ñ��� */
reg [31:0] array_reg [31:0];    //����Ĵ�����


assign  Rs_data_out = ena ? array_reg[RsC] : 32'bz;
assign  Rt_data_out = ena ? array_reg[RtC] : 32'bz;  //ֻҪʹ�ܶ�Ϊ�ߵ�ƽ�����üĴ����ѣ�����ʱ���Զ�ȡ����

/* ����������ͬ����λ��д�� */
always @(negedge clk_in)  //ʱ���½�����Ч
begin
    if (reset) begin    //��λ�źŸߵ�ƽ����λ��ȫ����0
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
  //R-instruction write in 
    else if ((!(I_instru))&& ena && reg_write && (RdC != 5'h0)) begin //ena��reg_write��Ϊ�ߵ�ƽ�����üĴ���������Ҫд���ݣ�����д���ر�ע�⣺0�żĴ�����0���������޸ģ�����д�뷶Χ֮�ڣ�
        array_reg[RdC] <= Rd_data_in;
        //I-instruction write in
    end else if ( I_instru && reg_write && (RtC != 5'h0))begin
        array_reg[RtC] <= Rd_data_in;
    end

end

 assign reg_0 = array_reg[0];
    assign reg_1 = array_reg[1];
    assign reg_2 = array_reg[2];
    assign reg_3 = array_reg[3];
    assign reg_4 = array_reg[4];
    assign reg_5 = array_reg[5];
    assign reg_6 = array_reg[6];
    assign reg_7 = array_reg[7];
    assign reg_8 = array_reg[8];
    assign reg_9 = array_reg[9];
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
    assign Rd_data_out= Rd_data_in;

endmodule
