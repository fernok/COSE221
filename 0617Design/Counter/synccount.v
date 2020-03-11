module synccount(rst, clk, out0, out1, out2, out3);
input rst, clk;
output [3:0] out0, out1, out2, out3;
wire clk1, clk10, clk100, clk1000;

freq_div FD(rst, clk, clk1, clk10, clk100, clk1000);
count C0(rst, clk1, out0);
count C1(rst, clk10, out1);
count C2(rst, clk100, out2);
count C3(rst, clk1000, out3);

endmodule