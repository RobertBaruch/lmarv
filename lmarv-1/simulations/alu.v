`ifndef _alu_vh_
`define _alu_vh_

`default_nettype none
`timescale 1ns / 1ns
`include "74LVC04.v"
`include "74LVC08.v"
`include "74LVC32.v"
`include "74LVC138.v"
`include "74LVC157.v"
`include "74LVC161.v"
`include "74LVC541.v"
`include "IS61LV256AL.v"
`include "buffer32.v"

// iverilog -g2005-sv -o tb.vvp -s alu_tb alu.v
// vvp tb.vvp
// gtkwave tb.vcd

module alu(
    input boot_clk,
    input n_boot_rst,
    input n_boot_alu_en,
    input n_boot_wr,
    input n_alu_oe,
    input [3:0] f,
    output [31:0] rd,
    input [31:0] rs1,
    input [31:0] rs2
);

  wire [3:0] alu_f;
  wire n_boot_alu_wr;
  wire boot_alu_en;
  wire n_boot_ph0_wr;
  wire n_boot_ph1_wr;
  wire n_boot_a15;
  wire cmp7;
  wire rdb0_p;
  wire cin0_boot;
  wire cin0_p;
  wire [31:0] rdb;
  wire [31:0] rs1b;
  wire [31:0] rs2b;
  wire [7:0] cin;
  wire [6:0] p;
  wire [6:0] g;
  wire [4:0] slice2_d;
  wire [7:0] clu_d;
  wire slice1_g;
  wire slice1_p;
  wire slice1_cin;
  wire [15:0] boot_a;
  wire tc0;
  wire tc1;
  wire tc2;
  reg [7:0] bit_slice_rom [0:8191];
  reg [7:0] pg_rom [0:8191];
  reg [7:0] clu_rom [0:32767];

  initial begin
    integer file;
    integer i;

    $display("Loading bitslice rom.");
    file = $fopen("../alu_bitslice_rom.bin", "rb");
    i = $fread(bit_slice_rom, file);
    $display("read %d bytes", i);
    $fclose(file);

    $display("Loading propagate/generate rom.");
    file = $fopen("../alu_pg_rom.bin", "rb");
    i = $fread(pg_rom, file);
    $display("read %d bytes", i);
    $fclose(file);

    $display("Loading carry lookahead rom.");
    file = $fopen("../alu_clu_rom.bin", "rb");
    i = $fread(clu_rom, file);
    $display("read %d bytes", i);
    $fclose(file);
  end

  assign slice2_d[4:0] = bit_slice_rom[boot_a[12:0]][4:0];
  assign clu_d[7:0] = clu_rom[boot_a[14:0]][7:0];
  assign {slice1_cin, slice1_p, slice1_g} = pg_rom[boot_a[12:0]][2:0];

//   always @(posedge boot_clk) begin
//     if (!n_boot_rst) boot_a <= 0;
//     else boot_a <= boot_a + 1;
//   end

  u_74LVC04 u2a(
      .a(n_boot_alu_en),
      .y(boot_alu_en)
  );

  u_74LVC04 u2b(
      .a(boot_a[15]),
      .y(n_boot_a15)
  );

  u_74LVC32 u3a(
      .A(cmp7),
      .B(rdb[0]),
      .Y(rdb0_p)
  );

  u_74LVC32 u3b(
      .A(n_boot_wr),
      .B(n_boot_alu_en),
      .Y(n_boot_alu_wr)
  );

  u_74LVC32 u3c(
      .A(n_boot_alu_wr),
      .B(n_boot_a15),
      .Y(n_boot_ph1_wr)
  );

  u_74LVC32 u3d(
      .A(n_boot_alu_wr),
      .B(boot_a[15]),
      .Y(n_boot_ph0_wr)
  );

  u_74LVC161 u4(
      .d(4'b1111),
      .n_pe(1'b1),
      .cep(1'b1),
      .cet(1'b1),
      .cp(boot_clk),
      .n_mr(n_boot_rst),
      .q(boot_a[3:0]),
      .tc(tc0)
  );
  u_74LVC161 u5(
      .d(4'b1111),
      .n_pe(1'b1),
      .cep(tc0),
      .cet(tc0),
      .cp(boot_clk),
      .n_mr(n_boot_rst),
      .q(boot_a[7:4]),
      .tc(tc1)
  );
  u_74LVC161 u6(
      .d(4'b1111),
      .n_pe(1'b1),
      .cep(tc1),
      .cet(tc1),
      .cp(boot_clk),
      .n_mr(n_boot_rst),
      .q(boot_a[11:8]),
      .tc(tc2)
  );
  u_74LVC161 u7(
      .d(4'b1111),
      .n_pe(1'b1),
      .cep(tc2),
      .cet(tc2),
      .cp(boot_clk),
      .n_mr(n_boot_rst),
      .q(boot_a[15:12])
  );

  buffer32 u6_to_9(
      .nG1(boot_alu_en),
      .nG2(boot_alu_en),
      .a(rs1),
      .y(rs1b)
  );

  buffer32 u10_to_13(
      .nG1(boot_alu_en),
      .nG2(boot_alu_en),
      .a(rs2),
      .y(rs2b)
  );

  wire [7:0] u14_out;
  u_74LVC541 u14(
      .nG1(boot_alu_en),
      .nG2(boot_alu_en),
      .a({4'b0000, f}),
      .y({u16_out[7:4], alu_f[3:0]})
  );

  // u15: rom

  wire [7:0] u16_out;
  u_74LVC541 u16(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({4'b0000, boot_a[11:8]}),
      .y({u16_out[7:4], alu_f[3:0]})
  );

  buffer32 u17_to_20(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({boot_a[7:0], boot_a[7:0], boot_a[7:0], boot_a[7:0]}),
      .y({rs2b[15:12], rs1b[15:12],
          rs2b[11:8], rs1b[11:8],
          rs2b[7:4], rs1b[7:4],
          rs2b[3:0], rs1b[3:0]})
  );

  buffer32 u21_to_23_60(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({boot_a[7:0], boot_a[7:0], boot_a[7:0], boot_a[7:0]}),
      .y({rs2b[31:28], rs1b[31:28],
          rs2b[27:24], rs1b[27:24],
          rs2b[23:20], rs1b[23:20],
          rs2b[19:16], rs1b[19:16]})
  );

  u_74LVC541 u24(
      .nG1(n_boot_alu_en),
      .nG2(n_boot_a15),
      .a(boot_a[7:0]),
      .y({g[3], p[2], g[2], p[1], g[1], p[0], g[0], cin[0]})
  );

  wire [7:0] u25_out;
  u_74LVC541 u25(
      .nG1(n_boot_alu_en),
      .nG2(n_boot_a15),
      .a(boot_a[15:8]),
      .y({u25_out[7], p[6], g[6], p[5], g[5], p[4], g[4], p[3]})
  );

  wire [1:0] slice1_pg;
  assign slice1_pg = {slice1_p, slice1_g};
  u_74LVC541 u26(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({slice1_pg, slice1_pg, slice1_pg, slice1_pg}),
      .y({p[3], g[3], p[2], g[2], p[1], g[1], p[0], g[0]})
  );

  wire [7:0] u27_out;
  u_74LVC541 u27(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({slice1_p, slice1_cin, slice1_pg, slice1_pg, slice1_pg}),
      .y({u27_out[7], cin[0], p[6], g[6], p[5], g[5], p[4], g[4]})
  );

  wire [14:0] u28_addr = {3'b000, alu_f, rs2b[3:0], rs1b[3:0]};
  wire [7:0] u28_dout;
  u_IS61LV256AL u28(
    .a(u28_addr),
    .d_write({5'b00000, cin[0], p[0], g[0]}),
    .d_read({u28_dout[7:3], cin[0], p[0], g[0]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u29_dout;
  u_IS61LV256AL u29(
    .a({3'b000, alu_f, rs2b[7:4], rs1b[7:4]}),
    .d_write({6'b000000, p[1], g[1]}),
    .d_read({u29_dout[7:2], p[1], g[1]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u30_dout;
  u_IS61LV256AL u30(
    .a({3'b000, alu_f, rs2b[11:8], rs1b[11:8]}),
    .d_write({6'b000000, p[2], g[2]}),
    .d_read({u30_dout[7:2], p[2], g[2]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u31_dout;
  u_IS61LV256AL u31(
    .a({3'b000, alu_f, rs2b[15:12], rs1b[15:12]}),
    .d_write({6'b000000, p[3], g[3]}),
    .d_read({u31_dout[7:2], p[3], g[3]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u32_dout;
  u_IS61LV256AL u32(
    .a({3'b000, alu_f, rs2b[19:16], rs1b[19:16]}),
    .d_write({6'b000000, p[4], g[4]}),
    .d_read({u32_dout[7:2], p[4], g[4]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u33_dout;
  u_IS61LV256AL u33(
    .a({3'b000, alu_f, rs2b[23:20], rs1b[23:20]}),
    .d_write({6'b000000, p[5], g[5]}),
    .d_read({u33_dout[7:2], p[5], g[5]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u34_dout;
  u_IS61LV256AL u34(
    .a({3'b000, alu_f, rs2b[27:24], rs1b[27:24]}),
    .d_write({6'b000000, p[6], g[6]}),
    .d_read({u34_dout[7:2], p[6], g[6]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  // u35 rom

  // u36 rom

  wire [7:0] u37_out;
  u_74LVC541 u37(
      .nG1(n_boot_alu_en),
      .nG2(n_boot_a15),
      .a(clu_d),
      .y({u37_out[7], cin[7:1]})
  );

  u_74LVC541 u38(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({boot_a[12], boot_a[12],
          boot_a[12], boot_a[12],
          boot_a[12], boot_a[12],
          boot_a[12], boot_a[12]}),
      .y({cin[7:1], cin0_boot})
  );
  pulldown cin0_boot_pd(cin0_boot);

  wire [7:0] u39_dout;
  wire [7:0] u39_din;
  wire [14:0] u39_addr;
  assign u39_addr = {p[6], g[6], p[5], g[5],
                     p[4], g[4], p[3], g[3],
                     p[2], g[2], p[1], g[1],
                     p[0], g[0], cin[0]};
  assign u39_din = {1'b0, cin[7:1]};
  u_IS61LV256AL u39(
    .a(u39_addr),
    .d_write(u39_din),
    .d_read({u39_dout[7], cin[7:1]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph1_wr)
  );

  buffer32 u40_to_43(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({slice2_d[3:0], slice2_d[3:0],
          slice2_d[3:0], slice2_d[3:0],
          slice2_d[3:0], slice2_d[3:0],
          slice2_d[3:0], slice2_d[3:0]}),
      .y(rdb)
  );

  wire [7:0] u44_out;
  u_74LVC541 u44(
      .nG1(n_boot_alu_en),
      .nG2(boot_a[15]),
      .a({slice2_d[4], 7'b0}),
      .y({cmp7, u44_out[6:0]})
  );

  wire [7:0] u45_dout;
  wire [7:0] u45_din;
  wire [14:0] u45_addr;
  assign u45_addr = {2'b00, cin0_p, alu_f[3:0], rs2b[3:0], rs1b[3:0]};
  assign u45_din = {4'b0000, rdb[3:0]};
  u_IS61LV256AL u45(
    .a(u45_addr),
    .d_write(u45_din),
    .d_read({u45_dout[7:4], rdb[3:0]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u46_dout;
  wire [7:0] u46_din;
  wire [14:0] u46_addr;
  assign u46_addr = {2'b00, cin[1], alu_f[3:0], rs2b[7:4], rs1b[7:4]};
  assign u46_din = {4'b0000, rdb[7:4]};
  u_IS61LV256AL u46(
    .a(u46_addr),
    .d_write(u46_din),
    .d_read({u46_dout[7:4], rdb[7:4]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u47_dout;
  u_IS61LV256AL u47(
    .a( {2'b00, cin[2], alu_f[3:0], rs2b[11:8], rs1b[11:8]}),
    .d_write({4'b0000, rdb[11:8]}),
    .d_read({u47_dout[7:4], rdb[11:8]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u48_dout;
  u_IS61LV256AL u48(
    .a( {2'b00, cin[3], alu_f[3:0], rs2b[15:12], rs1b[15:12]}),
    .d_write({4'b0000, rdb[15:12]}),
    .d_read({u48_dout[7:4], rdb[15:12]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u49_dout;
  u_IS61LV256AL u49(
    .a( {2'b00, cin[4], alu_f[3:0], rs2b[19:16], rs1b[19:16]}),
    .d_write({4'b0000, rdb[19:16]}),
    .d_read({u49_dout[7:4], rdb[19:16]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u50_dout;
  u_IS61LV256AL u50(
    .a( {2'b00, cin[5], alu_f[3:0], rs2b[23:20], rs1b[23:20]}),
    .d_write({4'b0000, rdb[23:20]}),
    .d_read({u50_dout[7:4], rdb[23:20]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u51_dout;
  u_IS61LV256AL u51(
    .a( {2'b00, cin[6], alu_f[3:0], rs2b[27:24], rs1b[27:24]}),
    .d_write({4'b0000, rdb[27:24]}),
    .d_read({u51_dout[7:4], rdb[27:24]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  wire [7:0] u52_dout;
  u_IS61LV256AL u52(
    .a( {2'b00, cin[7], alu_f[3:0], rs2b[31:28], rs1b[31:28]}),
    .d_write({3'b000, cmp7, rdb[31:28]}),
    .d_read({u52_dout[7:5], cmp7, rdb[31:28]}),
    .nCS(1'b0),
    .nOE(boot_alu_en),
    .nWE(n_boot_ph0_wr)
  );

  buffer32 u53_to_56(
    .nG1(n_alu_oe),
    .nG2(n_alu_oe),
    .a({rdb[31:1], rdb0_p}),
    .y(rd)
  );

  // U57, U58 counters

  wire [3:0] u59_out;
  u_74LVC157 u59(
      .nE(1'b0),
      .S(boot_alu_en),
      .i0({3'b000, cin[0]}),
      .i1({3'b000, cin0_boot}),
      .y({u59_out[3:1], cin0_p})
  );

  // U60 part of u21_to_23_60
endmodule

module alu_tb;
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, alu_tb);
    end

    reg boot_clk = 0;
    reg n_boot_rst = 0;
    reg n_boot_alu_en = 0;
    reg n_boot_wr = 1;
    reg n_alu_oe = 1;
    reg [3:0] f = 4'b0100;  // xor
    wire [31:0] rd;
    reg [31:0] rs1 = 0;
    reg [31:0] rs2 = 0;

    alu alu(
        .boot_clk(boot_clk),
        .n_boot_rst(n_boot_rst),
        .n_boot_alu_en(n_boot_alu_en),
        .n_boot_wr(n_boot_wr),
        .n_alu_oe(n_alu_oe),
        .f(f),
        .rd(rd),
        .rs1(rs1),
        .rs2(rs2)
    );

    reg [16:0] i;

    initial begin
      #20 n_boot_rst = 1;
      for (i=0; i<65536; i++) begin
        #20 n_boot_wr = 0;
        #20 n_boot_wr = 1;
        #20 boot_clk = 1;
        #20 boot_clk = 0;
      end
      #20 n_boot_alu_en = 1;
      #20 n_alu_oe = 0;
      #20 rs1 = 'h000F; rs2 = 'h0002; f = 4'b0000; // add
      #200 rs1 = 0;  rs2 = 0; f = 4'b0100; // xor
      #50 rs1 = 1; 
      #50 rs2 = 1;
      #50 rs1 = 'hA01F;
      #50 rs2 = 'hA202;
      #50 f = 4'b0110; // or
      #50 f = 4'b0111; // and
      #50 f = 4'b0000; // add
      #50 f = 4'b1000; // sub
      #50 f = 4'b0010; // slt
      #50 rs1 = 'hFFFFA01F;
      #50 f = 4'b0011; // sltu
      #50 f = 4'b0101; // seq
      #50 rs2 = 'hFFFFA01F;
      #100 $finish;
    end
endmodule

`endif  // _alu_vh_
