module calc(rst, clk, cal, key3, key2, key1, key0, dig6, dig5, dig4, dig3, dig2, dig1);
input rst, clk, cal, key3, key2, key1, key0;
output reg [3:0] dig6, dig5, dig4, dig3, dig2, dig1;
reg [3:0] q10, q1, p10, p1;
reg [7:0] result;
reg [1:0] state, next_state;

parameter [1:0] start = 0;
parameter [1:0] add = 1;
parameter [1:0] final = 2;

always@(negedge rst, posedge clk)
begin
if(!rst) state <= start;
else state <= next_state;
end

always@(negedge rst, posedge key0, posedge key1)
begin
if(state == add) begin
if(!rst) begin dig2 = 0; dig1 = 0; end
else begin
	if(key1) begin
		dig2 <= dig2 + 1;
		if(dig2 == 4'b1001) dig2 <= 0;
	end
	else if(key0) begin
		dig1 <= dig1 + 1;
		if(dig1 == 4'b1001) dig1 <= 0;
	end
end
end
else if(state == final) begin
	dig3 <= (result >= 100) ? 1 : 10;
	dig2 <= (result%100)/100;
	dig1 <= result/10;
end
end

always@(negedge rst, posedge key2, posedge key3)
begin
if(state == add) begin
if(!rst) begin dig6 = 0; dig5 = 0; end
else begin
	if(key3) begin
		dig6 <= dig6 + 1;
		if(dig6 == 4'b1001) dig6 <= 0;
	end
	else if(key2) begin
		dig5 <= dig5 + 1;
		if(dig5 == 4'b1001) dig5 <= 0;
	end
end
end
else if(state == final) begin
	dig6 <= 10; dig5 <= 10; dig4 <= 10;
end
end

always@(posedge cal)
begin
	if(state == start) next_state <= add;
	else if(state == add) begin
		next_state <= final;
		result <= 10*dig6 + 10*dig2 + dig5 + dig1;
	end
end

endmodule