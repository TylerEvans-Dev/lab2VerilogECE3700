//use look ahead adder
module EightBitLookAheadAdder(input [7:0]a0, input [7:0]a1, input cin, output [7:0]S, output cout);
	wire c1;
	 lookAheadAdder s1(.a(a0[3:0]), .b(a1[3:0]), .cin(cin), .Cout(c1),  .S(S[3:0]));
	 lookAheadAdder s2(.a(a0[7:4]), .b(a1[7:4]), .cin(c1), .Cout(cout),  .S(S[7:4]));
	 
	 endmodule
