module freqdiv_cnt(rst, clk, out, outclk);
input rst, clk;
reg [2:0] cnt;
reg [3:0] d;
output reg [3:0] out;
output reg outclk;

always@(negedge rst, posedge clk)
begin
if(!rst) begin out = 0; outclk = 0; cnt = 0; d = 0; end
else
	begin
		cnt <= cnt + 1;
		d <= d + 1;
		if(cnt == 4) cnt <= 0;
		else if(cnt == 0) outclk = !outclk;
		if(d == 9) d <= 0;
		out <= d;
	end
end
endmodule
