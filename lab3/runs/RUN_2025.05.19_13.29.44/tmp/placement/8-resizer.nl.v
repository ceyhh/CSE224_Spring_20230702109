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
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;

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
 sky130_fd_sc_hd__dfrtp_2 _18_ (.CLK(clk),
    .D(_00_),
    .RESET_B(net1),
    .Q(net2));
 sky130_fd_sc_hd__dfrtp_1 _19_ (.CLK(clk),
    .D(_01_),
    .RESET_B(net1),
    .Q(net3));
 sky130_fd_sc_hd__dfrtp_1 _20_ (.CLK(clk),
    .D(_02_),
    .RESET_B(net1),
    .Q(net4));
 sky130_fd_sc_hd__dfrtp_1 _21_ (.CLK(clk),
    .D(_03_),
    .RESET_B(net1),
    .Q(net5));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_32 ();
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
