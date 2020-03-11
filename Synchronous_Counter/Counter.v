module Counter(clk, rst, out);
input clk, rst;
output [3:0] out;
reg [3:0] out;
reg [3:0] d;

always@(negedge rst, posedge clk)
begin
if(!rst)
	begin
	d <= 0;
	out <= 0;
	end
else
	begin
	d <= d + 1;
	out <= d;
	end
end
endmodule
