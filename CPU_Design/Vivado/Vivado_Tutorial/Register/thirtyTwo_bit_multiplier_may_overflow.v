module ThirtyTwoBitMultiplier(
    input [31:0] A,   // 乘数
    input [31:0] B,   // 被乘数
    output [31:0] product  // 乘积的低32位
);

    // 每位的部分乘积
    wire [31:0] partial [31:0];

    genvar i, j;
    // 生成部分乘积
    generate
        for (i = 0; i < 32; i = i + 1) begin : gen_partial_products
            for (j = 0; j < 32; j = j + 1) begin : gen_bit_multiplication
                assign partial[i][j] = A[i] & B[j];
            end
        end
    endgenerate

    // 累加部分乘积 - 使用简单的加法器链来模拟
    wire [31:0] sums[31:0];  // 临时求和数组
    wire [31:0] carry;       // 进位数组

    assign sums[0] = partial[0];  // 初始求和等于最低位的部分乘积
    assign carry[0] = 0;          // 最低位没有进位

    generate
        for (i = 1; i < 32; i = i + 1) begin : gen_sums
            // 简单的全加器模型，这里没有展示全加器的实际实现
            adder adder_unit(
                .a(sums[i-1]), 
                .b(partial[i] << i),  // 部分乘积需要根据权位左移
                .cin(carry[i-1]), 
                .sum(sums[i]),
                .cout(carry[i])
            );
        end
    endgenerate

    assign product = sums[31];  // 最终的乘积输出

endmodule
