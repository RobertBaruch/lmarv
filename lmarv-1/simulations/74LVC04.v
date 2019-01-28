`ifndef _74LVC04_vh_
`define _74LVC04_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_74LVC04(
    input a,
    output y
);

    // The Verilog not gate rejects glitches under the delay.
    not #4 G0(y, a);

endmodule

module top_u_74LVC04_tb;
    initial begin
        $dumpfile("top_u_74LVC04_tb.vcd");
        $dumpvars(0, top_u_74LVC04_tb);
    end

    reg a = 0;
    wire y1;
    wire y2;
    wire y3;
    u_74LVC04 u1(
        .a(a),
        .y(y1)
    );
    u_74LVC04 u2(
        .a(y1),
        .y(y2)
    );
    u_74LVC04 u3(
        .a(y2),
        .y(y3)
    );

    initial begin
      #10 a = 'b1;
      #10 a = 'b0;
      #2 a = 'b1;
      #1 a = 'b0;
      #1 a = 'b1;
      #2 a = 'b0;
      #30 $finish;
    end
endmodule

`endif  // _74LVC04_vh_
