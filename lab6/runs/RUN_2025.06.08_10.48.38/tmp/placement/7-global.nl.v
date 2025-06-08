module full_cpu (clk,
    control,
    reset_btn,
    seg_high,
    seg_low);
 input clk;
 input control;
 input reset_btn;
 output [6:0] seg_high;
 output [6:0] seg_low;


 sky130_fd_sc_hd__conb_1 _00_ (.HI(seg_high[6]));
 sky130_fd_sc_hd__conb_1 _01_ (.HI(seg_low[6]));
 sky130_fd_sc_hd__conb_1 _02_ (.LO(seg_high[0]));
 sky130_fd_sc_hd__conb_1 _03_ (.LO(seg_high[1]));
 sky130_fd_sc_hd__conb_1 _04_ (.LO(seg_high[2]));
 sky130_fd_sc_hd__conb_1 _05_ (.LO(seg_high[3]));
 sky130_fd_sc_hd__conb_1 _06_ (.LO(seg_high[4]));
 sky130_fd_sc_hd__conb_1 _07_ (.LO(seg_high[5]));
 sky130_fd_sc_hd__conb_1 _08_ (.LO(seg_low[0]));
 sky130_fd_sc_hd__conb_1 _09_ (.LO(seg_low[1]));
 sky130_fd_sc_hd__conb_1 _10_ (.LO(seg_low[2]));
 sky130_fd_sc_hd__conb_1 _11_ (.LO(seg_low[3]));
 sky130_fd_sc_hd__conb_1 _12_ (.LO(seg_low[4]));
 sky130_fd_sc_hd__conb_1 _13_ (.LO(seg_low[5]));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_11 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_13 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_14 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_15 ();
endmodule
