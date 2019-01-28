`ifndef _74LVC08_vh_
`define _74LVC08_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_74LVC08(
    input A,
    input B,
    output Y
);

    and #3 G_and(Y, A, B);

endmodule

`endif  // _74LVC08_vh_
