module hourcounter(rst, clk, out_h1, out_h10);
input rst, clk;
output reg [1:0] out_h10;
output reg [3:0] out_h1;
reg [4:0] q, temp;

always@(negedge rst, posedge clk)
begin
if(!rst) begin out_h10 = 0; out_h1 = 0; q = 0; temp = 0; end
else begin
	temp <= temp + 1;
	if(temp == 23) temp <= 0;
	q <= temp;
	end
end

always@(q)
begin
if(q < 10) begin out_h10 <= 0; out_h1 <= q; end
else if(10 <= q && q < 20) begin out_h10 <= 1; out_h1 <= q - 10; end
else if(q > 20) begin out_h10 = 2; out_h1 <= q - 20; end
end

endmodule