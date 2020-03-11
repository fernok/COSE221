`timescale 1ns/1ns
module FATB();
reg x, y, c_in;
wire s, c_out;

FullAdder III(.x(x), .y(y), .c_in(c_in), .s(s), .c_out(c_out));

initial
begin
c_in = 0; x = 0; y = 0;
#100; y = 1;
#100; x = 1; y = 0;
#100; y = 1;
#100; c_in = 1; x = 0; y = 0;
#100; y = 1;
#100; x = 1; y = 0;
#100; y = 1;
end

endmodule
