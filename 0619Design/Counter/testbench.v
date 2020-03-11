`timescale 1ns/1ns
module testbench();
reg rst, clk;
wire cs10, cm1, cm10, ch;
wire [3:0] h1, m1, s1;
wire [2:0] m10, s10;
wire [1:0] h10;

freqdiv FD(rst, clk, cs10, cm1, cm10, ch);
count10 CS1(rst, clk, s1);
count6 CS10(rst, cs10, s10);
count10 CM1(rst, cm1, m1);
count6 CM10(rst, cm10, m10);
count24 CH(rst, ch, h10, h1);

initial
begin
clk = 0;
forever #5 clk = !clk;
end

initial
begin
rst = 0;
#137; rst = 1;
end


endmodule
