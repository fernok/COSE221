`timescale 1ns/1ns
module TB();
reg rst, clk, pause;
wire [3:0] c1, c10, s10, m10;
wire [2:0] s1, m1;
wire cc1, cc10, cs1, cs10, cm1, cm10;

freq_div FD(rst, clk, pause, cc1, cc10, cs1, cs10, cm1, cm10);
count10 C1(rst, cc1, c1);
count10 C10(rst, cc10, c10);
count10 S1(rst, cs1, s1);
count6 S10(rst, cs10, s10);
count10 M1(rst, cm1, m1);
count6 M10(rst, cm10, m10);

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

initial
begin
pause = 0;
#123; pause = 1;
#965; pause = 0;
#2044; pause = 1;
end

endmodule