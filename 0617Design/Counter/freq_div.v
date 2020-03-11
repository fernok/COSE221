module freq_div(rst, clk, pause, c1, c10, s1, s10, m1, m10);
input rst, clk, pause;
output reg c10, s1, s10, m1, m10;
reg [1:0] qc10;
reg [5:0] qs1;
reg [8:0] qs10;
reg [11:0] qm1;
reg [14:0] qm10;
output c1;

assign c1 = pause&clk;

always@(negedge rst, posedge c1)
begin
if(!rst) begin 
	c10 = 0; s1 = 0; s10 = 0; m1 = 0; m10 = 0;
	qc10 = 0; qs1 = 0; qs10 = 0; qm1 = 0; qm10 = 0;
	end
else begin
	qc10 <= qc10 + 1; qs1 <= qs1 + 1; qs10 <= qs10 + 1; qm1 <= qm1 + 1; qm10 <= qm10 + 1;
	if(qc10 == 4) qc10 <= 0;
	else if(qc10 == 0) c10 <= !c10;
	if(qs1 == 49) qs1 <= 0;
	else if(qs1 == 0) s1 <= !s1;
	if(qs10 == 499) qs10 <= 0;
	else if(qs10 == 0) s10 <= !s10;
	if(qm1 == 2999) qm1 <= 0;
	else if(qm1 == 0) m1 <= !m1;
	if(qm10 == 17999) qm10 <= 0;
	else if(qm10 == 0) m10 <= !m10;
	end
end

endmodule	
