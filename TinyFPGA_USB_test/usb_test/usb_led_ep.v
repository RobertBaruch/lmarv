module usb_led_ep (
  input clk,
  input reset,


  ////////////////////
  // out endpoint interface
  ////////////////////
  output out_ep_req,
  input out_ep_grant,
  input out_ep_data_avail,
  input out_ep_setup,
  output out_ep_data_get,
  input [7:0] out_ep_data,
  output out_ep_stall,
  input out_ep_acked,


  ////////////////////
  // in endpoint interface
  ////////////////////
  output reg in_ep_req = 0,
  input in_ep_grant,
  input in_ep_data_free,
  output reg in_ep_data_put = 0,
  output [7:0] in_ep_data,
  output reg in_ep_data_done = 0,
  output in_ep_stall,
  input in_ep_acked,


  // Data interface
  output reg led = 0
);

  assign out_ep_stall = 1'b0;
  assign in_ep_stall = 1'b0;

  wire in_data_ready = in_ep_grant && in_ep_data_free;

  // Request access to data when available.
  assign out_ep_req = out_ep_data_avail;
  wire out_data_ready = out_ep_grant && out_ep_data_avail;

  // Get data when granted access.
  assign out_ep_data_get = out_data_ready;

  // State machine stuff
  localparam StateBegin     = 0;
  localparam StateReadFirst = 1;
  localparam StateStopRead  = 2;
  reg        [2:0]  state = StateBegin;
  reg        [2:0]  next_state = StateBegin;

  // Internal signals set by the state machine and synchronously registered on outputs.
  reg toggle_led_ = 0;

  // Updates the state, transfers internal signals, checks for reset, obeys internal ops.
  always @(posedge clk) begin
    if (reset) begin
      state <= StateBegin;
      led <= 0;
    end else begin
      if (toggle_led_) begin
        led <= !led;
      end
      state <= next_state;
    end
  end

  // State machine for rx.
  always @(*) begin
    // defaults
    next_state = state;
    toggle_led_ = 0;

    case (state)
      StateBegin: begin
        if (out_data_ready) begin
          next_state = StateReadFirst;
        end
      end

      StateReadFirst: begin
        if (out_ep_data == 8'hA1) begin
          toggle_led_ = 1;
        end
        next_state = StateStopRead;
      end

      StateStopRead: begin
        if (!out_data_ready) begin
          next_state = StateBegin;
        end
      end

    endcase
  end

endmodule
