module top_seg7(rst, clk, seg0, seg1, seg2);
  input  rst, clk;

  output[6:0] seg0, seg1, seg2;

  wire[3:0] digit0, digit1, digit2;
  wire out_clk0, out_clk1, out_clk2, out_clk3;
  
  // 50MHz -> 1Hz  divide
  clk_dll u0(rst, clk, out_clk0, out_clk1); 
  
  // counter 
  counter c0(rst, out_clk0, digit0); 
  counter_tenth c1(rst, out_clk1, digit1, out_clk2); 
  counter c2(rst, out_clk2, digit2);
   
  // 7-segment decoder   
  seg7 s0(digit0, seg0);
  seg7 s1(digit1, seg1);
  seg7 s2(digit2, seg2);
  
endmodule

