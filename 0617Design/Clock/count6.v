module count6(rst, clk, out);
input rst, clk;
output reg [2:0] out;
reg [2:0] q;

always@(negedge rst, posedge clk)
begin
if(!rst) begin out = 0; q = 0; end
else begin
	q <= q + 1;
	if(q == 5) q <= 0;
	out <= q;
end
end
endmodule