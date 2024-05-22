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
            reg_dst = 1;
            alu_src = 0;
            mem_to_reg = 0;
            reg_write = 1;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            case (funct)
                6'b100000: ALUC = 5'b00000; // ADD
                6'b100010: ALUC = 5'b00010; // SUB
                6'b100100: ALUC = 5'b00100; // AND
                6'b100101: ALUC = 5'b00101; // OR
                6'b101010: ALUC = 5'b01000; // SLT
                default:   ALUC = 5'b00000; // Ĭ�� ADD
            endcase
        end
        6'b100011: begin // LW
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 1;
            reg_write = 1;
            dm_read = 1;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // ADD
        end
        6'b101011: begin // SW
            reg_dst = 0;
            alu_src = 1;
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 1;
            branch = 0;
            ALUC = 5'b00000; // ADD
        end
        6'b000100: begin // BEQ
            reg_dst = 0;
            alu_src = 0;
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 0;
            branch = 1;
            ALUC = 5'b00001; // SUB
        end
        default: begin
            reg_dst = 0;
            alu_src = 0;
            mem_to_reg = 0;
            reg_write = 0;
            dm_read = 0;
            dm_write = 0;
            branch = 0;
            ALUC = 5'b00000; // Ĭ�� ADD
        end
    endcase
end

endmodule
