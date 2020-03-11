module clk_dll(rst, clk, out_clk0, out_clk1);
  input clk, rst;

  output out_clk0, out_clk1;

  reg out_clk0, out_clk1;
  reg [24:0]cnt_clk0;
  reg [27:0]cnt_clk1;

  always@(posedge clk or negedge rst) begin
    if(!rst) begin
      out_clk0 = 0;
      out_clk1 = 0;
      cnt_clk0 = 0;
      cnt_clk1 = 0;
    end
    
    else begin  
      cnt_clk0 <= cnt_clk0+1;
            
      if(cnt_clk0 == 24999999)
        cnt_clk0 <=0;
      else if(cnt_clk0==0)
        out_clk0 = !out_clk0;

      if(cnt_clk1 == 249999999)
	cnt_clk1 <=0;
      else if(cnt_clk1==0)
	out_clk1 = !out_clk1;
    end
    
  end    
endmodule

