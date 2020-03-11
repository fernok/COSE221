`timescale 1ns/1ns
module TestBench();
reg [3:0] A, B;
wire EQ, ALB, AGB;

Fourbit U0(.A(A), .B(B), .EQ(EQ), .ALB(ALB), .AGB(AGB));

initial
begin
A = 4'b0000; B = 4'b0100; 
#100; A = 4'b1100; B = 4'b1001;
#100; A = 4'b1111; B = 4'b1111;
#100; A = 4'b0010; B = 4'b1011;
end

endmodule
