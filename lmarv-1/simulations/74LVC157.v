`ifndef _74LVC157_vh_
`define _74LVC157_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_74LVC157(
    input S,
    input nE,
    input [3:0] i0,
    input [3:0] i1,
    output [3:0] y 
);

    assign #7 y[3:0] = {!nE, !nE, !nE, !nE} & (({S, S, S, S} & i1[3:0]) | ({!S, !S, !S, !S} & i0[3:0]));

endmodule

module u_74LVC157_tb;
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, u_74LVC157_tb);
    end

    reg S = 0;
    reg nE = 1;
    reg [3:0] i0 = 4'b0101;
    reg [3:0] i1 = 4'b1010;
    wire [3:0] y;
    u_74LVC157 u1(
        .S(S),
        .nE(nE),
        .i0(i0),
        .i1(i1),
        .y(y)
    );

    initial begin
      #20 nE = 0;
      #20 S = 1;
      #20 nE = 1;
      #20 $finish;
    end
endmodule

`endif  // _74LVC157_vh_
