`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 05:34:55 PM
// Design Name: 
// Module Name: testb
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


module testb(

    );
    

    reg btnD;
    reg btnR;
    reg sw;
    reg clk;
    reg reset;
    wire[3:0] vgaRed;
    wire[3:0] vgaGreen;
    wire[3:0] vgaBlue;
    wire Hsync;
    wire Vsync;
    
    Top Top(
            .btnD(btnD),
            .btnR(btnR),
            .sw(sw),
            .clk(clk),
            .reset(reset),
            .vgaRed(vgaRed),
            .vgaGreen(vgaGreen),
            .vgaBlue(vgaBlue),
            .Hsync(Hsync),
            .Vsync(Vsync)
            );
    
    integer i;
    initial begin
        clk =0;
        sw = 0;
        reset = 0;
        
        for(i=0 ; i<500 ; i=i+1)
        begin
        #1
            if(i > 10)
            begin
                sw = 1;
                btnD = 1;
                
            end;
            clk = ~clk;
        end
        $finish;
    end
    
endmodule
