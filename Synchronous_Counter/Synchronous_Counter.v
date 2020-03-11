module Synchronous_Counter(input_clk, rst, cnt0, cnt1, cnt2, cnt3);
input input_clk, rst;
output [3:0] cnt0, cnt1, cnt2, cnt3;
wire clk0, clk1, clk2, clk3;

FreqDivider F0(.clk(input_clk), .rst(rst), .clk0(clk0), .clk1(clk1), .clk2(clk2), .clk3(clk3));
Counter U0(.clk(clk0), .rst(rst), .out(cnt0));
Counter U1(.clk(clk1), .rst(rst), .out(cnt1));
Counter U2(.clk(clk2), .rst(rst), .out(cnt2));
Counter U3(.clk(clk3), .rst(rst), .out(cnt3));

endmodule
