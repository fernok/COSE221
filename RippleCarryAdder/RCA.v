module RCA(A, B, c_in, S, c_out);
input [3:0] A, B;
input c_in;
output [3:0] S;
output c_out;
wire temp1, temp2, temp3;

FullAdder FA0(.x(A[0]), .y(B[0]), .c_in(c_in), .s(S[0]), .c_out(temp1));
FullAdder FA1(.x(A[1]), .y(B[1]), .c_in(temp1), .s(S[1]), .c_out(temp2));
FullAdder FA2(.x(A[2]), .y(B[2]), .c_in(temp2), .s(S[2]), .c_out(temp3));
FullAdder FA3(.x(A[3]), .y(B[3]), .c_in(temp3), .s(S[3]), .c_out(c_out));

endmodule
