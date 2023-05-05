`include "./alu_1bit.v"

module alu(
  input [31:0] a,
  input [31:0] b,
  input [0:0] cin,
  input [2:0] alu_op,
  output wire carry_out,
  output wire [31:0] result,
  output wire overflow,
  output wire zero
);

wire c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31;
wire [31:0] s;
wire binvert;
wire set;

assign cin = (alu_op[2] == 0) ? 1'b0 : 1'b1;

alu_1bit a0(.a(a[31]), .b(b[31]), .alu_op(alu_op), .control(cin), .carry_out(c0), .result(s[31])); 
alu_1bit a1(.a(a[30]), .b(b[30]), .alu_op(alu_op), .control(c0), .carry_out(c1), .result(s[30]));
alu_1bit a2(.a(a[29]), .b(b[29]), .alu_op(alu_op), .control(c1), .carry_out(c2), .result(s[29]));
alu_1bit a3(.a(a[28]), .b(b[28]), .alu_op(alu_op), .control(c2), .carry_out(c3), .result(s[28]));
alu_1bit a4(.a(a[27]), .b(b[27]), .alu_op(alu_op), .control(c3), .carry_out(c4), .result(s[27]));
alu_1bit a5(.a(a[26]), .b(b[26]), .alu_op(alu_op), .control(c4), .carry_out(c5), .result(s[26]));
alu_1bit a6(.a(a[25]), .b(b[25]), .alu_op(alu_op), .control(c5), .carry_out(c6), .result(s[25]));
alu_1bit a7(.a(a[24]), .b(b[24]), .alu_op(alu_op), .control(c6), .carry_out(c7), .result(s[24]));
alu_1bit a8(.a(a[23]), .b(b[23]), .alu_op(alu_op), .control(c7), .carry_out(c8), .result(s[23]));
alu_1bit a9(.a(a[22]), .b(b[22]), .alu_op(alu_op), .control(c8), .carry_out(c9), .result(s[22]));
alu_1bit a10(.a(a[21]), .b(b[21]), .alu_op(alu_op), .control(c9), .carry_out(c10), .result(s[21]));
alu_1bit a11(.a(a[20]), .b(b[20]), .alu_op(alu_op), .control(c10), .carry_out(c11), .result(s[20]));
alu_1bit a12(.a(a[19]), .b(b[19]), .alu_op(alu_op), .control(c11), .carry_out(c12), .result(s[19]));
alu_1bit a13(.a(a[18]), .b(b[18]), .alu_op(alu_op), .control(c12), .carry_out(c13), .result(s[18]));
alu_1bit a14(.a(a[17]), .b(b[17]), .alu_op(alu_op), .control(c13), .carry_out(c14), .result(s[17]));
alu_1bit a15(.a(a[16]), .b(b[16]), .alu_op(alu_op), .control(c14), .carry_out(c15), .result(s[16]));
alu_1bit a16(.a(a[15]), .b(b[15]), .alu_op(alu_op), .control(c15), .carry_out(c16), .result(s[15]));
alu_1bit a17(.a(a[14]), .b(b[14]), .alu_op(alu_op), .control(c16), .carry_out(c17), .result(s[14]));
alu_1bit a18(.a(a[13]), .b(b[13]), .alu_op(alu_op), .control(c17), .carry_out(c18), .result(s[13]));
alu_1bit a19(.a(a[12]), .b(b[12]), .alu_op(alu_op), .control(c18), .carry_out(c19), .result(s[12]));
alu_1bit a20(.a(a[11]), .b(b[11]), .alu_op(alu_op), .control(c19), .carry_out(c20), .result(s[11]));
alu_1bit a21(.a(a[10]), .b(b[10]), .alu_op(alu_op), .control(c20), .carry_out(c21), .result(s[10]));
alu_1bit a22(.a(a[9]), .b(b[9]), .alu_op(alu_op), .control(c21), .carry_out(c22), .result(s[9]));
alu_1bit a23(.a(a[8]), .b(b[8]), .alu_op(alu_op), .control(c22), .carry_out(c23), .result(s[8]));
alu_1bit a24(.a(a[7]), .b(b[7]), .alu_op(alu_op), .control(c23), .carry_out(c24), .result(s[7]));
alu_1bit a25(.a(a[6]), .b(b[6]), .alu_op(alu_op), .control(c24), .carry_out(c25), .result(s[6]));
alu_1bit a26(.a(a[5]), .b(b[5]), .alu_op(alu_op), .control(c25), .carry_out(c26), .result(s[5]));
alu_1bit a27(.a(a[4]), .b(b[4]), .alu_op(alu_op), .control(c26), .carry_out(c27), .result(s[4]));
alu_1bit a28(.a(a[3]), .b(b[3]), .alu_op(alu_op), .control(c27), .carry_out(c28), .result(s[3]));
alu_1bit a29(.a(a[2]), .b(b[2]), .alu_op(alu_op), .control(c28), .carry_out(c29), .result(s[2]));
alu_1bit a30(.a(a[1]), .b(b[1]), .alu_op(alu_op), .control(c29), .carry_out(c30), .result(s[1]));
alu_1bit a31(.a(a[0]), .b(b[0]), .alu_op(alu_op), .control(c30), .carry_out(c31), .result(s[0]));

assign result = s;
assign carry_out = (alu_op == 3'b111) ? 1'b0 : c31;
assign zero = (result == 0) ? 1'b1 : 1'b0;
xor xor2(overflow, c30, c31); 

alu_1bit a32(.a(a[0]), .b(b[0]), .alu_op(3'b110), .control(c30), .carry_out(c31), .result(set));
assign result = {result[31:1], (alu_op == 3'b111) ? set : result[0]};

endmodule