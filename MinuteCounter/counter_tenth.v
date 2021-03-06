module counter_tenth(rst, in_clk, q, out_clk);
  input in_clk, rst;
  output reg out_clk;
  output [3:0]q;

  reg [3:0]q, temp;
  
  always@(posedge in_clk or negedge rst) begin
    if(!rst) begin
      temp<=0;
      q<=0;  
      out_clk<=0;  
    end    
    else begin 

      if(temp == 5)
	begin
          temp <= 0;
	  out_clk = !out_clk;
	end
      else
        temp<=temp+1;

      q <= temp;
    end 
     
  end  
endmodule 
