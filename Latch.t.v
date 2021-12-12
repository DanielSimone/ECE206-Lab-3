//==============================================================================
// Testbench for Latch
//==============================================================================

module Latch_test;

  // Local variables
  reg a, b;
  wire f, g;

  // VCD Dump
  initial begin
    $dumpfile("Latch_test.vcd");
    $dumpvars;
  end

  // Latch module
  Latch latch(
    .ns(a),
    .nr(b),
    .q(f),
    .nq(g)
  );

  // Main test
  initial begin
    a = 0;
    b = 0;

    #1
    b = 1;
    #1
    b = 0;
    #1
    a = 1;
    #1
    a = 0;
    #1
    a = 1;
    #1
    b = 1;
    #1
    a = 0;
    #1
    a = 1;
    #1
    b = 0;
    #1
    b = 1;
    #1
    a = 0;
    b = 0;
    #1

    $finish;
  end

endmodule
