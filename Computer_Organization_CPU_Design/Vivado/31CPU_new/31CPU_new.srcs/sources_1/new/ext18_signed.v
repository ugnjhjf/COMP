module ext18_signed(
    input [17:0] in,    // ����18λ�з�����
    output [31:0] out   // ���32λ�з�����
);

assign out = {{14{in[17]}}, in};

endmodule
