module freq_div(rst, clk, clk1, clk10, clk100, clk1000);
input rst, clk;
reg [2:0] q10;
reg [5:0] q100;
reg [8:0] q1000;
output reg clk1, clk10, clk100, clk1000;

always@(clk)
begin
clk1 = clk;
end

always@(negedge rst, posedge clk)
begin
if(!rst)
	begin
	clk1 = 0;
	clk10 = 0;
	clk100 = 0;
	clk1000 = 0;
	q10 = 0;
	q100 = 0;
	q1000 = 0;
	end
else
	begin
	q10 <= q10 + 1;
	q100 <= q100 +1;
	q1000 <= q1000 + 1;
	if(q10 == 4) q10 <= 0;
	else if(q10 == 0) clk10 = !clk10;
	if(q100 == 49) q100 <= 0;
	else if(q100 == 0) clk100 = !clk100;
	if(q1000 == 499) q1000 <= 0;
	else if(q1000 == 0) clk1000 = !clk1000;
	end
end
endmodule
