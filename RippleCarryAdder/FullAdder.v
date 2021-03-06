module FullAdder(x, y, c_in, s, c_out);
input x, y, c_in;
output reg s, c_out;

always@(x, y, c_in)
begin
	if(~c_in) begin
		s = x^y; c_out = x&y;
	end
	else begin
		s = ~(x^y); c_out = x|y;
	end
end

endmodule
