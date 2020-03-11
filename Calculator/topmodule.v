module topmodule(rst, clk, plus, minus, calc, h, t, o, seg5, seg4, seg3, seg2, seg1);
input rst, clk, plus, minus, calc, h, t, o;
output [6:0] seg5, seg4, seg3, seg2, seg1;

wire [3:0] dig5, dig4, dig3, dig2, dig1;

Calculator CLT(rst, clk, plus, minus, calc, h, t, o, dig5, dig4, dig3, dig2, dig1);
segment7 SG5(dig5, seg5);
segment7 SG4(dig4, seg4);
segment7 SG3(dig3, seg3);
segment7 SG2(dig2, seg2);
segment7 SG1(dig1, seg1);

endmodule
