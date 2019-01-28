`ifndef _74LVC161_vh_
`define _74LVC161_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_74LVC161(
    input n_pe,
    input cep,
    input cet,
    input cp,
    input n_mr,
    input [3:0] d,
    output reg [3:0] q,
    output tc
);

    always @(posedge cp or negedge n_mr) begin
      if (n_mr) begin
        if (!n_pe) #4 q <= d;
        else if (cep & cet) #4 q <= q + 1;
      end else #4 q <= 0;
    end

    assign #4 tc = n_mr & cet & q == 4'b1111;

endmodule

`endif  // _74LVC161_vh_
