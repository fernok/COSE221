`timescale 1ns/1ns

module tb_top_seg7();
reg rst, clk;
wire [6:0] s1, s2, s3, s4, s5, s6;

top_seg7 u0(rst, clk, s1, s2, s3, s4, s5, s6);

initial
begin
rst=0;
#33; rst=1;
end

initial
begin
clk=0;
forever #5 clk=~clk;
end

endmodule