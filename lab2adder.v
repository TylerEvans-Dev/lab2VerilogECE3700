// here is a verilog file for the 4 bit ripple carry adder. 

module lab2adder(input [3:0]a, input [3:0]b, input cin, output Cout, output [3:0]S);
//here are the outputs wires for the three others
wire cin1, cin2, cin3;
//here are the sum wires

//4 size b bianry representation
// x  
// d decmial dont specify use equals number. 
//wire [3:0]q = 4'b1111;

//here is the one bit adder
//bit 1 
//module fullAdder(input x0,input x1, input cin, output s, output cout);
fullAdder ad(.x0(a[0]), .x1(b[0]), .cin(cin), .s(S[0]), .cout(cin1));
//bit 2 
fullAdder ad1(.x0(a[1]), .x1(b[1]), .cin(cin1), .s(S[1]), .cout(cin2));
//bit 3
fullAdder ad2(.x0(a[2]), .x1(b[2]), .cin(cin2), .s(S[2]), .cout(cin3));
//bit 4 and final
fullAdder ad3(.x0(a[3]), .x1(b[3]), .cin(cin3), .s(S[3]), .cout(Cout));

endmodule 
