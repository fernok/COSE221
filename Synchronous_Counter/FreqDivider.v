module FreqDivider(clk, rst, clk0, clk1, clk2, clk3);
input clk, rst;
output reg clk0, clk1, clk2, clk3;
reg [5:0] d1;
reg [8:0] d2;
reg [11:0] d3;

always@(clk)
begin
clk0 = clk;
end

always@(negedge rst, posedge clk)
begin
if(!rst)
	begin
	d1 = 4;
	d2 = 49;
	d3 = 499;
	clk0 = 0;
	clk1 = 0;
	clk2 = 0;
	clk3 = 0;
	end
else
	begin
	d1 <= d1 + 1;
	d2 <= d2 + 1;
	d3 <= d3 + 1;
	if(d1 == 4)
		begin
		d1 <= 0;
		clk1 <= ~clk1;
		end
	if(d2 == 49)
		begin
		d2 <= 0;
		clk2 <= ~clk2;
		end
	if(d3 == 499)
		begin
		d3 <= 0;
		clk3 <= ~clk3;
		end
	end
end

endmodule
