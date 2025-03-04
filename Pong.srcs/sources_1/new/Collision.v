`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 11:48:11 PM
// Design Name: 
// Module Name: Collision
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


module Collision(
    input video_on,
    input[9:0] ball_xpos,
    input[9:0] ball_ypos,
    input[9:0] rac1_xpos,
    input[9:0] rac1_ypos,
    input[9:0] rac2_xpos,
    input[9:0] rac2_ypos,
    output xcol,
    output ycol,
    output score_up_p1,
    output score_up_p2
    );
    
    localparam h_resolution = 640-1;
    localparam v_resolution = 480-1;
    localparam ball_size = 5;
    localparam rac_y_size = 30;
    localparam rac_x_size = 2;
    
    reg on = 0;
    reg loc_xcol,loc_ycol;
    reg score_up_p1,score_up_p2;
    
    always@(posedge video_on)
    begin
        if(~on)
        begin
            score_up_p1 = 0;
            score_up_p2 = 0;
            loc_xcol = 0;
            loc_ycol = 0;
            on = 1;
        end


        if(ball_xpos + ball_size == rac1_xpos - rac_x_size)
        begin
            if(ball_ypos + ball_size <= rac1_ypos + rac_y_size && ball_ypos - ball_size >= rac1_ypos - rac_y_size)
                loc_xcol = 1;
            else if(ball_ypos - ball_size <= rac1_ypos + rac_y_size && ball_ypos + ball_size >= rac1_ypos + rac_y_size)
                loc_xcol = 1;
            else if(ball_ypos - ball_size <= rac1_ypos - rac_y_size && ball_ypos + ball_size >= rac1_ypos - rac_y_size)
                loc_xcol = 1;
            else
                loc_xcol = 0;
        end
        else if(ball_xpos - ball_size == rac2_xpos + rac_x_size)
        begin
            if(ball_ypos + ball_size <= rac2_ypos + rac_y_size && ball_ypos - ball_size >= rac2_ypos - rac_y_size)
                loc_xcol = 1;
            else if(ball_ypos - ball_size <= rac2_ypos + rac_y_size && ball_ypos + ball_size >= rac2_ypos + rac_y_size)
                loc_xcol = 1;
            else if(ball_ypos - ball_size <= rac2_ypos - rac_y_size && ball_ypos + ball_size >= rac2_ypos - rac_y_size)
                loc_xcol = 1;
            else
                loc_xcol = 0;
        end
        else
            loc_xcol = 0;
            
//        if(ball_xpos - ball_size == rac2_xpos + rac_x_size)
//        begin
//            if(ball_ypos + ball_size <= rac2_ypos + rac_y_size && ball_ypos - ball_size >= rac2_ypos - rac_y_size)
//                loc_xcol = 1;
//            else if(ball_ypos - ball_size <= rac2_ypos + rac_y_size && ball_ypos + ball_size >= rac2_ypos + rac_y_size)
//                loc_xcol = 1;
//            else if(ball_ypos - ball_size <= rac2_ypos - rac_y_size && ball_ypos + ball_size >= rac2_ypos - rac_y_size)
//                loc_xcol = 1;
//            else
//                loc_xcol = 0;
//        end
//        else
//            loc_xcol = 0;
            

        if(ball_xpos <= ball_size)
            score_up_p1 = 1;
        else if(ball_xpos >= h_resolution-ball_size)
            score_up_p2 = 1;
        else
        begin
            score_up_p1 = 0;
            score_up_p2 = 0;
        end
           
            
        
            
        if(ball_ypos <= ball_size || ball_ypos >= v_resolution-ball_size)
            loc_ycol = 1;
        else
            loc_ycol = 0;
    end
    assign  xcol = loc_xcol;
    assign  ycol = loc_ycol;
    
endmodule
