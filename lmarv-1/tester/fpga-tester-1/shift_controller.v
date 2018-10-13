module shift_controller(
  input go_read,         // Signal to start reading
  input go_write,        // Signal to start writing
  input ready_read,      // Signal that ready for read
  input ready_write,     // Signal that ready for write
  input read_shift_clk,  // Signal to shift for read
  input write_shift_clk, // Signal to shift for write
  output go_read_out,    // Arbritrated start reading
  output go_write_out,   // Arbritrated start writing
  output shift_clk       // Arbitrated shift clock
);

  assign go_read_out = go_read && ready_read && ready_write;
  assign go_write_out = go_write && ready_read && ready_write && !go_read;
  assign shift_clk = write_shift_clk || read_shift_clk;

endmodule
