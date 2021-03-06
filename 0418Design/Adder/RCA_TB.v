`timescale 1ns/1ns
module RCA_TB();
reg [3:0] A, B;
reg c_in;
wire [3:0] S;
wire c_out;

RCA F0(.A(A), .B(B), .c_in(c_in), .S(S), .c_out(c_out));

initial
begin
c_in = 0; A = 4'b0001; B = 4'b0111;
#100; A = 4'b1011; B = 4'b0101;
#100; A = 4'b0110; B = 4'b1000;
#100; A = 4'b1111; B = 4'b1111;
#100; c_in = 1; A = 4'b0001; B = 4'b0111;
#100; A = 4'b1011; B = 4'b0101;
#100; A = 4'b0110; B = 4'b1000;
#100; A = 4'b1111; B = 4'b1111;
end


endmodule
