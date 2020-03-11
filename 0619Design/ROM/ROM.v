module ROM(ce, oe, addr, data);
input ce, oe;
input [3:0] addr;
output reg [3:0] data;
reg [3:0] ROM [15:0];

initial
begin
ROM[0] = 4'b0000;
ROM[1] = 4'b0010;
ROM[2] = 4'b0100;
ROM[3] = 4'b0110;
ROM[4] = 4'b1000;
ROM[5] = 4'b1010;
ROM[6] = 4'b1100;
ROM[7] = 4'b1110;
ROM[8] = 4'b0001;
ROM[9] = 4'b0011;
ROM[10] = 4'b0101;
ROM[11] = 4'b0111;
ROM[12] = 4'b1001;
ROM[13] = 4'b1011;
ROM[14] = 4'b1101;
ROM[15] = 4'b1111;
end

always@(ce, addr, oe)
begin
if(!ce) begin
	if(!oe) data = ROM[addr];
	else data = 4'b0000;
	end
else data = 4'b0000;
end

endmodule
