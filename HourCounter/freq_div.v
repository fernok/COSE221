module freq_div(rst, in_clk, clk_s10, clk_m1, clk_m10, clk_h);
input rst, in_clk;
output reg clk_s10, clk_m1, clk_m10, clk_h;
reg [2:0] d_s10;
reg [4:0] d_m1;
reg [8:0] d_m10;
reg [10:0] d_h;

always@(negedge rst, posedge in_clk)
begin
if(!rst)
   begin
     d_s10 = 0;
     d_m1 = 0;
     d_m10 = 0;
     d_h = 0;
     clk_s10 = 0;
     clk_m1 = 0;
     clk_m10 = 0;
     clk_h = 0;
   end
else
   begin
     d_s10 <= d_s10 + 1;
     d_m1 <= d_m1 + 1;
     d_m10 <= d_m10 + 1;
     d_h <= d_h + 1;
     if(d_s10 == 4)
	d_s10 <= 0;
     else if(d_s10 == 0)
	clk_s10 = !clk_s10;
     if(d_m1 == 29)
	d_m1 <= 0;
     else if(d_m1 == 0)
	clk_m1 = !clk_m1;
     if(d_m10 == 299)
	d_m10 <= 0;
     else if(d_m10 == 0)
	clk_m10 = !clk_m10;
     if(d_h == 1799)
	d_h <= 0;
     else if(d_h == 0)
	clk_h = !clk_h;
   end


end

endmodule
