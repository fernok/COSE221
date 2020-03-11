`timescale 1ns/1ns
module TestBench();
reg [3:0] a1, b1, a2, b2, a3, b3, a4, b4;
reg [1:0] s;
wire [4:0] out;
TopModule Top_Func(.a1(a1), .b1(b1), .a2(a2), .b2(b2), .a3(a3), .b3(b3), .a4(a4), .b4(b4), .s(s), .out(out));

initial
begin
a1 = 0101; b1 = 0110; a2 = 1011; b2 = 0011; a3 = 1111; b3 = 1111; a4 = 0001; b4 = 0011;
s = 00;
#100; s = 01;
#100; s = 10;
#100; s = 11;
end

endmodule
