`include "./full_adder.v"
module alu_1bit(
  input [0:0] a,
  input [0:0] b,
  input [2:0] alu_op,
  input [0:0] control,
  output wire carry_out,
  output wire result
);

wire binvert;
wire b_inv;
wire sum;
wire and_out;
wire or_out;
wire cout;

assign binvert = (alu_op[2] == 1'b1) ? 1'b1 : 0;
xor xor1(b_inv, b, binvert);

and and1(and_out, a, b);
or or1(or_out, a, b);
full_adder fa1(.a(a), .b(b_inv), .cin(control), .sum(sum), .cout(cout));

assign result = (alu_op[1] == 1'b0) ? ((alu_op[0] == 1'b0) ? and_out : or_out) : ((alu_op[0] == 1'b0) ? sum : 1'b0);
  
assign carry_out = (alu_op[1] == 1'b0) ? 0 : cout; 

endmodule