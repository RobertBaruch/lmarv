// A reset pin synchronizer meant to have its input from a pin, and its output go to the async
// system reset signal. This circuit asynchronously asserts areset, but synchronously deasserts
// it, while ensuring that areset remains asserted for at least one clock cycle, at most two.

module reset_pin_synchronizer(
  input clk,
  input reset_pin,
  output reg areset
);

  reg staged;

  always @(posedge clk or posedge reset_pin) begin
    if (!reset_pin) begin
      staged <= 0;
      areset <= staged;
    end else begin
      staged <= 1;
      areset <= 1;
    end
  end
endmodule
