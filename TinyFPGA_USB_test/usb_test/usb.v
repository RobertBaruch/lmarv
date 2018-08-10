module usb (
  input  clk_48mhz,
  input  reset,

  // USB lines.  Split into input vs. output and oe control signal to maintain
  // highest level of compatibility with synthesis tools.
  output usb_p_tx,
  output usb_n_tx,

  input  usb_p_rx,
  input  usb_n_rx,

  output usb_tx_en,

  output led
);

  ////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////
  ////////
  //////// usb engine
  ////////
  ////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////

  wire [6:0] dev_addr;
  wire [7:0] out_ep_data;

  wire ctrl_out_ep_req;
  wire ctrl_out_ep_grant;
  wire ctrl_out_ep_data_avail;
  wire ctrl_out_ep_setup;
  wire ctrl_out_ep_data_get;
  wire ctrl_out_ep_stall;
  wire ctrl_out_ep_acked;

  wire ctrl_in_ep_req;
  wire ctrl_in_ep_grant;
  wire ctrl_in_ep_data_free;
  wire ctrl_in_ep_data_put;
  wire [7:0] ctrl_in_ep_data;
  wire ctrl_in_ep_data_done;
  wire ctrl_in_ep_stall;
  wire ctrl_in_ep_acked;


  wire led_out_ep_req;
  wire led_out_ep_grant;
  wire led_out_ep_data_avail;
  wire led_out_ep_setup;
  wire led_out_ep_data_get;
  wire led_out_ep_stall;
  wire led_out_ep_acked;

  wire led_in_ep_req;
  wire led_in_ep_grant;
  wire led_in_ep_data_free;
  wire led_in_ep_data_put;
  wire [7:0] led_in_ep_data;
  wire led_in_ep_data_done;
  wire led_in_ep_stall;
  wire led_in_ep_acked;

  wire sof_valid;
  wire [10:0] frame_index;

  usb_serial_ctrl_ep ctrl_ep_inst (
    .clk(clk_48mhz),
    .reset(reset),
    .dev_addr(dev_addr),

    // out endpoint interface
    .out_ep_req(ctrl_out_ep_req),
    .out_ep_grant(ctrl_out_ep_grant),
    .out_ep_data_avail(ctrl_out_ep_data_avail),
    .out_ep_setup(ctrl_out_ep_setup),
    .out_ep_data_get(ctrl_out_ep_data_get),
    .out_ep_data(out_ep_data),
    .out_ep_stall(ctrl_out_ep_stall),
    .out_ep_acked(ctrl_out_ep_acked),


    // in endpoint interface
    .in_ep_req(ctrl_in_ep_req),
    .in_ep_grant(ctrl_in_ep_grant),
    .in_ep_data_free(ctrl_in_ep_data_free),
    .in_ep_data_put(ctrl_in_ep_data_put),
    .in_ep_data(ctrl_in_ep_data),
    .in_ep_data_done(ctrl_in_ep_data_done),
    .in_ep_stall(ctrl_in_ep_stall),
    .in_ep_acked(ctrl_in_ep_acked)
  );

  usb_led_ep usb_led_ep_inst (
    .clk(clk_48mhz),
    .reset(reset),

    // out endpoint interface
    .out_ep_req(led_out_ep_req),
    .out_ep_grant(led_out_ep_grant),
    .out_ep_data_avail(led_out_ep_data_avail),
    .out_ep_setup(led_out_ep_setup),
    .out_ep_data_get(led_out_ep_data_get),
    .out_ep_data(out_ep_data),
    .out_ep_stall(led_out_ep_stall),
    .out_ep_acked(led_out_ep_acked),

    // in endpoint interface
    .in_ep_req(led_in_ep_req),
    .in_ep_grant(led_in_ep_grant),
    .in_ep_data_free(led_in_ep_data_free),
    .in_ep_data_put(led_in_ep_data_put),
    .in_ep_data(led_in_ep_data),
    .in_ep_data_done(led_in_ep_data_done),
    .in_ep_stall(led_in_ep_stall),
    .in_ep_acked(led_in_ep_acked),

    .led(led)
  );

  wire nak_in_ep_grant;
  wire nak_in_ep_data_free;
  wire nak_in_ep_acked;

  usb_fs_pe #(
    .NUM_OUT_EPS(5'd2),
    .NUM_IN_EPS(5'd3)
  ) usb_fs_pe_inst (
    .clk(clk_48mhz),
    .reset(reset),

    .usb_p_tx(usb_p_tx),
    .usb_n_tx(usb_n_tx),
    .usb_p_rx(usb_p_rx),
    .usb_n_rx(usb_n_rx),
    .usb_tx_en(usb_tx_en),

    .dev_addr(dev_addr),

    // out endpoint interfaces
    .out_ep_req({led_out_ep_req, ctrl_out_ep_req}),
    .out_ep_grant({led_out_ep_grant, ctrl_out_ep_grant}),
    .out_ep_data_avail({led_out_ep_data_avail, ctrl_out_ep_data_avail}),
    .out_ep_setup({led_out_ep_setup, ctrl_out_ep_setup}),
    .out_ep_data_get({led_out_ep_data_get, ctrl_out_ep_data_get}),
    .out_ep_data(out_ep_data),
    .out_ep_stall({led_out_ep_stall, ctrl_out_ep_stall}),
    .out_ep_acked({led_out_ep_acked, ctrl_out_ep_acked}),

    // in endpoint interfaces
    .in_ep_req({1'b0, led_in_ep_req, ctrl_in_ep_req}),
    .in_ep_grant({nak_in_ep_grant, led_in_ep_grant, ctrl_in_ep_grant}),
    .in_ep_data_free({nak_in_ep_data_free, led_in_ep_data_free, ctrl_in_ep_data_free}),
    .in_ep_data_put({1'b0, led_in_ep_data_put, ctrl_in_ep_data_put}),
    .in_ep_data({8'b0, led_in_ep_data[7:0], ctrl_in_ep_data[7:0]}),
    .in_ep_data_done({1'b0, led_in_ep_data_done, ctrl_in_ep_data_done}),
    .in_ep_stall({1'b0, led_in_ep_stall, ctrl_in_ep_stall}),
    .in_ep_acked({nak_in_ep_acked, led_in_ep_acked, ctrl_in_ep_acked}),

    // sof interface
    .sof_valid(sof_valid),
    .frame_index(frame_index)
  );
endmodule
