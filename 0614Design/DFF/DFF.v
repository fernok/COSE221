module DFF(rst, clk, d, q);
input d, clk, rst;
output reg q;

always@(negedge rst, posedge clk)
begin
if(!rst) q <= 0;
else q <= d;
end

endmodule
