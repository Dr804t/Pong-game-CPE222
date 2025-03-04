`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 09:43:34 PM
// Design Name: 
// Module Name: displaytest
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


module displaytest(
    input div_clk,
    output Hsync,
    output Vsync,
    output video_on,
    output[9:0] x_pos,
    output[9:0] y_pos
    );
    
    localparam h_resolution = 640;
    localparam h_front = 48;
    localparam h_back = 16;
    localparam h_retrace = 96;
    localparam h_sum = h_resolution + h_front + h_back + h_retrace - 1;
    
    localparam v_resolution = 480;
    localparam v_front = 10;
    localparam v_back = 33;
    localparam v_retrace = 2;
    localparam v_sum = v_resolution + v_front + v_back + v_retrace - 1;
    
    reg vid_on=0,hsync=0,vsync=0;
    reg[9:0] hcount=0;
    reg[9:0] vcount=0;
    
    always@(posedge div_clk)
    begin
        vid_on = hcount < h_resolution && vcount < v_resolution ? 1 : 0;
        hsync = hcount >= h_resolution + h_back && hcount < h_resolution + h_back + h_retrace ? 0 : 1;
        vsync = vcount >= v_resolution + v_back && vcount < v_resolution + v_back + v_retrace ? 0 : 1;
    
        if(hcount == h_sum)
        begin
            hcount = 0;
            if(vcount == v_sum)
                vcount = 0;
            else
                vcount = vcount+1;
        end
        else
            hcount = hcount+1;
    end
    
    assign video_on = vid_on;
    assign Hsync = hsync;
    assign Vsync = vsync;
    assign x_pos = hcount;
    assign y_pos = vcount;
    
endmodule
