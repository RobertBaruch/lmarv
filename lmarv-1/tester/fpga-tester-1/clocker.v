module clocker(
  input clk,            // 16MHz global clock
  output action_pulse,  // 1MHz global action pulse, for setting things up before the
                        // positive edge of action_clk
  output action_clk     // 1MHz clock, positive edge after action_pulse
);

reg [4:0] action_counter = 0;
assign action_pulse = action_counter[4:0] == 5'b01000;
assign action_clk = action_counter[4];

// increment counters
always @(posedge clk) begin
  action_counter <= action_counter + 1;
end

endmodule
