module RegFile(
    input wire reg_clk,
    input wire ena,
    input wire reset,
    input wire reg_w,              // 写信号，高电平时寄存器可写入，低电平不可写入
    input wire [4:0] RdC,          // Rd对应的寄存器的地址（写入端）
    input wire [4:0] RtC,          // Rt对应的寄存器的地址（输出端）
    input wire [4:0] RsC,          // Rs对应的寄存器的地址（输出端）
    input wire [31:0] Rd_data_in,  // 要向寄存器中写入的值（需拉高reg_w）
    output wire [31:0] Rs_data_out,// Rs对应的寄存器的输出值
    output wire [31:0] Rt_data_out // Rt对应的寄存器的输出值
);

/* 内部用变量 */
reg [31:0] array_reg [31:0]; // 定义寄存器堆

/* 循环变量声明在模块头部 */
integer i;

/* 赋值，异步读取 */
assign Rs_data_out = ena ? array_reg[RsC] : 32'bz;
assign Rt_data_out = ena ? array_reg[RtC] : 32'bz;

/* 寄存器写入操作，复位信号上升沿或时钟下降沿有效 */
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
