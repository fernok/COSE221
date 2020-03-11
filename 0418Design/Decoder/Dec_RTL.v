module Dec_RTL(list, out);
input [2:0] list;
output [7:0] out;

assign out[7] = ~list[2]&~list[1]&~list[0];
assign out[6] = ~list[2]&~list[1]&list[0];
assign out[5] = ~list[2]&list[1]&~list[0];
assign out[4] = ~list[2]&list[1]&list[0];
assign out[3] = list[2]&~list[1]&~list[0];
assign out[2] = list[2]&~list[1]&list[0];
assign out[1] = list[2]&list[1]&~list[0];
assign out[0] = list[2]&list[1]&list[0];

endmodule
