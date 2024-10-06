//one bit full adder circuit
module fullAdder(input x0,input x1, input cin, output s, output cout);
//S
wire a1, a2, a3;
//here is eq 1 for s 
and(a1, ~x0, ~x1, cin);
//here is eq 2 for s  
and(a2, x0, x1, cin);
//here is eq 3 for s
and(a3, ~x1, cin);
//here is the final expression
or(s, a1, a2, a3);


//Cout
wire a4, a5, a6;

//here is 1 eq for cout
and(a4, ~x0, x1, cin);
//here is 2 eq for cout
and(a5, x0, x1);
//here is hte 3 eq for cout
and(a6, x0, x1);
//final expression 
or(cout, a4, a5, a6);

endmodule 
