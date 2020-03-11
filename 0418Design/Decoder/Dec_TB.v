`timescale 1ns/1ns
module Dec_TB();
reg [2:0] list;
wire [7:0] out1, out2;
Dec_BM U0(.list(list), .out(out1));
Dec_RTL U1(.list(list), .out(out2));

initial
begin
list = 3'b000;
#100; list = 3'b001;
#100; list = 3'b010;
#100; list = 3'b011;
#100; list = 3'b100;
#100; list = 3'b101;
#100; list = 3'b110;
#100; list = 3'b111;
end

endmodule
