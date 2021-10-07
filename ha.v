module ha (cout,sum,a,b);

input b;
output cout;
input a;
output sum;

xor G2 (sum,a,b);
and G1 (cout,a,b);

endmodule