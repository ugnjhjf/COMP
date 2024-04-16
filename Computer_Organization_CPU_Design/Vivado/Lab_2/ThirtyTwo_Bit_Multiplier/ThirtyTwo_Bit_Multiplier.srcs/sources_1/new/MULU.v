module MULTU_32bit_no_sign(
    input clk,
    input reset,
    input [31:0] a,
    input [31:0] b,
    output reg [63:0] ans
);
    reg [31:0] multiplicand;
    reg [31:0] multiplier;
    reg [63:0] temp;
    integer j;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            multiplicand <= 0;
            multiplier <= 0;
            temp <= 0;
            ans <= 0;
        end else begin
            multiplicand <= a;
            multiplier <= b;
            temp <= 0;
            for (j = 0; j < 32; j = j + 1) begin
                if (multiplier[0] == 1) begin
                    temp = temp + (multiplicand << j);
                end
                multiplier = multiplier >> 1;  // 在这里处理位移确保逻辑清晰
            end
            ans <= temp;  // 结束循环后更新答案
        end
    end
endmodule
