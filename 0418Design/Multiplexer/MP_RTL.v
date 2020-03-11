module MP_RTL(list, s, out);
input [3:0] list;
input [1:0] s;
output out;
wire temp0, temp1, temp2, temp3;

assign temp0 = list[0]&~s[1]&~s[0];
assign temp1 = list[1]&~s[1]&s[0];
assign temp2 = list[2]&s[1]&~s[0];
assign temp3 = list[3]&s[1]&s[0];

assign out = temp0|temp1|temp2|temp3;

endmodule
