module digit_calc(rst, clk, cal, key3, key2, key0, dig6, dig4, dig2, dig1);
input rst, clk, cal, key3, key2, key0;
output reg [3:0] dig6, dig4, dig2, dig1;

reg [4:0] result;
reg [1:0] state, next_state;

parameter [1:0] start = 0;
parameter [1:0] plus = 1;
parameter [1:0] minus = 2;

initial
begin
	dig6 = 10; dig4 = 10; dig2 = 10; dig1 = 10; result = 0; state = start;
end

always@(negedge rst, posedge clk)
begin
if(!rst) state <= start;
else state <= next_state;
end

always@(negedge rst, negedge key3)
begin
if(!rst) dig6 <= 0;
else begin
	dig6 <= dig6 + 1;
	if(dig6 >= 9) dig6 <= 0;
	end
end

always@(negedge rst, negedge key2)
begin
if(!rst) dig4 <= 0;
else begin
	dig4 <= dig4 + 1;
	if(dig4 >= 9) dig4 <= 0;
	end
end

always@(cal)
begin
	if(cal)
		next_state <= plus;
	else
		next_state <= minus;
end

always@(negedge rst, negedge key0)
begin
	if(!rst) begin dig2 = 10; dig1 = 10; end
	case(state)
	plus:
	begin
		if(!key0) begin
			result = dig6 + dig4;
			dig2 = (result >= 10) ? 1 : 10;
			dig1 = (result >= 10) ? (result - 10) : result;
		end
	end
	minus:
	begin
		if(!key0) begin
			result = (dig6 >= dig4) ? (dig6 - dig4) : (dig4 - dig6);
			dig2 = (dig6 >= dig4) ? 10 : 11;
			dig1 = (result >= 10) ? (result - 10) : result;
		end
	end
	endcase
end


endmodule
