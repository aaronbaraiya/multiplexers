//creating module
//11 inputs a,b,c,d,e,f,g,h,sel0,sel1, sel2
//1 input is out
module mux_8x1(a,b,c,d,e,f,g,h,sel0,sel1,sel2,out);
//11 inputs
input a,b,c,d,e,f,g,h,sel0,sel1,sel2;
//1 output
output out;
//ternary operator
//If {sel2, sel1, sel0} = 000, out = a
//If {sel2, sel1, sel0} = 001, out = b
//If {sel2, sel1, sel0} = 010, out = c
//If {sel2, sel1, sel0} = 011, out = d
//If {sel2, sel1, sel0} = 100, out = e
//If {sel2, sel1, sel0} = 101, out = f
//If {sel2, sel1, sel0} = 110, out = g
//If {sel2, sel1, sel0} = 111, out = h
assign out = sel2 ? (sel1 ? h : g) : (sel1 ? f : e) : (sel0 ? d : c) : (sel0 ? b : a);
//ends module
endmodule
