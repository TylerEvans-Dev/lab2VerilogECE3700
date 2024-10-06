module lookAheadAdder(input [3:0]a, input [3:0]b, input cin, output Cout, output [3:0]S);
wire c1, c2, c3;
//here is the general expression in functional code
assign c1 = (a[0]&b[0] | ((a[0]| b[0]&cin)));
//here is the expression for c+1 
assign c2 = (a[1]&b[1] | ((a[1] | b[1])&c1));
//here is c+2
assign c3 = (a[2]&b[2] | ((a[2] | b[2])&c2));
//here is c+3
assign Cout = (a[3]&b[3] | ((a[3]| b[3])&c3));
//wire here 
 wire [3:0]Car;
assign Car[0] = c1;
assign Car[1] = c2;
assign Car[2] = c3;
assign Car[3] = Cout;
//here is the xor 
xor(S[0], a[0], b[0], Car[0]);
xor(S[1], a[1], b[1], Car[1]);
xor(S[2], a[2], b[2], Car[2]);
xor(S[3], a[3], b[3], Car[3]);

endmodule
