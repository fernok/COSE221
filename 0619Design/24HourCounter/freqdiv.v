module freqdiv(rst, clk, s10, m1, m10, h);
input rst, clk;
output reg s10, m1, m10, h;
reg [2:0] qs10;
reg [4:0] qm1; 
reg [8:0] qm10;
reg [10:0] qh;

always@(negedge rst, posedge clk)
begin
if(!rst) begin
	s10 = 0; m1 = 0; m10 = 0; h = 0;
	qs10 = 0; qm1 = 0; qm10 = 0; qh = 0;
	end
else begin
	qs10 <= qs10 + 1; qm1 <= qm1 + 1;
	qm10 <= qm10 + 1; qh <= qh + 1;
	if(qs10 == 4) qs10 <= 0;
	else if(qs10 == 0) s10 <= !s10;
	if(qm1 == 29) qm1 <= 0;
	else if(qm1 == 0) m1 <=  !m1;
	if(qm10 == 299) qm10 <= 0;
	else if(qm10 == 0) m10 <= !m10;
	if(qh == 1799) qh <= 0;
	else if(qh == 0) h <= !h;
	end

end

endmodule
