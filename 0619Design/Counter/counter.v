module counter(rst, clk, out);
input rst, clk;
output reg [3:0] out;
reg [3:0] q;

always@(negedge rst, posedge clk)
begin
if(!rst) begin q = 0; out = 0; end
else begin
	q <= q + 1;
	if(q == 9) q <= 0;
	out <= q;
	end
end
endmodule