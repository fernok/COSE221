module top_module(rst, clk, cal, key3, key2, key1, key0, dig6, dig5, dig4, dig3, dig2, dig1);
input rst, clk, cal, key3, key2, key1, key0;
output [6:0] dig6, dig5, dig4, dig3, dig2, dig1;

wire [3:0] w6, w5, w4, w3, w2, w1;

calc CAL(rst, clk, cal, key3, key2, key1, key0, w6, w5, w4, w3, w2, w1);
seg7 S6(w6, dig6);
seg7 S5(w5, dig5);
seg7 S4(w4, dig4);
seg7 S3(w3, dig3);
seg7 S2(w2, dig2);
seg7 S1(w1, dig1);

endmodule

//rst, clk, cal, key3, key2, key1, key0, dig6, dig5, dig4, dig3, dig2, dig1);