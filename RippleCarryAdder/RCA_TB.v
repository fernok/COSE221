`timescale 1ns/1ns
module RCA_TB();
reg [3:0] A, B;
reg c_in;
wire [3:0] S;
wire c_out;

RCA TB(.A(A), .B(B), .c_in(c_in), .S(S), .c_out(c_out));

initial
begin
c_in = 1'b0; A = 4'b0001; B = 4'b0011; 	//when c_in is 0
#100; A = 4'b0110; B = 4'b1101;
#100; A = 4'b0101; B = 4'b0101;
#100; A = 4'b1111; B = 4'b1111;
#100; c_in = 1'b1; A = 4'b0110; B = 4'b0101;	//when c_in is 1
#100; A = 4'b1100; B = 4'b0100;
#100; A = 4'b0010; B = 4'b0011;
#100; A = 4'b1111; B = 4'b1111;
end
endmodule
