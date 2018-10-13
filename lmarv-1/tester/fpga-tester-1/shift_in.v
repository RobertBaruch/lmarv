module shift_in(
  input clk,           // 16MHz global clock
  input action_pulse,  // 1MHz global action pulse, for setting things up before the
                       // positive edge of action_clk
  input action_clk,    // 1MHz action clock, toggles after action_pulse
  output reg [31:0] data = 0, // The data that was read in, valid on ready = 1
  input go,                 // The signal to start shifting
  output read_load_clk,     // Loads the shifter inputs
  output reg shift_clk = 0, // Shifts the data out of the shifter
  input serial_data_in,     // The read from the shifter
  output ready              // The ready signal
);

  reg [5:0] cycle_counter = 0;
  reg active = 0;

  wire start = ready && go;
  assign ready = cycle_counter == 0 && !active;
  assign read_load_clk = cycle_counter == 6'd1;
  wire stop = cycle_counter == 6'd34;

  always @(posedge clk) begin
    if (start) active <= 1;
    else if (stop) active <= 0;
  end

  always @(posedge clk) begin
    if (cycle_counter >= 2 && cycle_counter <= 33) shift_clk <= action_clk;
    else shift_clk <= 0;
  end

  always @(posedge clk) begin
    if (action_pulse) begin
      if (start) cycle_counter <= 1;
      else if (stop) cycle_counter <= 0;
      else if (active) cycle_counter <= cycle_counter + 1;
    end
  end

  always @(posedge clk) begin
    if (start && action_pulse) data[31:0] <= 0;
    else if (active && action_pulse) begin
      data[31:1] <= data[30:0];
      data[0] <= serial_data_in;
    end
  end

endmodule
