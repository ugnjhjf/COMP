`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 11:13:19
// Design Name: 
// Module Name: MULTU_32bit_signed
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MULTU_signed_32bit(
    input clk,          // ???????????
    input reset,
    input signed [31:0] a, // ???? a(??????, ?§Ù???)
    input signed [31:0] b, // ???? b(????, ?§Ù???)
    output signed [63:0] z // ?????? z (?§Ù???, 64¦Ë)
);
    // ???????????????64¦Ë??›¥?????????
    reg signed [63:0] temp;
    reg signed [63:0] stored0;
    reg signed [63:0] stored1;
    reg signed [63:0] stored2;
    reg signed [63:0] stored3;
    reg signed [63:0] stored4;
    reg signed [63:0] stored5;
    reg signed [63:0] stored6;
    reg signed [63:0] stored7;
    reg signed [63:0] add0_1;
    reg signed [63:0] add2_3;
    reg signed [63:0] add4_5;
    reg signed [63:0] add6_7;
    reg signed [63:0] add0t1_2t3;
    reg signed [63:0] add4t5_6t7;

    always @(posedge clk or posedge reset)
    begin
        // reset ????
        if(reset) begin
            temp <= 0;
            stored0 <= 0;
            stored1 <= 0;
            stored2 <= 0;
            stored3 <= 0;
            stored4 <= 0;
            stored5 <= 0;
            stored6 <= 0;
            stored7 <= 0;
            add0_1 <= 0;
            add2_3 <= 0;
            add4_5 <= 0;
            add6_7 <= 0;
            add0t1_2t3 <= 0;
            add4t5_6t7 <= 0;
        end
        else begin
            // ?????????????????§Þ????????????
            stored0 <= b[0]  ? {32'b0, a} : 64'b0;
            stored1 <= b[1]  ? {31'b0, a, 1'b0} : 64'b0;
            stored2 <= b[2]  ? {30'b0, a, 2'b0} : 64'b0;
            stored3 <= b[3]  ? {29'b0, a, 3'b0} : 64'b0;
            stored4 <= b[4]  ? {28'b0, a, 4'b0} : 64'b0;
            stored5 <= b[5]  ? {27'b0, a, 5'b0} : 64'b0;
            stored6 <= b[6]  ? {26'b0, a, 6'b0} : 64'b0;
            stored7 <= b[7]  ? {25'b0, a, 7'b0} : 64'b0;
            add0_1 <= stored0 + stored1;
            add2_3 <= stored2 + stored3;
            add4_5 <= stored4 + stored5;
            add6_7 <= stored6 + stored7;
            add0t1_2t3 <= add0_1 + add2_3;
            add4t5_6t7 <= add4_5 + add6_7;
            temp <= add0t1_2t3 + add4t5_6t7;
        end
    end

    assign z = temp;  // ????????????????
endmodule
