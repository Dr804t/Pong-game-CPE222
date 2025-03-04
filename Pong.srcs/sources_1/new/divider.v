`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2023 02:52:48 PM
// Design Name: 
// Module Name: divider
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


module divider(
    input clk,
    output reg out_clk
    );
    reg[1:0] count = 0;
    
    always@(posedge clk)
        if(count == 3)
            begin
                count <= 0;
                out_clk <= 1;
            end
        else
            begin
                count <= count +1;
                out_clk <= 0;
            end
            
endmodule
