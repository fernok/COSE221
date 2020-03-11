module calculator(rst, clk, cal, key3, key2, key0, dig6, dig4, dig2, dig1);
input rst, clk, cal, key3, key2, key0;
output [6:0] dig6, dig4, dig2, dig1;

wire [3:0] w6, w4, w2, w1;

digit_calc CAL(rst, clk, cal, key3, key2, key0, w6, w4, w2, w1);
seg7 S6(w6, dig6);
seg7 S4(w4, dig4);
seg7 S2(w2, dig2);
seg7 S1(w1, dig1);

endmodule
