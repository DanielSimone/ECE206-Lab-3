module MemBlock(
  input x,
  input y,
  output q,
  output nq
);

  reg q;
  reg nq;

  always @(posedge x) begin
  q <= y;
  nq <= ~y;
  end

endmodule
