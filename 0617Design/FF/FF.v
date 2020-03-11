module FF(rst, clk, d, q);
input rst, clk, d;
output reg q;

always@(negedge rst, posedge clk)
begin
if(!rst) q = 0;
else q <= d;
end

endmodule
