// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Top(btnU, btnL, btnD, btnR, sw, clk, reset, vgaRed, vgaGreen, vgaBlue, seg, an, Hsync, Vsync);
  input btnU;
  input btnL;
  input btnD;
  input btnR;
  input sw;
  input clk;
  input reset;
  output [3:0]vgaRed;
  output [3:0]vgaGreen;
  output [3:0]vgaBlue;
  output [6:0]seg;
  output [3:0]an;
  output Hsync;
  output Vsync;
endmodule
