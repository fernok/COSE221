module synccounter (rst, clk, out0, out1, out2, out3);
input rst, clk;
output [3:0] out0, out1, out2, out3;
wire clk1, clk2, clk3;

freq_div FD(rst, clk, clk1, clk2, clk3);
counter C0(rst, clk, out0);
counter C1(rst, clk1, out1);
counter C2(rst, clk2, out2);
counter C3(rst, clk3, out3);

endmodule
