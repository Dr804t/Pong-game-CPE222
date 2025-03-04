`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2023 05:30:59 PM
// Design Name: 
// Module Name: test
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


module test(
    input clk,
    output [15:0] tled
    
    );
    reg dir = 0;
    reg[15:0] i = 0;


    
        always@(posedge clk)
            begin
                if(i==0)begin
                    i = 16'b0000000000000010; end
                if(i == 16'b0000000000000001 || i == 16'b1000000000000000)
                begin
                    dir = ~dir;
                    
                end
                if(dir == 0)
                begin
                    i = i*2;
                end else
                    i = i/2;
            end
        assign tled = i;

endmodule
