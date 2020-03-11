`timescale 1ns/1ns
module MUX_TB();
reg [3:0] list;
reg [1:0] s;
wire out1, out2;

MUX_BM U0(.list(list), .s(s), .out(out1));
MUX_RTL U1(.list(list), .s(s), .out(out2));

initial
begin
list = 4'b1010; s = 2'b00;
#100; s = 2'b01;
#100; s = 2'b10;
#100; s = 2'b11;
end
endmodule
