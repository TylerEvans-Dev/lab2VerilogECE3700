module tb_adder();
	// my functions are still getting errors I have little time to complete 
	//the running testbench on the lab so the simulation does not occur I will add this
	// to the report it was not doing this prior to this
	//I will do 5 tests each for each type of adder.
	// and will talk in office hours on tuesday monday with regards to this
	
	//bits      for the use of ripple carry adder 
	reg [3:0]numb1;
	reg [3:0]numb2;
	reg z;
	wire c;
	wire [3:0]E;
	//bits for the lookahead adder
	reg [3:0]numb3;
	reg [3:0]numb4;
	reg z1;
	wire c1;
	wire [3:0]E1;
	//bits for the 8bit lookahead adder
	reg [7:0]numb5;
	reg [7:0]numb6;
	reg z2;
	wire c2;
	wire [7:0]E2;
	//this is delcared outside of the init loop but I am still getting errors
	//I do not know why this is to be quite honest with you. here next to it is the syntax
	//module lab2adder(input [3:0]a, input [3:0]b, input cin, output Cout, output [3:0]S);
		lab2adder addlad(.a(numb1), .b(numb2), .cin(z), .Cout(c), .S(E));
	initial begin
		//test 1 is to add 1 + 1 
	#5;
	numb1[0] = 1;
	numb1[1] = 0;
	numb1[2] = 0;
	numb1[3] = 0;
	z = 0;
	numb2[0] = 1;
	numb2[1] = 0;
	numb2[2] = 0;
	numb2[3] = 0;
		#10
	$display("test 1 rc");
	$display("%b %b %b %b _C1 %b", E[0], E[1], E[2], E[3], c);
	
			//test 2 is to add 3 + 1 
	#5;
	numb1[0] = 1;
	numb1[1] = 1;
	numb1[2] = 0;
	numb1[3] = 0;
	z = 0;
	numb2[0] = 1;
	numb2[1] = 0;
	numb2[2] = 0;
	numb2[3] = 0;
	#10;
	$display("test 2 rc");
	$display("%b %b %b %b _C1 %b", E[0], E[1], E[2], E[3], c);
			//test 3 is to add 3 + 4 
	#5;
	numb1[0] = 1;
	numb1[1] = 1;
	numb1[2] = 0;
	numb1[3] = 0;
	z = 0;
	numb2[0] = 0;
	numb2[1] = 0;
	numb2[2] = 1;
	numb2[3] = 0;
	#10;
	$display("test 3 rc");
	$display("%b %b %b %b _C1 %b", E[0], E[1], E[2], E[3], c);
	
			//test 4 is to add 1 + 15 
	#5;
	numb1[0] = 1;
	numb1[1] = 0;
	numb1[2] = 0;
	numb1[3] = 0;
	z = 0;
	numb2[0] = 1;
	numb2[1] = 1;
	numb2[2] = 1;
	numb2[3] = 1;
	#10;
	$display("test 4 rc");
	$display("%b %b %b %b _C1 %b", E[0], E[1], E[2], E[3], c);
			//test 5 is to add 15 + 15 
	#5;
	numb1[0] = 1;
	numb1[1] = 1;
	numb1[2] = 1;
	numb1[3] = 1;
	z = 0;
	numb2[0] = 1;
	numb2[1] = 1;
	numb2[2] = 1;
	numb2[3] = 1;
	#10;
	$display("test 5 rc");
	$display("%b %b %b %b _C1 %b", E[0], E[1], E[2], E[3], c);
	
	
	
	
	end 
	
	//lookahead adder section here lookAheadAdder is the module
	//look ahead adder syntax here
	//module lookAheadAdder(input [3:0]a, input [3:0]b, input cin, output Cout, output [3:0]S);\
	lookAheadAdder addhead(.a(numb3), .b(numb4), .cin(z1), .Cout(c1), .S(E1));
	initial begin
	//test 1 is to add 1 + 1 
	numb3[0] = 1;
	numb3[1] = 0;
	numb3[2] = 0;
	numb3[3] = 0;
	z1 = 0;
	numb4[0] = 1;
	numb4[1] = 0;
	numb4[2] = 0;
	numb4[3] = 0;
	#10;
	$display("test 1 ahead adder");
	$display("%b %b %b %b _C1 %b", E1[0], E1[1], E1[2], E1[3], c1);
	
	//test 2 is to add 1 + 3 
	numb3[0] = 1;
	numb3[1] = 0;
	numb3[2] = 0;
	numb3[3] = 0;
	z1 = 0;
	numb4[0] = 1;
	numb4[1] = 1;
	numb4[2] = 0;
	numb4[3] = 0;
	#10;
	$display("test 2 ahead adder");
	$display("%b %b %b %b _C1 %b", E1[0], E1[1], E1[2], E1[3], c1);
		//test 3 is to add 15 + 15 
	numb3[0] = 1;
	numb3[1] = 1;
	numb3[2] = 1;
	numb3[3] = 1;
	z1 = 0;
	numb4[0] = 1;
	numb4[1] = 1;
	numb4[2] = 1;
	numb4[3] = 1;
	#10;
	$display("test 3 ahead adder");
	$display("%b %b %b %b _C1 %b", E1[0], E1[1], E1[2], E1[3], c1);
		//test 4 is to add 5 + 1 
	numb3[0] = 1;
	numb3[1] = 0;
	numb3[2] = 1;
	numb3[3] = 0;
	z1 = 0;
	numb4[0] = 1;
	numb4[1] = 0;
	numb4[2] = 0;
	numb4[3] = 0;
	#10;
	$display("test 4 ahead adder");
	$display("%b %b %b %b _C1 %b", E1[0], E1[1], E1[2], E1[3], c1);
		//test 5 is to add 0 + 1 
	numb3[0] = 0;
	numb3[1] = 0;
	numb3[2] = 0;
	numb3[3] = 0;
	z = 0;
	numb4[0] = 1;
	numb4[1] = 0;
	numb4[2] = 0;
	numb4[3] = 0;
	#10;
	$display("test 5 ahead adder");
	$display("%b %b %b %b _C1 %b", E1[0], E1[1], E1[2], E1[3], c1);
	end
	//eightbit look ahead section is here EightBitLookAheadAdder is the module
	//syntax 
	//module EightBitLookAheadAdder(input [7:0]a0, input [7:0]a1, input cin, output [7:0]S, output cout);
	EightBitLookAheadAdder addEigt(.a0(numb5), .a1(numb6), .cin(z2), .S(E2), .cout(c2));
	initial begin
		//test 1 is to add 0 + 1 
	numb5[0] = 0;
	numb5[1] = 0;
	numb5[2] = 0;
	numb5[3] = 0;
	numb5[4] = 0;
	numb5[5] = 0;
	numb5[6] = 0;
	numb5[7] = 0;
	z = 0;
	numb6[0] = 1;
	numb6[1] = 0;
	numb6[2] = 0;
	numb6[3] = 0;
	numb6[4] = 0;
	numb6[5] = 0;
	numb6[6] = 0;
	numb6[7] = 0;
	#10;
	$display("test 1 ahead adder 8 bit");
	$display("%b %b %b %b %b %b %b %b _C1 %b", E2[0], E2[1], E2[2], E2[3], E2[4], E2[5], E2[6], E2[7], c2);
		//test 2 is to add 1 + 1 
	numb5[0] = 1;
	numb5[1] = 0;
	numb5[2] = 0;
	numb5[3] = 0;
	numb5[4] = 0;
	numb5[5] = 0;
	numb5[6] = 0;
	numb5[7] = 0;
	z = 0;
	numb6[0] = 1;
	numb6[1] = 0;
	numb6[2] = 0;
	numb6[3] = 0;
	numb6[4] = 0;
	numb6[5] = 0;
	numb6[6] = 0;
	numb6[7] = 0;
	#10;
	$display("test 2 ahead adder 8 bit");
	$display("%b %b %b %b %b %b %b %b _C1 %b", E2[0], E2[1], E2[2], E2[3], E2[4], E2[5], E2[6], E2[7], c2);
		//test 3 is to add 1 + 31 
	numb5[0] = 0;
	numb5[1] = 0;
	numb5[2] = 0;
	numb5[3] = 0;
	numb5[4] = 0;
	numb5[5] = 0;
	numb5[6] = 0;
	numb5[7] = 0;
	z = 0;
	numb6[0] = 1;
	numb6[1] = 1;
	numb6[2] = 1;
	numb6[3] = 1;
	numb6[4] = 1;
	numb6[5] = 1;
	numb6[6] = 1;
	numb6[7] = 1;
	#10;
	$display("test 3 ahead adder 8 bit");
	$display("%b %b %b %b %b %b %b %b _C1 %b", E2[0], E2[1], E2[2], E2[3], E2[4], E2[5], E2[6], E2[7], c2);
		//test 4 is to add 31 + 13 
	numb5[0] = 1;
	numb5[1] = 1;
	numb5[2] = 1;
	numb5[3] = 1;
	numb5[4] = 1;
	numb5[5] = 1;
	numb5[6] = 1;
	numb5[7] = 1;
	z = 0;
	numb6[0] = 1;
	numb6[1] = 1;
	numb6[2] = 1;
	numb6[3] = 1;
	numb6[4] = 1;
	numb6[5] = 1;
	numb6[6] = 1;
	numb6[7] = 1;
	#10;
	$display("test 4 ahead adder 8 bit");
	$display("%b %b %b %b %b %b %b %b _C1 %b", E2[0], E2[1], E2[2], E2[3], E2[4], E2[5], E2[6], E2[7], c2);
		//test 4 is to add 31 + 2 
	numb5[0] = 1;
	numb5[1] = 1;
	numb5[2] = 1;
	numb5[3] = 1;
	numb5[4] = 1;
	numb5[5] = 1;
	numb5[6] = 1;
	numb5[7] = 1;
	z = 0;
	numb6[0] = 0;
	numb6[1] = 1;
	numb6[2] = 0;
	numb6[3] = 0;
	numb6[4] = 0;
	numb6[5] = 0;
	numb6[6] = 0;
	numb6[7] = 0;
	#10;
	$display("test 5 ahead adder 8 bit");
	$display("%b %b %b %b %b %b %b %b _C1 %b", E2[0], E2[1], E2[2], E2[3], E2[4], E2[5], E2[6], E2[7], c2);
	end


endmodule
