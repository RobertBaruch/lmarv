`timescale 1ns / 1ns

`ifdef __ICARUS__
 `define finish_and_return(code) $finish_and_return(code)
`else
 `define finish_and_return(code) $finish
`endif

module top_tb;
    initial begin
      $dumpfile("top_tb.vcd");
      $dumpvars(0, top_tb);
      $dumpvars(0, dut);
      $dumpvars(0, clock_thing);
      $dumpvars(0, shift_out_thing);
      $dumpvars(0, shift_in_thing);
    end

    reg clk = 0;

    initial begin
      forever begin
        #1 clk <= !clk;
      end
    end

    wire led;
    wire shclk;
    wire n_oe;
    wire swr;
    wire wrld;
    wire usbpu;

    shifter dut(
      .CLK(clk),
      .USBPU(usbpu),
      .LED(led),
      .PIN_1(shclk),
      .PIN_2(n_oe),
      .PIN_3(swr),
      .PIN_4(wrld)
    );

    wire action_pulse;
    wire action_clk;

    clocker clock_thing(
      .clk(clk),
      .action_pulse(action_pulse),
      .action_clk(action_clk)
    );

    wire arb_read_go;
    wire arb_write_go;
    wire arb_shift_clk;

    reg load_data_clk = 0;
    reg [31:0] load_data = 32'h8F8F8FE1;
    reg write_go = 0;
    wire write_load_clk;
    wire write_shift_clk;
    wire serial_data_out;
    wire write_ready;

    shift_out shift_out_thing(
      .clk(clk),
      .action_pulse(action_pulse),
      .action_clk(action_clk),
      .load_data_clk(load_data_clk),
      .load_data(load_data),
      .go(arb_write_go),
      .write_load_clk(write_load_clk),
      .shift_clk(write_shift_clk),
      .serial_data_out(serial_data_out),
      .ready(write_ready)
    );

    initial begin
      #90 load_data_clk <= 1;
      #96 load_data_clk <= 0;
      #100 write_go <= 1;
    end

    wire [31:0] read_data;
    reg read_go = 0;
    wire read_load_clk;
    wire read_shift_clk;
    reg serial_data_in = 0;
    wire read_ready;
    reg [31:0] test_read_data = 32'h8F8F8FE1;
    reg [4:0] test_read_data_ptr = 5'd31;

    shift_in shift_in_thing(
      .clk(clk),
      .action_pulse(action_pulse),
      .action_clk(action_clk),
      .data(read_data),
      .go(arb_read_go),
      .read_load_clk(read_load_clk),
      .shift_clk(read_shift_clk),
      .serial_data_in(serial_data_in),
      .ready(read_ready)
    );

    initial begin
      #90 read_go <= 1;
    end

    always @(posedge read_shift_clk) begin
      serial_data_in <= test_read_data[test_read_data_ptr];
      test_read_data_ptr <= test_read_data_ptr - 1;
    end

    shift_controller controller(
      .go_read(read_go),
      .go_write(write_go),
      .ready_read(read_ready),
      .ready_write(write_ready),
      .read_shift_clk(read_shift_clk),
      .write_shift_clk(write_shift_clk),
      .go_read_out(arb_read_go),
      .go_write_out(arb_write_go),
      .shift_clk(arb_shift_clk)
    );

    initial begin
      #10000;
      $finish(0);
    end
endmodule
