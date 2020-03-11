`timescale 1ns/1ns
module TestBench();
reg clk, rst;
wire [3:0] cnt0, cnt1, cnt2, cnt3;

Synchronous_Counter SC0 (.input_clk(clk), .rst(rst), .cnt0(cnt0), .cnt1(cnt1), .cnt2(cnt2), .cnt3(cnt3));

initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
rst = 0;
#721; rst = 1;
end

endmodule
