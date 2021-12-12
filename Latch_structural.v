module Latch(
  input ns,
  input nr,
  output q,
  output nq
);

assign q = ~(ns && nq);
assign nq = ~(nr && q);

endmodule
