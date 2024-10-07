//creating multiplexer module
//4 input wires, a,b,c,d
//2 selection wires sel0 and sel1
//i output wire out
module mux_4x1(a,b,c,d, sel0,sel1, out);
//input and selection wires
input a,b,c,d,sel0,sel1;
//output wires
output out;
//ternary operator, if sel1 = 1 out c or d
//if sel0 = 0 out b or a
assign out = sel1 ? (sel0 ? d : c) : (sel0 ? b : a);
//ends module
endmodule
