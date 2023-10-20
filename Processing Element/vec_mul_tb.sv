module vec_mul_tb;
  timeunit 1ns/1ps;

  localparam C=16, W_X=8, W_K=8,
             W_Y = W_X + W_K + $clog2(C),
             LATENCY = $clog2(C) + 1,
             NUM_DATA = 10, CLK_PERIOD = 10;

  
  
  logic clk=0 , enable =1 ;
  logic signed   [C-1:0][W_K -1:0] k;
  logic signed   [C-1:0][W_X -1:0] x; 
  logic signed          [W_Y -1:0] y, y_expected;

  vec_mul #(.C(C), .W_X(W_X), .W_K(W_K)) dut (.*);
  initial forever #(CLK_PERIOD/2) clk <= ~clk;

  initial begin
    $dumpfile("dump.vcd"); $dumpvars(0, dut);

    repeat (NUM_DATA) begin

      @(posedge clk); #1

      
    for(int c=0; c<C; c++) begin
      x    [c] = $urandom_range(0, 2**W_X-1);
      k    [c] = $urandom_range(0, 2**W_K-1);
      end
      
      

      // Wait for output
      repeat (LATENCY) @(posedge clk); #1

      y_expected = 0;
        foreach (x[c])
          y_expected = $signed(y_expected) + $signed(x[c]) * $signed(k[c]);
      

      // Check
      assert (y == y_expected)
        $display("Output matched: %d", y);
      else
        $error("Output doesnt match. y:%p != y_expected:%p", y, y_expected);

    end
    $finish;
  end
endmodule