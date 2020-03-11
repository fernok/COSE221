`timescale 1ns/1ns
module RCA_TB();
reg [3:0] A, B;
reg c_in;
wire [3:0] S;
wire c_out;

RCA R0(.A(A), .B(B), .c_in(c_in), .S(S), .c_out(c_out));

initial
begin
A = 4'b0100; B = 4'b1101; c_in = 1;
#200; A = 4'b1001; B = 4'b0010; c_in = 1;
#200; A = 4'b0011; B = 4'b1000; c_in = 0;
end

endmodule
