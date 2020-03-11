module FF_t1(rst, clk, d, q);
input rst, clk, d;
reg sub;
output reg q;

always@(negedge rst, posedge clk)
begin
if(!rst)
	begin sub = 0; q = 0; end
else
	begin
	sub <= d;
	q <= sub;
	end
end
endmodule
