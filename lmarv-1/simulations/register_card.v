`default_nettype none
`timescale 1ns / 1ns
`include "74LVC04.v"
`include "74LVC138.v"
`include "buffer32.v"
`include "idt70v24.v"

module register_card(
    input n_rs1_rd,
    input n_rs2_rd,
    input n_rd_wr,
    input [4:0] rs1a,
    input [4:0] rs2a,
    input [4:0] rda,
    output [31:0] rs1,
    output [31:0] rs2,
    input [31:0] rd
);

    reg [31:0] ctrl_input;
    assign ctrl_input[31:27] = 0;
    assign ctrl_input[26:24] = {n_rs1_rd, n_rs2_rd, n_rd_wr};
    assign ctrl_input[23:18] = 0;
    assign ctrl_input[17:13] = {rs1a[0], rs1a[1], rs1a[2], rs1a[3], rs1a[4]};
    assign ctrl_input[12:8] = {rs2a[0], rs2a[1], rs2a[2], rs2a[3], rs2a[4]};
    assign ctrl_input[7:3] = {rda[0], rda[1], rda[2], rda[3], rda[4]};
    assign ctrl_input[2:0] = 0;

    wire [31:0] ctrl_output;
    wire n_rs1_rd_p;
    wire n_rs2_rd_p;
    wire n_rd_wr_p;
    wire [4:0] rs1a_p;
    wire [4:0] rs2a_p;
    wire [4:0] rda_p;
    assign {n_rs1_rd_p, n_rs2_rd_p, n_rd_wr_p} = ctrl_output[26:24];
    assign {rs1a_p[0], rs1a_p[1], rs1a_p[2], rs1a_p[3], rs1a_p[4]} = ctrl_output[17:13];
    assign {rs2a_p[0], rs2a_p[1], rs2a_p[2], rs2a_p[3], rs2a_p[4]} = ctrl_output[12:8];
    assign{rda_p[0], rda_p[1], rda_p[2], rda_p[3], rda_p[4]} = ctrl_output[7:3];

    buffer32 ctrl_buf(
        .nG(1'b0),
        .a(ctrl_input),
        .y(ctrl_output)
    );

    wire [31:0] rs1_p;
    wire [31:0] rs2_p;
    wire [31:0] rd_p;

    buffer32 rs1_buf(
        .nG(n_rs1_rd_p),
        .a(rs1_p),
        .y(rs1)
    );

    buffer32 rs2_buf(
        .nG(n_rs2_rd_p),
        .a(rs2_p),
        .y(rs2)
    );

    buffer32 rd_buf(
        .nG(1'b0),
        .a(rd),
        .y(rd_p)
    );

    buffer32 rs1_zero_buf(
        .nG(n_rs1_zero),
        .a(0),
        .y(rs1_p)
    );

    buffer32 rs2_zero_buf(
        .nG(n_rs2_zero),
        .a(0),
        .y(rs2_p)
    );

    wire [7:0] U21_out;
    wire n_rs1_zero;
    assign n_rs1_zero = U21_out[0];
    wire rs1_zero;

    u_74LVC138 U21(
        .G1(1'b1),
        .nG2A(rs1a_p[3]),
        .nG2B(rs1a_p[4]),
        .a(rs1a_p[0]),
        .b(rs1a_p[1]),
        .c(rs1a_p[2]),
        .y(U21_out)
    );

    u_74LVC04 U23A(
        .a(n_rs1_zero),
        .y(rs1_zero)
    );

    wire [7:0] U22_out;
    wire n_rs2_zero;
    assign n_rs2_zero = U22_out[0];
    wire rs2_zero;

    u_74LVC138 U22(
        .G1(1'b1),
        .nG2A(rs2a_p[3]),
        .nG2B(rs2a_p[4]),
        .a(rs2a_p[0]),
        .b(rs2a_p[1]),
        .c(rs2a_p[2]),
        .y(U22_out)
    );

    u_74LVC04 U23B(
        .a(n_rs2_zero),
        .y(rs2_zero)
    );

    u_IDT70V24 U1(
        .write_addr(rda_p),
        .read_addr(rs2a_p),
        .d_write(rd_p[31:16]),
        .d_read(rs2_p[31:16]),
        .nOE(rs2_zero),
        .nWR(n_rd_wr_p)
    );

    u_IDT70V24 U2(
        .write_addr(rda_p),
        .read_addr(rs2a_p),
        .d_write(rd_p[15:0]),
        .d_read(rs2_p[15:0]),
        .nOE(rs2_zero),
        .nWR(n_rd_wr_p)
    );

endmodule

module register_card_tb;
    initial begin
        $dumpfile("register_card_tb.vcd");
        $dumpvars(3, register_card_tb);
    end

    reg n_rs1_rd = 1;
    reg n_rs2_rd = 1;
    reg n_rd_wr = 1;
    reg [4:0] rs1a = 0;
    reg [4:0] rs2a = 0;
    reg [4:0] rda = 0;
    wire [31:0] rs1;
    wire [31:0] rs2;
    reg [31:0] rd = 0;

    register_card card(
        .n_rs1_rd(n_rs1_rd),
        .n_rs2_rd(n_rs2_rd),
        .n_rd_wr(n_rd_wr),
        .rs1a(rs1a),
        .rs2a(rs2a),
        .rda(rda),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd)
    );

    initial begin
      #10 n_rs2_rd = 0;
      #30 rs2a = 'hF;
      #1 rda = 'hF;
      #1 rd = 'hF0E0D0C0;
      #30 n_rd_wr = 0;
      #20 n_rd_wr = 1;
      #50 $finish;
    end
endmodule