`timescale 1ns/1ns
module testbench();
reg rst, clk;
wire [3:0] out0, out1, out2, out3, aout0, aout1, aout2, aout3;

sync_cnt F1(rst, clk, out0, out1, out2, out3);
async_cnt F2(rst, clk, aout0, aout1, aout2, aout3);

initial
begin
clk = 0;
forever #5 clk = !clk;
end

initial
begin
rst = 0;
#143; rst = 1;
end
endmodule