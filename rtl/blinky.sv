// Basic blinky LED module
//

module blinky(
    input clk,
    input arst_n,
    output led
);
  localparam COUNTER = 16'h1234;

  reg [15:0] counter;
  reg led_r;

  always_ff @(posedge clk or negedge arst_n) begin
    if (~arst_n) begin
      counter <= 16'h0;
    end if (counter == COUNTER) begin
      // Reset the counter when it counts up to the threshold.
      counter <= 16'h0;
    end else begin
      counter <= counter + 1'b1;
    end
  end

  always_ff @(posedge clk or negedge arst_n) begin
    if (~arst_n) begin
      led_r <= 1'b0;
    end else if (counter == COUNTER) begin
      led_r <= ~led_r;
    end
  end;

endmodule : blinky
