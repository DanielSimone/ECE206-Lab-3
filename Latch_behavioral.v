module Latch(
  input ns,
  input nr,
  output q,
  output nq
);

  reg q;
  reg nq;

  always @( ns or nr ) begin
    if (ns == 0 & nr == 0) begin
      q <= 1;
      nq <= 1;
    end
    else if (ns == 0 & nr == 1) begin
      q <= 1;
      nq <= 0;
    end
    else if (ns == 1 & nr == 0) begin
      q <= 0;
      nq <= 1;
    end
  end

endmodule
