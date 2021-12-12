//==============================================================================
// Testbench for MemBlock
//==============================================================================

//`include "MemBlock_structural.v"

module MemBlock_test;

  // Local variables
  reg a, b;
  wire f, g;

  // VCD Dump
  initial begin
    $dumpfile("MemBlock_test.vcd");
    $dumpvars;
  end

  // Latch module
  MemBlock memblock(
    .x(a),
    .y(b),
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
