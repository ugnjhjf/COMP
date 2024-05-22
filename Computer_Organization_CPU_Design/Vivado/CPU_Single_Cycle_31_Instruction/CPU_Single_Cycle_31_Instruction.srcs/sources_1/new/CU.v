module CU (
    input [5:0] opcode,  // ָ�������
    input [5:0] funct,   // ָ����루���� R ��ָ�

    output reg reg_dst,      // Ŀ��Ĵ���ѡ���ź�
    output reg alu_src,      // ALU Դ������ѡ���ź�
    
    output reg mem_to_reg,   // �ڴ�����д�ؼĴ���ѡ���ź�
    output reg reg_write,    // �Ĵ���дʹ���ź�
    output reg dm_read,      // �ڴ��ʹ���ź�
    output reg dm_write,     // �ڴ�дʹ���ź�
    output reg branch,       // ��֧�ź�
    output reg [4:0] ALUC    // ALU ����ѡ���ź�
);

always @(*) begin
    case (opcode)
        6'b000000: begin // R ��ָ��
            reg_dst = 1;          // ѡ��д��Ŀ��Ĵ���Ϊ rd
            alu_src = 0;          // ALU �ڶ���������Ϊ�Ĵ���
            mem_to_reg = 0;       // д�ؼĴ������������� ALU
            reg_write = 1;        // ʹ�ܼĴ���д
            dm_read = 0;          // �����ڴ�
            dm_write = 0;         // ��д�ڴ�
            branch = 0;           // �Ƿ�ָ֧��
            ALUC = funct;         // ALU ����ѡ���ź����Թ�����
        end
        6'b100011: begin // LW ָ��
            reg_dst = 0;          // ѡ��д��Ŀ��Ĵ���Ϊ rt
            alu_src = 1;          // ALU �ڶ���������Ϊ������
            mem_to_reg = 1;       // д�ؼĴ��������������ڴ�
            reg_write = 1;        // ʹ�ܼĴ���д
            dm_read = 1;          // ʹ���ڴ��
            dm_write = 0;         // ��д�ڴ�
            branch = 0;           // �Ƿ�ָ֧��
            ALUC = 5'b00000;      // ALU ִ�мӷ�����
        end
        6'b101011: begin // SW ָ��
            reg_dst = 0;          // �޹ؽ�Ҫ��д�ؼĴ����޹�
            alu_src = 1;          // ALU �ڶ���������Ϊ������
            mem_to_reg = 0;       // �޹ؽ�Ҫ��д�ؼĴ����޹�
            reg_write = 0;        // ��ʹ�ܼĴ���д
            dm_read = 0;          // �����ڴ�
            dm_write = 1;         // ʹ���ڴ�д
            branch = 0;           // �Ƿ�ָ֧��
            ALUC = 5'b00000;      // ALU ִ�мӷ�����
        end
        6'b000100: begin // BEQ ָ��
            reg_dst = 0;          // �޹ؽ�Ҫ��д�ؼĴ����޹�
            alu_src = 0;          // ALU �ڶ���������Ϊ�Ĵ���
            mem_to_reg = 0;       // �޹ؽ�Ҫ��д�ؼĴ����޹�
            reg_write = 0;        // ��ʹ�ܼĴ���д
            dm_read = 0;          // �����ڴ�
            dm_write = 0;         // ��д�ڴ�
            branch = 1;           // ��ָ֧��
            ALUC = 5'b00001;      // ALU ִ�м�������
        end
        // �������ָ��Ŀ����ź������߼�
        default: begin
            reg_dst = 0;          // Ĭ��ѡ��д��Ŀ��Ĵ���Ϊ rt
            alu_src = 0;          // Ĭ�� ALU �ڶ���������Ϊ�Ĵ���
            mem_to_reg = 0;       // Ĭ��д�ؼĴ������������� ALU
            reg_write = 0;        // Ĭ�ϲ�ʹ�ܼĴ���д
            dm_read = 0;          // Ĭ�ϲ����ڴ�
            dm_write = 0;         // Ĭ�ϲ�д�ڴ�
            branch = 0;           // Ĭ�ϷǷ�ָ֧��
            ALUC = 5'b00000;      // Ĭ�� ALU ִ�мӷ�����
        end
    endcase
end

endmodule
