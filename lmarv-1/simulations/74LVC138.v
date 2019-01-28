`ifndef _74LVC138_vh_
`define _74LVC138_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_74LVC138(
    input G1,
    input nG2A,
    input nG2B,
    input a,  // least significant bit
    input b,
    input c,  // most significant bit
    output wire [7:0] y 
);

    wire enable1;
    wire enable;
    wire [7:0] decode;

    nor G_enable1(enable1, nG2A, nG2B);
    and #6 G_enable(enable, enable1, G1);
    // Skew is 1ns
    and #6 G_decode0(decode[0], {c, b, a} == 3'h0);
    and #5 G_decode1(decode[1], {c, b, a} == 3'h1);
    and #5 G_decode2(decode[2], {c, b, a} == 3'h2);
    and #6 G_decode3(decode[3], {c, b, a} == 3'h3);
    and #5 G_decode4(decode[4], {c, b, a} == 3'h4);
    and #6 G_decode5(decode[5], {c, b, a} == 3'h5);
    and #5 G_decode6(decode[6], {c, b, a} == 3'h6);
    and #6 G_decode7(decode[7], {c, b, a} == 3'h7);
    nand G_out[8](y, decode, enable);

endmodule

module top_u_74LVC138_tb;
    initial begin
        $dumpfile("top_u_74LVC138_tb.vcd");
        $dumpvars(0, top_u_74LVC138_tb);
    end

    reg G1 = 0;
    reg nG2A = 1;
    reg nG2B = 1;
    reg [2:0] a = 0;
    wire [7:0] y;
    u_74LVC138 u1(
        .G1(G1),
        .nG2A(nG2A),
        .nG2B(nG2B),
        .c(a[2]),
        .b(a[1]),
        .a(a[0]),
        .y(y)
    );

    initial begin
      #10 G1 = 1;
      #1 nG2A = 0;
      #3 nG2B = 0;
      #10 a = 'h3;
      #10 a = 'h0;
      #3 a = 'h6;
      #10 G1 = 0;
      #10 $finish;
    end
endmodule

`endif  // _74LVC138_vh_
