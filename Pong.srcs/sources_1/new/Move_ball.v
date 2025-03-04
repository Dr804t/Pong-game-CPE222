`timescale 1ns / 1ps

module Move_ball(
    input video_on,
    input sw,
    input reset,
    input xcol,
    input ycol,
    input score_up_p1,
    input score_up_p2,
    output reg [9:0] ball_xpos,
    output reg [9:0] ball_ypos
    );
    
    
    localparam def_ball_xpos = 320;
    localparam def_ball_ypos = 240;
    localparam xvector = 1;
    localparam yvector = 1;
//    localparam slow = 200;
    localparam sumvector = xvector + yvector;
    localparam faster = 5;
    //localparam h_resolution = 640;
    //localparam v_resolution = 480;
    
    reg on = 0;
    reg[8:0] count = 0;
    reg[8:0] countsum = 0;
    reg localsw = 0;
    reg xdir = 0,ydir = 0;
    reg[8:0] loc_xcount;
    reg[8:0] loc_ycount;
    reg hit;
    reg [7:0] slow;
    
    always@(posedge video_on)
    begin
        hit = score_up_p1 || score_up_p2;
        if(reset)
            on = 0;
        if(~on || hit) //default
        begin
            ball_xpos = def_ball_xpos;
            ball_ypos = def_ball_ypos;
            loc_xcount = xvector;
            loc_ycount = yvector;
            if(score_up_p1)
                xdir <= 0;
            else if(score_up_p2)
                xdir <= 1;
            else
            begin
                xdir <= 1;
                ydir <= 1; //up-right
            end
            on = 1;
            slow = 100;
            hit = 0;
            localsw = 0;
        end
        
        
        
        else    //move ball section
        begin
        if(sw || localsw) //start move
        begin
            localsw = 1;
                
            if(count<slow)//slow down the ball
                count = count + 1;
            else
            begin //move ball
                
                if(xcol) //if horizontal collitsion
                begin
                    xdir = ~xdir;
                    
                    slow = slow - faster;
                    countsum = 0; //move x first
                    loc_xcount = xvector;
                    loc_ycount = yvector;
                end
                
                if(ycol)
                begin //move y first
                    ydir = ~ydir;
                    
                    countsum = xvector;
                    loc_xcount = 0;
                    loc_ycount = yvector;
                end
                
                if(countsum < sumvector)
                begin
                    if(loc_xcount > 0) //move horizontal
                    begin
                        if(xdir)
                            ball_xpos = ball_xpos + 1;
                        else
                            ball_xpos = ball_xpos - 1;
                        loc_xcount = loc_xcount - 1;
                    end
                    if(loc_ycount > 0)//move vertical
                    begin
                        if(ydir)
                            ball_ypos = ball_ypos - 1;
                        else
                            ball_ypos = ball_ypos + 1;
                        loc_ycount = loc_ycount - 1;
                    end
                        
                    countsum = countsum + 1;
                end
                else
                begin
                    countsum = 0;
                    loc_xcount = xvector;
                    loc_ycount = yvector;
                end 
                count = 0;
            end
        end
        end
    end
    
endmodule