// This is the unpowered netlist.
module counter (clk,
    rst,
    count);
 input clk;
 input rst;
 output [3:0] count;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;

 sky130_fd_sc_hd__decap_8 FILLER_0_0_20 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_8 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_35 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_38 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_46 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_13 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_45 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_47 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_39 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_46 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_7 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_30 ();
 sky130_fd_sc_hd__or4b_1 _09_ (.A(net5),
    .B(net2),
    .C(net3),
    .D_N(net4),
    .X(_08_));
 sky130_fd_sc_hd__and2b_1 _10_ (.A_N(net2),
    .B(_08_),
    .X(_04_));
 sky130_fd_sc_hd__clkbuf_1 _11_ (.A(_04_),
    .X(_00_));
 sky130_fd_sc_hd__xor2_1 _12_ (.A(net2),
    .B(net3),
    .X(_01_));
 sky130_fd_sc_hd__nand3_1 _13_ (.A(net4),
    .B(net2),
    .C(net3),
    .Y(_05_));
 sky130_fd_sc_hd__a21o_1 _14_ (.A1(net2),
    .A2(net3),
    .B1(net4),
    .X(_06_));
 sky130_fd_sc_hd__and3_1 _15_ (.A(_08_),
    .B(_05_),
    .C(_06_),
    .X(_07_));
 sky130_fd_sc_hd__clkbuf_1 _16_ (.A(_07_),
    .X(_02_));
 sky130_fd_sc_hd__xnor2_1 _17_ (.A(net5),
    .B(_05_),
    .Y(_03_));
 sky130_fd_sc_hd__dfrtp_2 _18_ (.CLK(clknet_1_1__leaf_clk),
    .D(_00_),
    .RESET_B(net1),
    .Q(net2));
 sky130_fd_sc_hd__dfrtp_1 _19_ (.CLK(clknet_1_1__leaf_clk),
    .D(_01_),
    .RESET_B(net1),
    .Q(net3));
 sky130_fd_sc_hd__dfrtp_1 _20_ (.CLK(clknet_1_0__leaf_clk),
    .D(_02_),
    .RESET_B(net1),
    .Q(net4));
 sky130_fd_sc_hd__dfrtp_1 _21_ (.CLK(clknet_1_0__leaf_clk),
    .D(_03_),
    .RESET_B(net1),
    .Q(net5));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__buf_1 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__buf_1 output2 (.A(net2),
    .X(count[0]));
 sky130_fd_sc_hd__buf_1 output3 (.A(net3),
    .X(count[1]));
 sky130_fd_sc_hd__buf_1 output4 (.A(net4),
    .X(count[2]));
 sky130_fd_sc_hd__buf_1 output5 (.A(net5),
    .X(count[3]));
endmodule

