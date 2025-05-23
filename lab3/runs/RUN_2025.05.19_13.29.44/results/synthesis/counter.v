/* Generated by Yosys 0.38 (git sha1 543faed9c8c, clang++ 17.0.6 -fPIC -Os) */

module counter(clk, rst, count);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  input clk;
  wire clk;
  output [3:0] count;
  wire [3:0] count;
  input rst;
  wire rst;
  sky130_fd_sc_hd__or4b_2 _09_ (
    .A(count[3]),
    .B(count[0]),
    .C(count[1]),
    .D_N(count[2]),
    .X(_08_)
  );
  sky130_fd_sc_hd__and2b_2 _10_ (
    .A_N(count[0]),
    .B(_08_),
    .X(_04_)
  );
  sky130_fd_sc_hd__buf_1 _11_ (
    .A(_04_),
    .X(_00_)
  );
  sky130_fd_sc_hd__xor2_2 _12_ (
    .A(count[0]),
    .B(count[1]),
    .X(_01_)
  );
  sky130_fd_sc_hd__nand3_2 _13_ (
    .A(count[2]),
    .B(count[0]),
    .C(count[1]),
    .Y(_05_)
  );
  sky130_fd_sc_hd__a21o_2 _14_ (
    .A1(count[0]),
    .A2(count[1]),
    .B1(count[2]),
    .X(_06_)
  );
  sky130_fd_sc_hd__and3_2 _15_ (
    .A(_08_),
    .B(_05_),
    .C(_06_),
    .X(_07_)
  );
  sky130_fd_sc_hd__buf_1 _16_ (
    .A(_07_),
    .X(_02_)
  );
  sky130_fd_sc_hd__xnor2_2 _17_ (
    .A(count[3]),
    .B(_05_),
    .Y(_03_)
  );
  sky130_fd_sc_hd__dfrtp_2 _18_ (
    .CLK(clk),
    .D(_00_),
    .Q(count[0]),
    .RESET_B(rst)
  );
  sky130_fd_sc_hd__dfrtp_2 _19_ (
    .CLK(clk),
    .D(_01_),
    .Q(count[1]),
    .RESET_B(rst)
  );
  sky130_fd_sc_hd__dfrtp_2 _20_ (
    .CLK(clk),
    .D(_02_),
    .Q(count[2]),
    .RESET_B(rst)
  );
  sky130_fd_sc_hd__dfrtp_2 _21_ (
    .CLK(clk),
    .D(_03_),
    .Q(count[3]),
    .RESET_B(rst)
  );
endmodule
