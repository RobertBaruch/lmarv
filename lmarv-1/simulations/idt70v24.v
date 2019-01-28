`ifndef _IDT70V24_vh_
`define _IDT70V24_vh_

`default_nettype none
`timescale 1ns / 1ns

// Not a true IDT70V24. Just a simultaneous read/write version.
// TODO: Model setup/hold time for d_write, addresses.
module u_IDT70V24(
    input [4:0] write_addr,
    input [4:0] read_addr,
    input [15:0] d_write,
    output [15:0] d_read,
    input nOE,
    input nWR
);

  reg [15:0] d[32];
  wire internal_nWR;

  bufif0 #(15, 15, 10) G_output_buffers[16](d_read, d[read_addr], nOE);
  buf #(0, 12) G_internal_nWR(internal_nWR, nWR);

  always @(posedge internal_nWR) begin
    d[write_addr] <= d_write;
  end

endmodule

module u_IDT70V24_tb;
    initial begin
        $dumpfile("u_IDT70V24_tb.vcd");
        $dumpvars(0, u_IDT70V24_tb);
    end

    reg [4:0] write_addr = 0;
    reg [4:0] read_addr = 0;
    reg [15:0] d_write = 0;
    wire [15:0] d_read;
    reg nOE = 1;
    reg nWR = 1;

    u_IDT70V24 u1(
        .write_addr(write_addr),
        .read_addr(read_addr),
        .d_write(d_write),
        .d_read(d_read),
        .nOE(nOE),
        .nWR(nWR)
    );

    initial begin
      #5 nOE = 0;
      #5 d_write = 'hFA0F;
      #10 nWR = 0;
      #10 nWR = 1;
      #5 nWR = 0;
      #15 nWR = 1;
      #20 $finish;
    end
endmodule

`endif  // _IDT70V24_vh_
