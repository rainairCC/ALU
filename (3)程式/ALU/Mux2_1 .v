`timescale 1ns/1ns
module Mux2_1 ( in1, in0, sel, out);

output out;
input in1, in0, sel;
wire out;

assign out = sel ? in0:in1;

endmodule
