//setting clock
`timescale 1ns/1ns
//including mux4x1.v file
`include "mux4x1.v"
//creating module for testbench
module mux4x1_tb;
//input wires a, b, c, d, sel0 sel
reg A, B, C, D, Sel0, Sel1;
//output wire 0
wire O;
//creating instance
mux_4x1 uut(A, B, C, D, Sel0, Sel1, O);
//starting clock
initial begin
//naming vcd file
$dumpfile("mux4x1_tb");
$dumpvars(0, mux4x1_tb);
//setting A,B,C,D right when clock starts, values will not change
A = 0; B = 1; C = 0; D = 1;
//setting to 0,1,2, and 3 because 0 bit binary number is equal to 00,01,10,11
//want sel1 and sel0 equal to 00,01,10,11
{Sel1, Sel0} = 2'd0; #20; //waits 20 nanoseconds
{Sel1, Sel0} = 2'd1; #20; //waits 20 nanoseconds
{Sel1, Sel0} = 2'd2; #20; //waits 20 nanoseconds
{Sel1, Sel0} = 2'd3; #20; //waits 20 nanoseconds
//output to console when complete
$display("Complete!");
end //ending clock
//endmodule
endmodule
