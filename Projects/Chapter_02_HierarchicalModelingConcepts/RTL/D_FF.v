// module D_FF with synchronous reset
module D_FF(
  output reg  q,
  input  wire d,
  input  wire clk,
  input  wire reset
);

// Lots of new constructs. Ignore the functionality of the
// constructs.
// Concentrate on how the design block is built in a top-down fashion.
always @(posedge reset or negedge clk)
  if (reset)
    q <= 1'b0;
  else
    q <= d;
initial
begin
  $display ("ABC\nabc");
  $finish();

end


endmodule
