

module vec_mul #(
    parameter C=8, W_X=8, W_K=8,
    localparam DEPTH = $clog2(C),
               W_M = W_X + W_K, // Multiplication - data widths gets summed
               W_Y = W_M + DEPTH  // Addition -  Each adder gived one extra bit
  )(  
    input  logic clk,enable,
    input  logic signed [C-1:0][W_K-1:0] k,
    input  logic signed [C-1:0][W_X-1:0] x, 
    output logic signed        [W_X-1:0] y_out,
    output logic v_valid 

  );

  // Padding to a power of 2 
  localparam C_PAD = 2**$clog2(C);
//logic signed [W_Y-1:0] adder_tree [DEPTH+1][C_PAD]; //  adder_tree
  logic signed [C_PAD-1:0][W_Y-1:0]multiplied_elements ;
  logic signed [W_Y-1:0] total;
  
  logic signed   [W_Y-1:0] y;

  wire signed    [C_PAD-1:0][W_X-1:0] x_padded = {'0, x};
  wire signed    [C_PAD-1:0][W_K-1:0] k_padded = {'0, k};    
  logic valid =0;
  logic [7:0]loop_counter =0 ; 

  genvar c, d, a;

always_ff @(posedge clk)begin
    
    if (enable == 0) loop_counter <= 0;
    else begin 
    loop_counter <= loop_counter + 1'b1;
    if (loop_counter !=0 && loop_counter == 2)begin 
     v_valid <=1;
     end
    else begin v_valid <= 0;
    end 
    end
end  



  for (c=0; c<C_PAD; c=c+1)
      always_ff @(posedge clk)  // register after each mul
         //if (enable)adder_tree[0][c] <= $signed(k_padded[c]) * $signed(x_padded[c]);
         if (enable) multiplied_elements [c][W_Y-1:0] <= $signed(k_padded[c]) * $signed(x_padded[c]);
  
 always_comb begin
 total =0;
 for (int n=0; n<C_PAD; n=n+1) begin
    
    total = total + multiplied_elements [n][W_Y-1:0];
    
    end
end

//    for (d=0; d<DEPTH; d=d+1)
//      for (a=0; a<C_PAD/2**(d+1); a=a+1)
         
//        always_ff @(posedge clk)  // register after each add
//       begin
//         if (enable) begin 
//         adder_tree [d+1][a] <= adder_tree [d][2*a] + adder_tree [d][2*a+1];

             
//          end              
//        end                      
    
   
    assign y = total;
    assign y_out = y[W_X-1:0];
    
endmodule