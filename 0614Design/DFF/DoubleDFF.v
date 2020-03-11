module DoubleDFF(rst, clk, d, q);
input rst, clk, d;
output reg q;
reg q_sub;

always@(negedge rst, posedge clk)
if(!rst) q <= 0;
else
begin
	q_sub <= d;
	q <= q_sub;
end
endmodule
