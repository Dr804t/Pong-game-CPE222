`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 08:29:56 PM
// Design Name: 
// Module Name: Move_rac
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


module Move_rac(
    input video_on,
    input reset,
    input btnU,
    input btnL,
    input btnD,
    input btnR,
    output reg [9:0] rac1_xpos,
    output reg [9:0] rac1_ypos,
    output reg [9:0] rac2_xpos,
    output reg [9:0] rac2_ypos
    );
    
    
    localparam def_rac1_xpos = 600;
    localparam def_rac1_ypos = 240;
    localparam def_rac2_xpos = 40;
    localparam def_rac2_ypos = 240;
    localparam speed = 200;
    localparam h_resolution = 640;
    localparam v_resolution = 480;
    localparam ver_rac_size = 30;
    localparam ymax = v_resolution-ver_rac_size-1;
    
    reg on = 0;
    reg[8:0] count = 0;
    reg d = 0;
    
    always@(posedge video_on)
    begin
        if(reset)
            on = 0;
        if(~on)
        begin
            rac1_xpos = def_rac1_xpos;
            rac1_ypos = def_rac1_ypos;
            rac2_xpos = def_rac2_xpos;
            rac2_ypos = def_rac2_ypos;
            on = 1;
        end
        if(count < speed)
            count = count + 1;
        else
        begin
            if(btnR == 1 && rac1_ypos > ver_rac_size)
                rac1_ypos = rac1_ypos - 1;
            if(btnD == 1 && rac1_ypos < ymax)
                rac1_ypos = rac1_ypos + 1;
            if(btnU == 1 && rac2_ypos > ver_rac_size)
                rac2_ypos = rac2_ypos - 1;
            if(btnL == 1 && rac2_ypos < ymax)
                rac2_ypos = rac2_ypos + 1;
            count = 0;
        end
    end

    
endmodule
