module top_seg7(rst, clk, seg_s1, seg_s10, seg_m1, seg_m10, seg_h1, seg_h10);
  input  rst, clk;

  output[6:0] seg_s1, seg_s10, seg_m1, seg_m10, seg_h1, seg_h10;

  wire[3:0] digit_s1, digit_s10, digit_m1, digit_m10, digit_h1, digit_h10;
  wire out_clk;
  wire clk_s10, clk_m1, clk_m10, clk_h;
  
  // 50MHz -> 1Hz  divide
  clk_dll u0(rst, clk, out_clk); 

  freq_div f1(rst, out_clk, clk_s10, clk_m1, clk_m10, clk_h);
  
  // counter 
  cnt4 u1(rst, out_clk, digit_s1); 
  cnt10 u2(rst, clk_s10, digit_s10);
  cnt4 u3(rst, clk_m1, digit_m1);
  cnt10 u4(rst, clk_m10, digit_m10);
  cnt24 u5(rst, clk_h, digit_h1, digit_h10);
   
  // 7-segment decoder   
  seg7 s1(digit_s1, seg_s1);
  seg7 s2(digit_s10, seg_s10);
  seg7 s3(digit_m1, seg_m1);
  seg7 s4(digit_m10, seg_m10);
  seg7 s5(digit_h1, seg_h1);
  seg7 s6(digit_h10, seg_h10);
  
endmodule
