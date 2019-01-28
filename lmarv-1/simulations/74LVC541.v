`ifndef _74LVC541_vh_
`define _74LVC541_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_74LVC541(
    input nG1,
    input nG2,
    input [7:0] a,
    output wire [7:0] y 
);

    wire enable;
    wire [7:0] internal_a;

    nor #(7, 6) G_enable(enable, nG1, nG2);
    // skew is 1ns
    buf #5 G_skew0(internal_a[0], a[0]);
    buf #4 G_skew1(internal_a[1], a[1]);
    buf #4 G_skew2(internal_a[2], a[2]);
    buf #4 G_skew3(internal_a[3], a[3]);
    buf #5 G_skew4(internal_a[4], a[4]);
    buf #5 G_skew5(internal_a[5], a[5]);
    buf #4 G_skew6(internal_a[6], a[6]);
    buf #5 G_skew7(internal_a[7], a[7]);
    bufif1 G_buf[8](y, internal_a, enable);

endmodule

module top_u_74LVC541_tb;
    initial begin
        $dumpfile("top_u_74LVC541_tb.vcd");
        $dumpvars(0, top_u_74LVC541_tb);
    end

    reg nG1 = 1;
    reg nG2 = 1;
    reg [7:0] a = 0;
    wire [7:0] y;
    u_74LVC541 u1(
        .nG1(nG1),
        .nG2(nG2),
        .a(a),
        .y(y)
    );

    initial begin
      #10 nG1 = 0;
      #10 nG2 = 0;
      #10 a = 'hFF;
      #10 a = 'hAA;
      #3 a = 'h55;
      #10 nG1 = 1;
      #10 $finish;
    end
endmodule

module mux_74LVC541_tb;
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, mux_74LVC541_tb);
    end

    reg nG1 = 1;
    reg nG2 = 1;
    reg [7:0] a1 = 0;
    reg [7:0] a2 = 0;
    wire [7:0] y;
    u_74LVC541 u1(
        .nG1(nG1),
        .nG2(nG2),
        .a(a1),
        .y(y)
    );

    u_74LVC541 u2(
        .nG1(nG1),
        .nG2(!nG2),
        .a(a2),
        .y(y)
    );

    initial begin
      #10 nG1 = 0;
      nG2 = 0;
      #30 a1 = 'hFF;
      #30 a2 = 'hAA;
      #30 nG2 = 1;
      #30 $finish;
    end
endmodule

`endif  // _74LVC541_vh_
