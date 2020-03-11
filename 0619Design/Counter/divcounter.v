module divcounter(rst, clk, out, outclk);
input rst, clk;
output reg [3:0] out;
output reg outclk;
reg [3:0] q;
reg [2:0] d;

always@(negedge rst, posedge clk)
begin
if(!rst) begin out = 0; q = 0; d = 0; outclk = 0; end
else begin
	q <= q + 1;
	d <= d + 1;
	if(q == 9) q <= 0;
	if(d == 4) d <= 0;
	else if (d == 0) outclk <= !outclk;
	out <= q;
	end
end
endmodule
