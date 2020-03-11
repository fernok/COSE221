module RAM(CE, ReadWrite, Address, DataIn, DataOut);
input CE, ReadWrite;
input [5:0] Address;
input [3:0] DataIn;
output reg [3:0] DataOut;
reg [3:0] RAM [63:0];

always@(CE, ReadWrite)
begin
if(!CE) begin
	if(ReadWrite) DataOut = RAM[Address];
	else RAM[Address] = DataIn;
	end
else DataOut = 4'b0000;
end

endmodule
