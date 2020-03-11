`timescale 1ns/1ns
module HalfAdder_TB();
reg x, y;
wire s1, c1, s2, c2;

HA_RTL U0(.x(x), .y(y), .s(s1), .c(c1));
HA_BM U1(.x(x), .y(y), .s(s2), .c(c2));

initial
begin
x = 0; y = 0;
#100; y = 1;
#100; x = 1; y = 0;
#100; y = 1;
end

endmodule
