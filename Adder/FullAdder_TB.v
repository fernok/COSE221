`timescale 1ns/1ns
module FullAdder_TB();
reg x, y, c_in;
wire s, c_out;

FullAdder V2(.x(x), .y(y), .c_in(c_in), .s(s), .c_out(c_out));

initial
begin
x = 0; #400; x = 1;
end

initial
begin
y = 0; #200; y = 1; #200; y = 0; #200; y = 1;
end

initial
begin
c_in = 0; #100; c_in = 1; #100; c_in = 0; #100; c_in = 1;
#100; c_in = 0; #100; c_in = 1; #100; c_in = 0; #100; c_in = 1;
end

endmodule
