`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 02:16:00 PM
// Design Name: 
// Module Name: top_module1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_module(
    input clk,
    input score_up,
    output [6:0] seg
);
    wire div_clk;
    wire [3:0]led;
    
    divide Divider(.clock(clk), .clk_out(div_clk));
    
    counter Counter(.clk_in(div_clk), .score_up(score_up), .led(led));
    
    bcdto7seg BCD(.led(led), .seg(seg));
    
endmodule 
