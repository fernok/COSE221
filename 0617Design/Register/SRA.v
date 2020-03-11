module SRA(rst, clk, d, q);
input rst, clk;
input [7:0] d;
output reg [7:0] q;

always@(negedge rst, posedge clk)
begin
if(!rst) q = 0;
else begin
	if(!q) q <= d;
	else q[7:0] <= {q[7], q[7:1]};
end
end

endmodule
