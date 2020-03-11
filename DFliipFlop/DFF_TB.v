`timescale 1ns/1ns
module DFF_TB();
reg D, rst, clk;
wire Q;

DFlipFlop U0(.D(D), .rst(rst), .clk(clk), .Q(Q));

initial
begin
clk = 0;
forever #10 clk = ~clk;
end

initial
begin
rst = 0;
#48; rst = 1;
end

initial
begin
D = 0;
#6; D = ~D;
#7; D = ~D;
#3; D = ~D;
#15; D = ~D; 
#10; D = ~D; 
#8; D = ~D;
#12; D = ~D; 
#20; D = ~D;
#21; D = ~D;
#9; D = ~D;
#7; D = ~D;
#14; D = ~D; 
end
endmodule
