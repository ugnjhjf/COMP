module RegFile(
    input wire reg_clk,
    input wire ena,
    input wire reset,
    input wire reg_w,              // д�źţ��ߵ�ƽʱ�Ĵ�����д�룬�͵�ƽ����д��
    input wire [4:0] RdC,          // Rd��Ӧ�ļĴ����ĵ�ַ��д��ˣ�
    input wire [4:0] RtC,          // Rt��Ӧ�ļĴ����ĵ�ַ������ˣ�
    input wire [4:0] RsC,          // Rs��Ӧ�ļĴ����ĵ�ַ������ˣ�
    input wire [31:0] Rd_data_in,  // Ҫ��Ĵ�����д���ֵ��������reg_w��
    output wire [31:0] Rs_data_out,// Rs��Ӧ�ļĴ��������ֵ
    output wire [31:0] Rt_data_out // Rt��Ӧ�ļĴ��������ֵ
);

/* �ڲ��ñ��� */
reg [31:0] array_reg [31:0]; // ����Ĵ�����

/* ѭ������������ģ��ͷ�� */
integer i;

/* ��ֵ���첽��ȡ */
assign Rs_data_out = ena ? array_reg[RsC] : 32'bz;
assign Rt_data_out = ena ? array_reg[RtC] : 32'bz;

/* �Ĵ���д���������λ�ź������ػ�ʱ���½�����Ч */
always @(posedge reset or negedge reg_clk) begin
    if (reset) begin
        for (i = 0; i < 32; i = i + 1) begin
            array_reg[i] <= 32'h0;
        end
    end else if (ena && reg_w && (RdC != 5'h0)) begin
        array_reg[RdC] <= Rd_data_in;
    end
end

endmodule
