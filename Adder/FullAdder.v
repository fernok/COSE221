module FullAdder(x, y, c_in, s, c_out);
input x, y, c_in;
output s, c_out;
wire temp_sum, temp_carry1, temp_carry2;

HA_BM V0(.x(x), .y(y), .s(temp_sum), .c(temp_carry1));
HA_BM V1(.x(c_in), .y(temp_sum), .s(s), .c(temp_carry2));

assign c_out = temp_carry1|temp_carry2;

endmodule
