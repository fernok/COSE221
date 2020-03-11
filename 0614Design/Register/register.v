module register(rst, clk, d, q);
input rst, clk;
input [7:0] d;
output reg [7:0] q;

always@(negedge rst, posedge clk)
begin
if(!rst) q <= 0;
else q <= d;
end
endmodule
