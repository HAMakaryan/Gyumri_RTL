`timescale 1ns/10ps
// Module name and port list
// Stimulus module
module SR_latch_TB;
// Declarations of wire, reg, and other variables
wire q, qbar;
reg set, reset;
// Instantiate lower-level modules
// In this case, instantiate SR_latch
// Feed inverted set and reset signals to the SR latch
SR_latch m1(
  .q(q),
  .qbar(qbar),
  .set(set),
  .reset(reset)
);
// Behavioral block, initial
initial
begin
$monitor($time, " set = %b, reset= %b, q= %b\n",set,reset,q);

set     = 1;
reset   = 1;
#1;
reset = 0;
set   = 0;
#1 reset = 1;
#1 set   = 1;
#5 reset = 0;
#1 reset = 1;
#5 reset = 0;
#1 reset = 1;
#5 reset = 0;
#1 reset = 1;
#5 set   = 0;
#1 set   = 1;
#5 reset = 0;
#1 reset = 1;
#5 set   = 0;
#1 set   = 1;
end
// endmodule statement
endmodule


