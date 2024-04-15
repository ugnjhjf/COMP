module thirtyTwo_bit_adder(
    input [31:0] A,
    input [31:0] B,
    input cin,
    output [31:0] sum,
    output cout
);

    wire [32:0] carry;  // 定义一个进位线数组，carry[0]是初始进位输入

    assign carry[0] = cin;  // 初始进位输入

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) // begin : each_bit_adder
            full_adder FA (
                .a(A[i]),
                .b(B[i]),
                .cin(carry[i]),  // 使用当前位的进位输入
                .sum(sum[i]),
                .carry(carry[i+1])  // 生成的进位输出存储在下一个位的进位输入
            );
        end
    endgenerate

    assign cout = carry[32];  // 最后的进位输出是32位加法的总进位输出

endmodule
