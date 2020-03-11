module Calculator(rst, clk, plus, minus, calc, h, t, o, dig5, dig4, dig3, dig2, dig1);
input rst, clk, plus, minus, calc, h, t, o;
output reg [3:0] dig5, dig4, dig3, dig2, dig1;
reg[3:0] next_state, state;
reg[9:0] num1, num2;
reg[10:0] result;

parameter [3:0] start = 0;
parameter [3:0] state_plus = 1;
parameter [3:0] plus_element1 = 2;
parameter [3:0] plus_element2 = 3;
parameter [3:0] plus_result = 4;
parameter [3:0] state_minus = 5;
parameter [3:0] minus_element1 = 6;
parameter [3:0] minus_element2 = 7;
parameter [3:0] minus_result = 8;

always@(negedge rst, posedge clk)
begin
if(!rst) begin state <= start; dig5 <= 10; dig4 <= 10; dig3 <= 10; dig2 <= 10; dig1 <= 10; end
//digit값이 10이면 LED에 아무것도 표시되지 않는다
else state <= next_state;
end

always@(posedge calc)
begin
	case(state)
		state_plus: 
			begin
				next_state <= plus_element1;
				dig3 <= 0; dig2 <= 0; dig1 <= 0;
			end
		plus_element1: 
			begin
				next_state <= plus_element2;
				num1 <= 100*dig3 + 10*dig2 + dig1;
				dig3 <= 0; dig2 <= 0; dig1 <= 0;
			end
		plus_element2: 
			begin
				next_state <= plus_result;
				num2 <= 100*dig3 + 10*dig2 + dig1;
			end
		state_minus: 
			begin
				next_state <= minus_element1;
				dig3 <= 0; dig2 <= 0; dig1 <= 0;
			end
		minus_element1: 
			begin
				next_state <= minus_element2;
				num1 <= 100*dig3 + 10*dig2 + dig1;
				dig3 <= 0; dig2 <= 0; dig1 <= 0;
			end
		minus_element2: 
			begin
				next_state <= minus_result;
				num2 <= 100*dig3 + 10*dig2 + dig1;
			end
		plus_result: 
			begin
				result = num1 + num2;
				dig1 = result%10;
				dig2 = (result%100)/10;
				dig3 = (result%1000)/100;
				dig4 = result/1000;
			end
		minus_result: 
			begin
				if(num1 >= num2) begin
					result = num1 - num2;
					dig1 = result%10;
					dig2 = (result%100)/10;
					dig3 = (result%1000)/100;
					dig4 = result/1000;
				end
				else begin
					result = num2 - num1;
					dig1 = result%10;
					dig2 = (result%100)/10;
					dig3 = (result%1000)/100;
					dig4 = result/1000;
					dig5 = 11;
				end
			end
	endcase
end

always@(state, plus, minus)
begin
	if(state == start) begin
		if(plus) next_state <= state_plus;
		else if(minus) next_state <= state_minus;
	end
end			

always@(posedge h, posedge t, posedge o)
begin
	case(state)
	plus_element1:
		begin
			if(h) dig3 <= dig3 + 1;
			if(dig3 == 9) dig3 <= 0;
			if(t) dig2 <= dig2 + 1;
			if(dig2 == 9) dig2 <= 0;
			if(o) dig1 <= dig1 + 1;
			if(dig1 == 9) dig1 <= 0;
		end
	plus_element2:
		begin
			if(h) dig3 <= dig3 + 1;
			if(dig3 == 9) dig3 <= 0;
			if(t) dig2 <= dig2 + 1;
			if(dig2 == 9) dig2 <= 0;
			if(o) dig1 <= dig1 + 1;
			if(dig1 == 9) dig1 <= 0;
		end
	minus_element1:
		begin
			if(h) dig3 <= dig3 + 1;
			if(dig3 == 9) dig3 <= 0;
			if(t) dig2 <= dig2 + 1;
			if(dig2 == 9) dig2 <= 0;
			if(o) dig1 <= dig1 + 1;
			if(dig1 == 9) dig1 <= 0;
		end
	minus_element2: 
		begin
			if(h) dig3 <= dig3 + 1;
			if(dig3 == 9) dig3 <= 0;
			if(t) dig2 <= dig2 + 1;
			if(dig2 == 9) dig2 <= 0;
			if(o) dig1 <= dig1 + 1;
			if(dig1 == 9) dig1 <= 0;
		end
	endcase
end

endmodule

