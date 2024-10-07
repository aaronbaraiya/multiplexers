//setting clock
`timescale 1ns/1ns
//including mux8x1.v file
`include "mux8x1.v"
//creating module
module mux8x1_tb;
//input wires
reg A, B, C, D, E, F, G, H Sel0, Sel1, Sel2;
//output wire
wire O;
//creating instance
mux_8x1 uut(A, B, C, D, E, F, G, H, Sel0, Sel1, Sel2, O);
//starting clock
initial begin
//naming vcd file
$dumpfile("mux8x1_tb");
$dumpvars(0, mux8x1_tb);
//If {sel2, sel1, sel0} = 000, out = a
//If {sel2, sel1, sel0} = 001, out = b
//If {sel2, sel1, sel0} = 010, out = c
//If {sel2, sel1, sel0} = 011, out = d
//If {sel2, sel1, sel0} = 100, out = e
//If {sel2, sel1, sel0} = 101, out = f
//If {sel2, sel1, sel0} = 110, out = g
//If {sel2, sel1, sel0} = 111, out = h
A = 0; B = 1; C = 0; D = 1; E = 0; F = 1; G = 0; H = 1;
{Sel2, Sel1, Sel0} = 2'd0; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd1; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd2; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd3; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd4; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd5; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd6; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd7; #20; //waits 20 nanoseconds
{Sel2, Sel1, Sel0} = 2'd8; #20; //waits 20 nanoseconds
//output when ends
$display("Complete!");
end //ending clock
//endmodule
