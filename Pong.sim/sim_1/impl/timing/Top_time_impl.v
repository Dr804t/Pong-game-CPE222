// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sat Nov 25 04:40:47 2023
// Host        : LAPTOP-4ADVH0RC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Dr804t/Documents/CPE222/Pong/Pong.sim/sim_1/impl/timing/Top_time_impl.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "637da378" *) 
(* NotValidForBitStream *)
module Top
   (clk,
    led);
  input clk;
  output [15:0]led;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire divider_n_0;
  wire [15:0]led;
  wire [15:0]led_OBUF;

initial begin
 $sdf_annotate("Top_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  divider divider
       (.clk(clk_IBUF_BUFG),
        .\i_reg[15] (divider_n_0));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  test test
       (.Q(led_OBUF),
        .out_clk_reg(divider_n_0));
endmodule

module divider
   (\i_reg[15] ,
    clk);
  output \i_reg[15] ;
  input clk;

  wire clk;
  wire [27:1]count0;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[24]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [27:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[0]_i_7_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[12]_i_6_n_0 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[16]_i_6_n_0 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[20]_i_6_n_0 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[4]_i_6_n_0 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg[8]_i_6_n_0 ;
  wire \i_reg[15] ;
  wire out_clk_i_10_n_0;
  wire out_clk_i_11_n_0;
  wire out_clk_i_12_n_0;
  wire out_clk_i_13_n_0;
  wire out_clk_i_14_n_0;
  wire out_clk_i_15_n_0;
  wire out_clk_i_16_n_0;
  wire out_clk_i_17_n_0;
  wire out_clk_i_1_n_0;
  wire out_clk_i_2_n_0;
  wire out_clk_i_3_n_0;
  wire out_clk_i_4_n_0;
  wire out_clk_i_5_n_0;
  wire out_clk_i_6_n_0;
  wire out_clk_i_7_n_0;
  wire out_clk_i_8_n_0;
  wire out_clk_i_9_n_0;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[0]_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[24]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[24]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_6_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h74)) 
    \count[0]_i_2 
       (.I0(out_clk_i_2_n_0),
        .I1(count_reg[0]),
        .I2(out_clk_i_3_n_0),
        .O(\count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[0]_i_3 
       (.I0(count0[3]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[3]),
        .O(\count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[0]_i_4 
       (.I0(count0[2]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[2]),
        .O(\count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[0]_i_5 
       (.I0(count0[1]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[1]),
        .O(\count[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \count[0]_i_6 
       (.I0(out_clk_i_3_n_0),
        .I1(count_reg[0]),
        .I2(out_clk_i_2_n_0),
        .O(\count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[12]_i_2 
       (.I0(count0[15]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[15]),
        .O(\count[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[12]_i_3 
       (.I0(count0[14]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[14]),
        .O(\count[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[12]_i_4 
       (.I0(count0[13]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[13]),
        .O(\count[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[12]_i_5 
       (.I0(count0[12]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[12]),
        .O(\count[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[16]_i_2 
       (.I0(count0[19]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[19]),
        .O(\count[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[16]_i_3 
       (.I0(count0[18]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[18]),
        .O(\count[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[16]_i_4 
       (.I0(count0[17]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[17]),
        .O(\count[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[16]_i_5 
       (.I0(count0[16]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[16]),
        .O(\count[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[20]_i_2 
       (.I0(count0[23]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[23]),
        .O(\count[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[20]_i_3 
       (.I0(count0[22]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[22]),
        .O(\count[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[20]_i_4 
       (.I0(count0[21]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[21]),
        .O(\count[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[20]_i_5 
       (.I0(count0[20]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[20]),
        .O(\count[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[24]_i_2 
       (.I0(count0[27]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[27]),
        .O(\count[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[24]_i_3 
       (.I0(count0[26]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[26]),
        .O(\count[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[24]_i_4 
       (.I0(count0[25]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[25]),
        .O(\count[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[24]_i_5 
       (.I0(count0[24]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[24]),
        .O(\count[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[4]_i_2 
       (.I0(count0[7]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[7]),
        .O(\count[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[4]_i_3 
       (.I0(count0[6]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[6]),
        .O(\count[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[4]_i_4 
       (.I0(count0[5]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[5]),
        .O(\count[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[4]_i_5 
       (.I0(count0[4]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[4]),
        .O(\count[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[8]_i_2 
       (.I0(count0[11]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[11]),
        .O(\count[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[8]_i_3 
       (.I0(count0[10]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[10]),
        .O(\count[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[8]_i_4 
       (.I0(count0[9]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[9]),
        .O(\count[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \count[8]_i_5 
       (.I0(count0[8]),
        .I1(out_clk_i_3_n_0),
        .I2(out_clk_i_2_n_0),
        .I3(count_reg[8]),
        .O(\count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(1'b0));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_2_n_0 }),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 }));
  CARRY4 \count_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_7_n_0 ,\NLW_count_reg[0]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(count_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S(count_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(1'b0));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  CARRY4 \count_reg[12]_i_6 
       (.CI(\count_reg[8]_i_6_n_0 ),
        .CO({\count_reg[12]_i_6_n_0 ,\NLW_count_reg[12]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S(count_reg[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(1'b0));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  CARRY4 \count_reg[16]_i_6 
       (.CI(\count_reg[12]_i_6_n_0 ),
        .CO({\count_reg[16]_i_6_n_0 ,\NLW_count_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[20:17]),
        .S(count_reg[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(1'b0));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  CARRY4 \count_reg[20]_i_6 
       (.CI(\count_reg[16]_i_6_n_0 ),
        .CO({\count_reg[20]_i_6_n_0 ,\NLW_count_reg[20]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[24:21]),
        .S(count_reg[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(1'b0));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO(\NLW_count_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 ,\count[24]_i_5_n_0 }));
  CARRY4 \count_reg[24]_i_6 
       (.CI(\count_reg[20]_i_6_n_0 ),
        .CO(\NLW_count_reg[24]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[24]_i_6_O_UNCONNECTED [3],count0[27:25]}),
        .S({1'b0,count_reg[27:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(1'b0));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  CARRY4 \count_reg[4]_i_6 
       (.CI(\count_reg[0]_i_7_n_0 ),
        .CO({\count_reg[4]_i_6_n_0 ,\NLW_count_reg[4]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S(count_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(1'b0));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  CARRY4 \count_reg[8]_i_6 
       (.CI(\count_reg[4]_i_6_n_0 ),
        .CO({\count_reg[8]_i_6_n_0 ,\NLW_count_reg[8]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S(count_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    out_clk_i_1
       (.I0(out_clk_i_2_n_0),
        .I1(\i_reg[15] ),
        .I2(out_clk_i_3_n_0),
        .O(out_clk_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    out_clk_i_10
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .I2(count_reg[12]),
        .I3(count_reg[13]),
        .I4(count_reg[16]),
        .I5(count_reg[18]),
        .O(out_clk_i_10_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    out_clk_i_11
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .I2(count_reg[16]),
        .I3(count_reg[18]),
        .O(out_clk_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    out_clk_i_12
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[7]),
        .O(out_clk_i_12_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    out_clk_i_13
       (.I0(count_reg[13]),
        .I1(count_reg[20]),
        .I2(count_reg[14]),
        .I3(count_reg[18]),
        .O(out_clk_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_clk_i_14
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[11]),
        .O(out_clk_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_clk_i_15
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .O(out_clk_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_clk_i_16
       (.I0(count_reg[10]),
        .I1(count_reg[9]),
        .I2(count_reg[25]),
        .I3(count_reg[7]),
        .O(out_clk_i_16_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    out_clk_i_17
       (.I0(count_reg[19]),
        .I1(count_reg[12]),
        .I2(count_reg[16]),
        .I3(count_reg[26]),
        .I4(count_reg[8]),
        .I5(count_reg[15]),
        .O(out_clk_i_17_n_0));
  LUT5 #(
    .INIT(32'h33333332)) 
    out_clk_i_2
       (.I0(out_clk_i_4_n_0),
        .I1(out_clk_i_5_n_0),
        .I2(count_reg[27]),
        .I3(count_reg[26]),
        .I4(count_reg[24]),
        .O(out_clk_i_2_n_0));
  LUT5 #(
    .INIT(32'h32323200)) 
    out_clk_i_3
       (.I0(out_clk_i_6_n_0),
        .I1(out_clk_i_5_n_0),
        .I2(out_clk_i_4_n_0),
        .I3(out_clk_i_7_n_0),
        .I4(out_clk_i_8_n_0),
        .O(out_clk_i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    out_clk_i_4
       (.I0(count_reg[21]),
        .I1(count_reg[20]),
        .I2(count_reg[19]),
        .I3(out_clk_i_9_n_0),
        .I4(out_clk_i_10_n_0),
        .O(out_clk_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000000040FF)) 
    out_clk_i_5
       (.I0(count_reg[24]),
        .I1(out_clk_i_11_n_0),
        .I2(out_clk_i_12_n_0),
        .I3(count_reg[25]),
        .I4(count_reg[26]),
        .I5(count_reg[27]),
        .O(out_clk_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    out_clk_i_6
       (.I0(count_reg[27]),
        .I1(count_reg[26]),
        .I2(count_reg[24]),
        .O(out_clk_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    out_clk_i_7
       (.I0(out_clk_i_13_n_0),
        .I1(out_clk_i_14_n_0),
        .I2(out_clk_i_15_n_0),
        .I3(out_clk_i_16_n_0),
        .I4(count_reg[27]),
        .I5(count_reg[17]),
        .O(out_clk_i_7_n_0));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    out_clk_i_8
       (.I0(out_clk_i_17_n_0),
        .I1(count_reg[22]),
        .I2(count_reg[21]),
        .I3(count_reg[24]),
        .I4(count_reg[23]),
        .O(out_clk_i_8_n_0));
  LUT4 #(
    .INIT(16'h8880)) 
    out_clk_i_9
       (.I0(count_reg[23]),
        .I1(count_reg[22]),
        .I2(count_reg[18]),
        .I3(count_reg[17]),
        .O(out_clk_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_clk_i_1_n_0),
        .Q(\i_reg[15] ),
        .R(1'b0));
endmodule

module test
   (Q,
    out_clk_reg);
  output [15:0]Q;
  input out_clk_reg;

  wire [15:0]Q;
  wire dir;
  wire dir_i_1_n_0;
  wire dir_i_2_n_0;
  wire \i[0]_i_1_n_0 ;
  wire \i[10]_i_1_n_0 ;
  wire \i[11]_i_1_n_0 ;
  wire \i[12]_i_1_n_0 ;
  wire \i[13]_i_1_n_0 ;
  wire \i[14]_i_1_n_0 ;
  wire \i[15]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[2]_i_2_n_0 ;
  wire \i[2]_i_3_n_0 ;
  wire \i[2]_i_4_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[8]_i_1_n_0 ;
  wire \i[9]_i_1_n_0 ;
  wire out_clk_reg;

  LUT6 #(
    .INIT(64'hFFFFEFBF00001040)) 
    dir_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(dir_i_2_n_0),
        .I3(Q[15]),
        .I4(Q[3]),
        .I5(dir),
        .O(dir_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dir_i_2
       (.I0(\i[2]_i_3_n_0 ),
        .I1(Q[13]),
        .O(dir_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dir_reg
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(dir_i_1_n_0),
        .Q(dir),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_1 
       (.I0(\i[2]_i_2_n_0 ),
        .I1(dir),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[10]_i_1 
       (.I0(Q[11]),
        .I1(dir),
        .I2(Q[9]),
        .O(\i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[11]_i_1 
       (.I0(Q[12]),
        .I1(dir),
        .I2(Q[10]),
        .O(\i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[12]_i_1 
       (.I0(Q[13]),
        .I1(dir),
        .I2(Q[11]),
        .O(\i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[13]_i_1 
       (.I0(Q[14]),
        .I1(dir),
        .I2(Q[12]),
        .O(\i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[14]_i_1 
       (.I0(Q[15]),
        .I1(dir),
        .I2(Q[13]),
        .O(\i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[15]_i_1 
       (.I0(Q[14]),
        .I1(dir),
        .O(\i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[1]_i_1 
       (.I0(Q[2]),
        .I1(dir),
        .I2(Q[0]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[2]_i_1 
       (.I0(Q[3]),
        .I1(dir),
        .I2(\i[2]_i_2_n_0 ),
        .O(\i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \i[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(\i[2]_i_3_n_0 ),
        .I3(Q[13]),
        .I4(Q[15]),
        .I5(Q[1]),
        .O(\i[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \i[2]_i_3 
       (.I0(Q[12]),
        .I1(Q[10]),
        .I2(\i[2]_i_4_n_0 ),
        .I3(Q[9]),
        .I4(Q[11]),
        .I5(Q[14]),
        .O(\i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i[2]_i_4 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\i[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[3]_i_1 
       (.I0(Q[4]),
        .I1(dir),
        .I2(Q[2]),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[4]_i_1 
       (.I0(Q[5]),
        .I1(dir),
        .I2(Q[3]),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[5]_i_1 
       (.I0(Q[6]),
        .I1(dir),
        .I2(Q[4]),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[6]_i_1 
       (.I0(Q[7]),
        .I1(dir),
        .I2(Q[5]),
        .O(\i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[7]_i_1 
       (.I0(Q[8]),
        .I1(dir),
        .I2(Q[6]),
        .O(\i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[8]_i_1 
       (.I0(Q[9]),
        .I1(dir),
        .I2(Q[7]),
        .O(\i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i[9]_i_1 
       (.I0(Q[10]),
        .I1(dir),
        .I2(Q[8]),
        .O(\i[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(out_clk_reg),
        .CE(1'b1),
        .D(\i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
