module async_cnt(rst, clk, out0, out1, out2, out3);
input rst, clk;
output [3:0] out0, out1, out2, out3;
wire clk0, clk1, clk2;

freqdiv_cnt ACNT0(rst, clk, out0, clk0);
freqdiv_cnt ACNT1(rst, clk0, out1, clk1);
freqdiv_cnt ACNT2(rst, clk1, out2, clk2);
mono_cnt ACNT3(rst, clk2, out3);

endmodule
