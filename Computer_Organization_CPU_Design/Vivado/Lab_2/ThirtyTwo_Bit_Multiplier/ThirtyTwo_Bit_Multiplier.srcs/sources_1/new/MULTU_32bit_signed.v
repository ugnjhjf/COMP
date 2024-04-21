`timescale 1ns / 1ps

module MULT_32bit_signed(
    input clk,
    input reset,
    input [31:0] a,
    input [31:0] b,
    output reg [63:0] product
);
    reg [31:0] ACC;
    reg [31:0] MQ;
    reg [31:0] M;
    reg [5:0] count;
    reg signed [31:0] B;  // Register for two's complement of B if needed
    reg [1:0] state;      // State for managing process

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            ACC <= 0;
            MQ <= 0;
            M <= 0;
            B <= 0;
            count <= 0;
            state <= 0;
            product <= 0;
        end else begin
            case (state)
                0: begin // Initialization
                    MQ <= b;
                    M <= a;
                    B <= ~b + 1;  // Compute two's complement of B
                    ACC <= 0;
                    count <= 31;
                    state <= 1;
                end
                1: begin // Process loop
                    case ({MQ[0], ACC[0]})
                        2'b01: ACC <= ACC + M;
                        2'b10: ACC <= ACC + B;
                        default: ;
                    endcase
                    // Right shift by 1 (arithmetic)
                    {ACC, MQ} = {ACC[31], ACC, MQ} >> 1;
                    count <= count - 1;
                    if (count == 0) state <= 2; else state <= 1;
                end
                2: begin // Finish
                    product <= {ACC, MQ};
                    state <= 0; // Reset state if needed
                end
            endcase
        end
    end
endmodule
