module vec_mul #(
    parameter C=8, W_X=8, W_K=8,
    localparam DEPTH = $clog2(C),
               W_M = W_X + W_K, // Multiplication - data widths gets summed
               W_Y = W_M + DEPTH  // Addition -  Each adder gived one extra bit
  )(  
    input  logic clk,
    input  logic signed [C-1:0][W_K-1:0] k,
    input  logic signed [C-1:0][W_X-1:0] x, 
    output logic signed        [W_Y-1:0] y
  );

  // Padding to a power of 2 
  localparam C_PAD = 2**$clog2(C);
  logic signed [W_Y-1:0] adder_tree [DEPTH+1][C_PAD]; //  adder_tree

  wire signed    [C_PAD-1:0][W_X-1:0] x_padded = {'0, x};
  wire signed    [C_PAD-1:0][W_K-1:0] k_padded = {'0, k};      

  genvar c, d, a;

  for (c=0; c<C_PAD; c=c+1)
      always_ff @(posedge clk)  // register after each mul
        adder_tree[0][c] <= $signed(k_padded[c]) * $signed(x_padded[c]);

    for (d=0; d<DEPTH; d=d+1)
      for (a=0; a<C_PAD/2**(d+1); a=a+1)
        always_ff @(posedge clk)  // register after each add
         adder_tree [d+1][a] <= adder_tree [d][2*a] + adder_tree [d][2*a+1];

    assign y = adder_tree [DEPTH][0];
  
endmodule