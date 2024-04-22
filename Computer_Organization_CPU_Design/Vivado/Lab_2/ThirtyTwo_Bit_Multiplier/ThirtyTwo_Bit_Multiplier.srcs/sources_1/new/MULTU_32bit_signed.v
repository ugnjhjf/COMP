module signed_booth_multiplier(
    input signed [31:0] multiplicand,
    input signed [31:0] multiplier,
    output reg signed [63:0] product
);
    reg signed [31:0] mc;         
    reg signed [32:0] mp; // Extended to include possible overflow bit
    integer count;                // Use integer for loop count for better synthesis support
    reg signed [63:0] result;

    always @(multiplicand or multiplier) begin
        mc = multiplicand;
        mp = {{1{multiplier[31]}}, multiplier}; // Correct sign extension
        result = 0;
        count = 32;

        while (count > 0) begin
            if (mp[0] == 1'b1) begin
                result = result + {{32{mc[31]}}, mc};
            end
            // Perform arithmetic right shift
            result = result >>> 1;
            mp = mp >>> 1;  // Logical shift right for mp (corrected for type)
            count = count - 1;
        end
        product = result;
    end
endmodule
