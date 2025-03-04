`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 05:47:56 PM
// Design Name: 
// Module Name: scoreby7seg
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


module scoreby7seg(
    input video_on,
    input score_up_p1,
    input score_up_p2,
    input reset,
    output reg win,
    output reg [6:0] seg,
    output reg [3:0] an
    );
    
    reg[3:0] score_p1;
    reg[3:0] score_p2;
    reg swled;
    reg on;
    reg r = 1;
    initial
    begin
        score_p1 = 0;
        score_p2 = 0;
    end
 
    always @(posedge score_up_p1 or negedge r) begin 
        if(~r)
            score_p1 = 0;
        else if(win)
            score_p1 = score_p1;
        else
            score_p1 = score_p1 + 1;
    end
    
    always @(posedge score_up_p2 or negedge r) begin 
        if(~r)
            score_p2 = 0;
        else if(win)
            score_p2 = score_p2;
        else
            score_p2 = score_p2 + 1;
    end
    
    always @(score_p2 or score_p1 or reset) begin
        if(score_p1 == 5 || score_p2 == 5)
                win = 1;
        if(reset) begin 
            r = 0;
            win = 0;
        end
        else
            r = 1; 
    end
    
    always @ (posedge video_on)
    begin
//    if(~on)
//    begin
//        score_p1 = 0;
//        score_p2 = 0;
//        on = 1;
//    end
//    else
//    begin
//        if(score_up_p1 == 1)
//            score_p1 = score_p1 + 1;
//        else if(score_up_p2 == 1)
//            score_p2 = score_p2 + 1;
        
            
        if(swled)
        begin
            an = 4'b1110;
            case(score_p1)
                4'b0000: seg = 7'b1000000;
                4'b0001: seg = 7'b1111001;
                4'b0010: seg = 7'b0100100;
                4'b0011: seg = 7'b0110000;
                4'b0100: seg = 7'b0011001;
                4'b0101: seg = 7'b0010010;
                4'b0110: seg = 7'b0000010;
                4'b0111: seg = 7'b1111000;
                4'b1000: seg = 7'b0000000;
                4'b1001: seg = 7'b0010000;
                default: seg = 7'b1111111;
            endcase
            swled = 0;
        end
        else
        begin
            an = 4'b1011;
//            if(score_p2 % 2 ==0)
//                score_p2 = score_p2 /2;
            case(score_p2)
                        4'b0000: seg = 7'b1000000;
                        4'b0001: seg = 7'b1111001;
                        4'b0010: seg = 7'b0100100;
                        4'b0011: seg = 7'b0110000;
                        4'b0100: seg = 7'b0011001;
                        4'b0101: seg = 7'b0010010;
                        4'b0110: seg = 7'b0000010;
                        4'b0111: seg = 7'b1111000;
                        4'b1000: seg = 7'b0000000;
                        4'b1001: seg = 7'b0010000;
                        default: seg = 7'b1111111;
                   endcase
            swled = 1;
        end
//        end
    end
    
    
//    always @ (posedge score_up_p1 or posedge score_up_p2)
//    begin
//            an = 4'b0100;
//            if(score_up_p1)
//                score_p1 = score_p1 + 1;
//            else if(score_up_p2)
//                score_p2 = score_p2 + 1;
//            case(score_p1)
//                4'b0000: seg = 7'b1000000;
//                4'b0001: seg = 7'b1111001;
//                4'b0010: seg = 7'b0100100;
//                4'b0011: seg = 7'b0110000;
//                4'b0100: seg = 7'b0011001;
//                4'b0101: seg = 7'b0010010;
//                4'b0110: seg = 7'b0000010;
//                4'b0111: seg = 7'b1111000;
//                4'b1000: seg = 7'b0000000;
//                4'b1001: seg = 7'b0010000;
//                default: seg = 7'b1111111;
//            case(score_p2)
//                4'b0000: seg = 7'b1000000;
//                4'b0001: seg = 7'b1111001;
//                4'b0010: seg = 7'b0100100;
//                4'b0011: seg = 7'b0110000;
//                4'b0100: seg = 7'b0011001;
//                4'b0101: seg = 7'b0010010;
//                4'b0110: seg = 7'b0000010;
//                4'b0111: seg = 7'b1111000;
//                4'b1000: seg = 7'b0000000;
//                4'b1001: seg = 7'b0010000;
//                default: seg = 7'b1111111;
//           endcase
//       end
//    end   
endmodule
