module TopModule(a1, b1, a2, b2, a3, b3, a4, b4, s, out);
input [3:0] a1, b1, a2, b2, a3, b3, a4, b4;
input [1:0] s;
output [4:0] out;
wire [4:0] sum1, sum2, sum3, sum4;

RCA U1(.A(a1), .B(b1), .S(sum1));
RCA U2(.A(a2), .B(b2), .S(sum2));
RCA U3(.A(a3), .B(b3), .S(sum3));
RCA U4(.A(a4), .B(b4), .S(sum4));

MUX U0(.A(sum1), .B(sum2), .C(sum3), .D(sum4), .s(s), .out(out));

endmodule
