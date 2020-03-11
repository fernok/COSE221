module sync_cnt(rst, clk, out0, out1, out2, out3);
input rst, clk;
output [3:0] out0, out1, out2, out3;
wire clk1, clk10, clk100, clk1000;

freq_div FD(rst, clk, clk1, clk10, clk100, clk1000);

mono_cnt CNT0(rst, clk1, out0);
mono_cnt CNT1(rst, clk10, out1);
mono_cnt CNT2(rst, clk100, out2);
mono_cnt CNT3(rst, clk1000, out3);

endmodule
