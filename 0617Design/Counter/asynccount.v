module asynccount(rst, clk, aout0, aout1, aout2, aout3);
input rst, clk;
output [3:0] aout0, aout1, aout2, aout3;
wire clk10, clk100, clk1000;

count_div CD0(rst, clk, aout0, clk10);
count_div CD1(rst, clk10, aout1, clk100);
count_div CD2(rst, clk100, aout2, clk1000);
count CD3(rst, clk1000, aout3);

endmodule
