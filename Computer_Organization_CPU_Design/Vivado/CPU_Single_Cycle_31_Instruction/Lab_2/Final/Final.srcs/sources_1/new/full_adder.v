module full_adder(
input a,b,cin,
output sum,carry
    );
 
 wire s1,c1,c2;
 // half adder Input:a,b Output:sum,carry
 half_adder HA1(a,b,s1,c1); //HA1 output(sum) -> HA2 input (a) USING s1 wire.
 half_adder HA2(s1,cin,sum,c2);
 assign carry = c1 | c2;
endmodule
