`timescale 1ns/1ns
module Decoder_TB();
reg [2:0] xyz;
wire [7:0] out1, out2;

Decoder3_8 Name(.xyz(xyz), .out(out1));
Decoder_RTL Name2(.x(xyz[2]), .y(xyz[1]), .z(xyz[0]), .D(out2));

initial
begin
xyz = 3'b000;
#100; xyz = 3'b011;
#100; xyz = 3'b101;
end
endmodule
