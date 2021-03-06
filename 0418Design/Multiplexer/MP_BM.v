module MP_BM(list, s, out);
input [3:0] list;
input [1:0] s;
output reg out;

always@(list, s)
begin
	case(s)
	2'b00: out = list[0];
	2'b01: out = list[1];
	2'b10: out = list[2];
	2'b11: out = list[3];
	endcase
end

endmodule
