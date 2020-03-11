`timescale 1ns/1ns
module FD_TB();
reg clk, rst;
wire clk0, clk1, clk2, clk3;

FreqDivider U9(.clk(clk), .rst(rst), .clk0(clk0), .clk1(clk1), .clk2(clk2), .clk3(clk3));

initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
rst = 0;
#53; rst = 1;
end
endmodule
