`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 10:31:24 PM
// Design Name: 
// Module Name: draw
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


module draw(
    input div_clk,
    input video_on,
    input reset,
    input[9:0] x_pos,
    input[9:0] y_pos,
    input[9:0] rac1_xpos,
    input[9:0] rac1_ypos,
    input[9:0] rac2_xpos,
    input[9:0] rac2_ypos,
    input[9:0] ball_xpos,
    input[9:0] ball_ypos,
    input win,
    output reg [3:0]red,
    output reg [3:0]green,
    output reg [3:0]blue
    );
    
    
    reg[3:0] row_ass;
    reg[63:0] rowbit;
    reg[5:0] hcount;
    reg assbit;
    //reg txt;
    
    localparam hor_rac_size = 2;
    localparam ver_rac_size = 30;
    localparam ball_size = 5;
    localparam ass_size = 63;
    localparam off_x = 32;
    localparam off_y = 5;
    
    initial begin
        row_ass = off_y;
        rowbit = 0;
        hcount = off_x;
        assbit = 0;
        //txt = 0;
    end
    
    always@(negedge video_on)
    begin
            row_ass = row_ass + 1;
    end
    
    always@(negedge div_clk)
    begin
        if(video_on && ~reset)
             hcount = hcount + 1;
    end
    
    always@(posedge div_clk)
    begin
    
        if(video_on && ~reset)
        begin
//            if(x_pos >= ball_xpos - ball_size && x_pos <= ball_xpos + ball_size && y_pos >= ball_ypos - ball_size && y_pos <= ball_ypos + ball_size)
            if(win)
//            if(x_pos >= 0 && x_pos <= 63 && y_pos >= 0 && y_pos <= 63)
            begin
                case(row_ass)
                    4'b0000 : rowbit = 64'b0000000000000000000000000000000000000000000000000000000000000000;
                    4'b0001 : rowbit = 64'b0000000000000000000000000000000000000000000000000000000000000000;
                    4'b0010 : rowbit = 64'b0111110000010000110001101111111001111100110001101111111011111100;
                    4'b0011 : rowbit = 64'b1111111000111000110001101111111011111110110001101111111011111110;
                    4'b0100 : rowbit = 64'b1100000001101100111011101100000011000110110001101100000011000110;
                    4'b0101 : rowbit = 64'b1100000011000110111111101100000011000110110001101100000011000110;
                    4'b0110 : rowbit = 64'b1111111011000110110101101111110011000110110001101111110011111110;
                    4'b0111 : rowbit = 64'b1111111011111110110001101111110011000110110001101111110011111100;
                    4'b1000 : rowbit = 64'b1100011011111110110001101100000011000110110001101100000011011000;
                    4'b1001 : rowbit = 64'b1100011011000110110001101100000011000110011011001100000011001100;
                    4'b1010 : rowbit = 64'b1111111011000110110001101111111011111110001110001111111011000110;
                    4'b1011 : rowbit = 64'b0111011011000110110001101111111001111100000100001111111011000110;
                    4'b1100 : rowbit = 64'b0000000000000000000000000000000000000000000000000000000000000000;
                    4'b1101 : rowbit = 64'b0000000000000000000000000000000000000000000000000000000000000000;
                    4'b1110 : rowbit = 64'b0000000000000000000000000000000000000000000000000000000000000000;
                    4'b1111 : rowbit = 64'b0000000000000000000000000000000000000000000000000000000000000000;
                    default : rowbit = 64'b0000000000000000000000000000000000000000000000000000000000000000;
                endcase
                
                assbit = rowbit[ass_size-hcount];
                
                if(assbit)
                begin
                    red = 4'b1111;
                    green = 4'b1111;
                    blue = 4'b1111;
                end
                else
                begin
                    red = 4'b0000;
                    green = 4'b0000;
                    blue = 4'b0000;
                end

            end
            else if((x_pos-ball_xpos)**2 + (y_pos-ball_ypos) ** 2 <= ball_size ** 2)
            begin
                red = 4'b1111;
                green = 4'b0000;
                blue = 4'b0000;
            end
            else if(x_pos >= rac1_xpos - hor_rac_size && x_pos <= rac1_xpos + hor_rac_size && y_pos >= rac1_ypos - ver_rac_size && y_pos <= rac1_ypos + ver_rac_size)
            begin
//                if(x_pos == rac1_xpos || y_pos == rac1_ypos)
//                begin
//                red = 4'b1111;
//                green = 4'b0000;
//                blue = 4'b0000;
//                end
//                else
//                begin
                red = 4'b1111;
                green = 4'b1111;
                blue = 4'b1111;
//                end
            end
            else if(x_pos >= rac2_xpos - hor_rac_size && x_pos <= rac2_xpos + hor_rac_size && y_pos >= rac2_ypos - ver_rac_size && y_pos <= rac2_ypos + ver_rac_size)
            begin
//                if(x_pos == rac2_xpos || y_pos == rac2_ypos)
//                begin
//                red = 4'b1111;
//                green = 4'b0000;
//                blue = 4'b0000;
//                end
//                else
//                begin
                red = 4'b1111;
                green = 4'b1111;
                blue = 4'b1111;
//                end
            end
            else if(x_pos >= 318 && x_pos <= 321) //middle line
            begin
                red = 4'b1111;
                green = 4'b1111;
                blue = 4'b1111;
            end
            else//background
            begin
                red = 4'b0011;
                green = 4'b0111;
                blue = 4'b0011;
            end
        end
        else //no signal
        begin
            red = 4'b0000;
            green = 4'b0000;
            blue = 4'b0000;
            
        end
    
    end
    
endmodule
