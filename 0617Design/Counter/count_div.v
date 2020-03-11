module count_div(rst, clk, out, outclk);
input rst, clk;
output reg [3:0] out;
output reg outclk;
reg [3:0] q;
reg [2:0] p;

always@(negedge rst, posedge clk)
begin
if(!rst) begin out = 0; outclk = 0; q = 0; p = 0; end
else begin
	q <= q + 1;
	p <= p + 1;
	if(p == 4) p <= 0;
	else if(p == 0) outclk <= ! outclk;
	if(q == 9) q <= 0; 
	out <= q;
	end
end

endmodule
