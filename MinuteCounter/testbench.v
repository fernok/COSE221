`timescale 1ns/1ns
module testbench();
reg rst, clk;
wire seg0, seg1, seg2;

top_seg7 FUNC(rst, clk, seg0, seg1, seg2);

initial
begin
clk = 0;
forever #5 clk = !clk;
end

initial
begin
rst = 0;
#132; rst = 1;
end

endmodule
