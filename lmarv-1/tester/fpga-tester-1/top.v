module shifter (
  input CLK,     // 16MHz clock
  output LED,    // User/boot LED next to power LED
  output USBPU,  // USB pull-up resistor
  output PIN_1,  // shift clock (CLK)
  output PIN_2,  // n_oe (nOE)
  output PIN_3,  // serial_write (SI)
  output PIN_4,  // write_load (WLD)
  output PIN_5,  // n_read_load (nRLD)
  input PIN_6    // serial_read (SO)
);

  // drive USB pull-up resistor to '0' to disable USB
  assign USBPU = 0;

  // rename pins
  wire shift_clock;
  reg n_oe = 1;
  wire serial_write;
  wire write_load_clk;
  wire n_read_load_clk;
  wire serial_read;
  assign PIN_1 = shift_clock;
  assign PIN_2 = n_oe;
  assign PIN_3 = serial_write;
  assign PIN_4 = write_load_clk;
  assign PIN_5 = n_read_load_clk;
  assign PIN_6 = serial_read;

  reg [31:0] output_data = 32'h8888060A;

  reg [31:0] input_data = 32'h00000000;
  reg [32:0] shift_data = 0;
  assign serial_write = shift_data[32];
  reg [33:0] write_load_shifter = 0;
  reg [34:0] read_load_shifter = 0;
  reg [66:0] shift_in_en = 67'hFFFFFFFF;
  wire shift_in;
  assign shift_in = shift_in_en[66];

  // Approximate 1Hz counter (actually 16777216/16000000 Hz)
  reg [24:0] counter = 25'h0FFFFFE;
  wire active;
  assign active = counter[24];
  assign LED = active;


  // 1MHz shift counter
  reg shift_clk_enable = 0;
  reg write_load_clk_enable = 0;
  reg read_load_clk_enable = 0;

  reg [4:0] shift_counter = 0;
  wire do_shift;
  assign do_shift = shift_counter[4:0] == 5'b01000;

  assign shift_clock = shift_clk_enable && shift_counter[4];
  assign write_load_clk = write_load_clk_enable && shift_counter[4];
  assign n_read_load_clk = !(read_load_clk_enable && shift_counter[4]);


  // increment counters
  always @(posedge CLK) begin
    shift_counter <= shift_counter + 1;
    counter <= counter + 1;
    if (write_load_clk_enable) n_oe <= 0;
  end

  always @(posedge CLK) begin
    shift_clk_enable <= !write_load_shifter[33] && !read_load_shifter[34];
    write_load_clk_enable <= write_load_shifter[33];
    read_load_clk_enable <= read_load_shifter[34];
    if (write_load_clk_enable && do_shift) output_data[31:0] <= ~output_data[31:0];
  end

  // shift in/out
  always @(posedge CLK) begin
    if (do_shift && active) begin
      shift_data[32:1] <= shift_data[31:0];
      shift_data[0] <= 0;
      write_load_shifter[33:1] <= write_load_shifter[32:0];
      write_load_shifter[0] <= 0;
      read_load_shifter[34:1] <= read_load_shifter[33:0];
      read_load_shifter[0] <= 0;
      shift_in_en[66:1] <= shift_in_en[65:0];
      shift_in_en[0] <= 0;
    end else if (!active) begin
      write_load_shifter[33] <= 0;
      write_load_shifter[32:0] <= 33'h1;
      read_load_shifter[34] <= 0;
      read_load_shifter[33:0] <= 34'h1;
      shift_data[32] <= 0;
      shift_data[31:0] <= output_data[31:0];
      shift_in_en[66:0] <= 67'hFFFFFFFF;
    end
  end

endmodule
