`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2023 02:41:05 PM
// Design Name: 
// Module Name: Top
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


module Top(
    input btnU,     //player1
    input btnL,   
    input btnD,     //player2
    input btnR,
    input sw,
//    input btnC,
    input clk,
    input reset,
    //output[15:0] led,
    output[3:0] vgaRed,
    output[3:0] vgaGreen,
    output[3:0] vgaBlue,
    output[6:0] seg,
    output[3:0] an,
    output Hsync,
    output Vsync
    );
    wire div_clk;
    wire video_on;
    wire[9:0] x;
    wire[9:0] y;
    wire[9:0] rac1_xpos;
    wire[9:0] rac1_ypos;
    wire[9:0] rac2_xpos;
    wire[9:0] rac2_ypos;
    wire[9:0] ball_xpos;
    wire[9:0] ball_ypos;
    wire xcol,ycol;
    wire score_up_p1;
    wire score_up_p2;
    wire win;
    
    divider divider(
        .clk(clk),
        .out_clk(div_clk)
    );
    
    displaytest displaytest(
        .div_clk(div_clk),
        .Hsync(Hsync),
        .Vsync(Vsync),
        .video_on(video_on),
        .x_pos(x),
        .y_pos(y)
        );
        
    Move_rac Move_rac(
        .video_on(video_on),
        .reset(reset),
        .btnU(btnU),
        .btnL(btnL),
        .btnD(btnD),
        .btnR(btnR),
        .rac1_xpos(rac1_xpos),
        .rac1_ypos(rac1_ypos),
        .rac2_xpos(rac2_xpos),
        .rac2_ypos(rac2_ypos)
        );
            
    Move_ball Move_ball(
                .video_on(video_on),
                .reset(reset),
                .sw(sw),
                .xcol(xcol),
                .ycol(ycol),
                .ball_xpos(ball_xpos),
                .ball_ypos(ball_ypos),
                .score_up_p1(score_up_p1),
                .score_up_p2(score_up_p2)
                );
                
    Collision Collision(
                .video_on(video_on),
                .ball_xpos(ball_xpos),
                .ball_ypos(ball_ypos),
                .rac1_xpos(rac1_xpos),
                .rac1_ypos(rac1_ypos),
                .rac2_xpos(rac2_xpos),
                .rac2_ypos(rac2_ypos),
                .xcol(xcol),
                .ycol(ycol),
                .score_up_p1(score_up_p1),
                .score_up_p2(score_up_p2)
                );
    
    draw draw(
        .div_clk(div_clk),
        .video_on(video_on),
        .reset(reset),
        .x_pos(x),
        .y_pos(y),
        .win(win),
        .rac1_xpos(rac1_xpos),
        .rac1_ypos(rac1_ypos),
        .rac2_xpos(rac2_xpos),
        .rac2_ypos(rac2_ypos),
        .ball_xpos(ball_xpos),
        .ball_ypos(ball_ypos),
        .red(vgaRed),
        .green(vgaGreen),
        .blue(vgaBlue)
    );
    
    scoreby7seg scoreby7seg(
        .win(win),
        .reset(reset),
        .video_on(video_on),
        .score_up_p1(score_up_p1),
        .score_up_p2(score_up_p2),
        .seg(seg),
        .an(an)
    );
    

//    test test(
//    .clk(div_clk),
//    .tled(led)
//    );

endmodule
