`ifndef _IS61LV256AL_vh_
`define _IS61LV256AL_vh_

`default_nettype none
`timescale 1ns / 1ns

module u_IS61LV256AL(
    input [14:0] a,
    input [7:0] d_write,
    output [7:0] d_read,
    input nWE,
    input nOE,
    input nCS
);

    reg [7:0] data[32768];
    reg [14:0] reg_addr;

    always @(negedge nWE) begin
      if (!nCS & nOE) begin
          reg_addr <= a;
      end
    end

    always @(posedge nWE) begin
      if (!nCS & nOE) begin
          data[reg_addr] <= d_write;
      end
    end

  bufif0 #(10) G_output_buffers[8](d_read, data[a], nOE);

endmodule

module u_IS61LV256AL_tb;
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, u_IS61LV256AL_tb);
    end

    reg [14:0] a = 0;
    reg [7:0] d_write = 0;
    wire [7:0] d_read;
    reg nWE = 1;
    reg nOE = 1;
    reg nCS = 0;
    u_IS61LV256AL u1(
        .a(a),
        .d_write(d_write),
        .d_read(d_read),
        .nWE(nWE),
        .nOE(nOE),
        .nCS(nCS)
    );

    initial begin
      #10 a = 100;
      #10 d_write = 'hFA;
      #3 nWE = 0;
      #3 nWE = 1;
      #10 nOE = 0;
      #30 a = 200;
      #30 $finish;
    end
endmodule

`endif  // _IS61LV256AL_vh_
