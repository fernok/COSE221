`timescale 1ns/1ns
module testbench();
reg rst, clk;
reg [7:0] d;
wire [7:0] qreg, qsll, qsrl, qsla, qsra, qrol, qror;

ebitreg U0(rst, clk, d, qreg);
SLL U1(rst, clk, d, qsll);
SRL U2(rst, clk, d, qsrl);
SLA U3(rst, clk, d, qsla);
SRA U4(rst, clk, d, qsra);
ROL U5(rst, clk, d, qrol);
ROR U6(rst, clk, d, qror);

initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
rst = 0;
#137; rst = 1;
end

initial
begin
d = 8'b10010101;
end

endmodule

