`timescale 1ns/1ns
module RCAtb();
reg [3:0] a, b;
wire [4:0] sum;

RCA UU(.A(a), .B(b), .S(sum));

initial
begin
a = 0000; b = 0000;
#100; a = 0001; b = 0111;
#100; a = 1111; b = 1001;
#100; a = 0111; b = 1001;
end

endmodule
