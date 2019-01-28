`ifndef _74LVC32_vh_
`define _74LVC32_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_74LVC32(
    input A,
    input B,
    output Y
);

    or #3 G_or(Y, A, B);

endmodule

`endif  // _74LVC32_vh_
