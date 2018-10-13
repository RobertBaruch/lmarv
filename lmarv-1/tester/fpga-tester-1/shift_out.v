module shift_out(
  input clk,           // 16MHz global clock
  input action_pulse,  // 1MHz global action pulse, for setting things up before the
                       // positive edge of action_clk
  input action_clk,    // 1MHz action clock, toggles after action_pulse
  input load_data_clk,      // Loads data into this module
  input [31:0] load_data,   // The data to load into this module
  input go,                 // The signal to start shifting
  output write_load_clk,    // Loads the shifter outputs
  output reg shift_clk = 0, // Shifts the data into the shifter
  output serial_data_out,   // The data to shift into the shifter
  output ready              // The ready signal
);

  reg [32:0] data = 0;
  reg [5:0] cycle_counter = 0;
  reg active = 0;

  assign serial_data_out = data[32];

  wire start = ready && go;
  assign ready = cycle_counter == 0 && !active;
  assign write_load_clk = cycle_counter == 6'd33;
  wire stop = cycle_counter == 6'd34;

  always @(posedge clk) begin
    if (start) active <= 1;
    else if (stop) active <= 0;
  end

  always @(posedge clk) begin
    if (cycle_counter >= 1 && cycle_counter <= 32) shift_clk <= action_clk;
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
    if (ready && !go && load_data_clk) begin
      data[31:0] <= load_data[31:0];
      data[32] <= 0;
    end else if (active && action_pulse) begin
      data[32:1] <= data[31:0];
      data[0] <= 0;
    end
  end

endmodule
