// Define the module T_FF. It instantiates a D-flipflop. We assumed
// that module D-flipflop is defined elsewhere in the design. Refer
// to Figure 2-4 for interconnections.
module T_FF(
  output  wire  q,
  input   wire  clk,
  input   wire  reset
);

wire d;

D_FF dff0(
.q      (q),
.d      (d),
.clk    (clk),
.reset  (reset)
);

not n1(d, q); // not gate is a Verilog primitive. Explained later.
endmodule




