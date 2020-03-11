module FA(a, b, c_in, s, c_out);
input a, b, c_in;
output reg s, c_out;

always@(a, b, c_in)
begin
if(c_in == 0)
	begin
	s = a^b;
	c_out = a&b;
	end
else
	begin
	s = ~(a^b);
	c_out = a|b;
	end
end

endmodule
