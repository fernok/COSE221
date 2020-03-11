module DFlipFlop(D, rst, clk, Q);
input D, rst, clk;
output reg Q;

always@(negedge rst or posedge clk)
begin
if(!rst)
	Q <= 0;
else
	Q <= D;
end

endmodule
