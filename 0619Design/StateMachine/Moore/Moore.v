module Moore(rst, clk, i, m, n, y);
input rst, clk, i;
input [1:0] m, n;
output reg [2:0] y;

reg state;
reg next_state;

parameter S0 = 1'b0, S1 = 1'b1;

always@(negedge rst, posedge clk)
begin
if(!rst) state = S0;
else state = next_state;
end

always@(i, state)
begin
case(state)
	S0: if(i == 1)
			next_state = S1;
		else
			next_state = S0;
	S1: if(i == 1)
			next_state = S0;
		else
			next_state = S1;
endcase
end

always@(state, m, n)
begin
case(state)
	S0: y = m;
	S1: y = n;
endcase
end
endmodule