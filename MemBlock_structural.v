// `include "Latch_structural.v"

module MemBlock(
  input x,
  input y,
  output q,
  output nq
);

  wire a, b, c, d, e;

  assign e = x & b;

  Latch latchBottom(
    .ns(e),
    .nr(y),
    .q(c),
    .nq(d)
  );
  Latch latchMiddle(
    .ns(b),
    .nr(c),
    .q(q),
    .nq(nq)
  );
  Latch latchTop(
    .ns(d),
    .nr(x),
    .q(a),
    .nq(b)
  );

endmodule
