module mono_cnt(rst, clk, out);
input rst, clk;
output reg [3:0] out;
reg [3:0] d;

always@(negedge rst, posedge clk)
begin
if(!rst) begin out = 0; d = 0; end
else
begin
	d <= d + 1;
	if(d == 9) d <= 0;
	out <= d;
end
end
endmodule
