module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);

wire s1,c1,s2,c2;

half_adder HA1(a,b,s1,c1);
half_adder HA2(cin,s1,sum,c2);

assign carry = c1 | c2;
endmodule