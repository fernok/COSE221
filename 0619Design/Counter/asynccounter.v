module asynccounter(rst, clk, aout0, aout1, aout2, aout3);
input rst, clk;
output [3:0] aout0, aout1, aout2, aout3;
wire aclk1, aclk2, aclk3;

divcounter DC0(rst, clk, aout0, aclk1);
divcounter DC1(rst, aclk1, aout1, aclk2);
divcounter DC2(rst, aclk2, aout2, aclk3);
counter DC3(rst, aclk3, aout3);

endmodule