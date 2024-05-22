module Ext18_Signed(
    input [17:0] in,    // 输入18位有符号数
    output [31:0] out   // 输出32位有符号数
);

assign out = {{14{in[17]}}, in};

endmodule
