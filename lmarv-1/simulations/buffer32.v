`ifndef _buffer32_vh_
`define _buffer32_vh_

`default_nettype none
`timescale 1ns / 1ns
`include "74LVC541.v"

module buffer32(
    input nG1,
    input nG2,
    input [31:0] a,
    output [31:0] y 
);

  u_74LVC541 u1(
      .nG1(nG1),
      .nG2(nG2),
      .a(a[31:24]),
      .y(y[31:24])
  );

  u_74LVC541 u2(
      .nG1(nG1),
      .nG2(nG2),
      .a(a[23:16]),
      .y(y[23:16])
  );

  u_74LVC541 u3(
      .nG1(nG1),
      .nG2(nG2),
      .a(a[15:8]),
      .y(y[15:8])
  );

  u_74LVC541 u4(
      .nG1(nG1),
      .nG2(nG2),
      .a(a[7:0]),
      .y(y[7:0])
  );

endmodule

module top_buffer32_tb;
    initial begin
        $dumpfile("top_buffer32_tb.vcd");
        $dumpvars(0, top_buffer32_tb);
    end

    reg nG = 1;
    reg [31:0] a = 0;
    wire [31:0] y1;
    wire [31:0] y2;
    buffer32 u1(
        .nG1(nG),
        .nG2(nG),
        .a(a),
        .y(y1)
    );

    buffer32 u2(
        .nG1(nG),
        .nG2(nG),
        .a(y1),
        .y(y2)
    );

    initial begin
      #10 nG = 0;
      #10 a = 'hFFFFFFFF;
      #10 a = 'hAAAAAAAA;
      #3 a = 'h55555555;
      #20 nG = 1;
      #10 $finish;
    end
endmodule

`endif  // _buffer32_vh_