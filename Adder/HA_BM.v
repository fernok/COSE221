module HA_BM(x, y, s, c);
input x, y;
output reg s, c;

always@(x, y)
begin
if(x==0 && y==0)
	begin
	s = 0; c = 0;
	end
else if(x==1 && y==1)
	begin
	s = 0; c = 1;
	end
else
	begin
	s = 1; c = 0;
	end
end

endmodule
