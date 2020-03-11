module RCA(A, B, S);
input [3:0] A, B;
output [4:0] S;
wire c0, c1, c2, c3, c4;

assign c0 = 1'b0;

FA F1(.a(A[0]), .b(B[0]), .c_in(c0), .s(S[0]), .c_out(c1));
FA F2(.a(A[1]), .b(B[1]), .c_in(c1), .s(S[1]), .c_out(c2));
FA F3(.a(A[2]), .b(B[2]), .c_in(c2), .s(S[2]), .c_out(c3));
FA F4(.a(A[3]), .b(B[3]), .c_in(c3), .s(S[3]), .c_out(c4));

assign S[4] = c4;

endmodule
