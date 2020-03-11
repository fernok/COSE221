module FullAdder(x, y, c_in, s, c_out);
input x, y, c_in;
output reg s, c_out;

always@(x, y, c_in)
begin
	if(~c_in)
	begin
		if(~x)
		begin
			if(~y)
			begin s = 0; c_out = 0; end
			if(y)
			begin s = 1; c_out = 0; end
		end
		if(x)
		begin
			if(~y)
			begin s = 1; c_out = 0; end
			if(y)
			begin s = 0; c_out = 1; end
		end
	end
	if(c_in)
	begin
		if(~x)
		begin
			if(~y)
			begin s = 1; c_out = 0; end
			if(y)
			begin s = 0; c_out = 1; end
		end
		if(x)
		begin
			if(~y)
			begin s = 0; c_out = 1; end
			if(y)
			begin s = 1; c_out = 1; end
		end
	end
end

endmodule
