module PE #(
    parameter C=16, W_X=32, W_K=32,
    localparam W_M = W_X + W_K, // Multiplication - data widths gets summed
               W_Y = W_M + $clog2(C)  // Addition -  Each adder gived one extra bit
  )(  
    input  logic clk,enable,
    input  logic signed [C-1:0][W_K-1:0] k,  //---------vector 1 
    input  logic signed [C-1:0][W_X-1:0] x,  //---------vector 2
    output logic signed        [W_X-1:0] y_out, //-------Truncated output
    output logic  v_valid 
  );

  // Padding to a power of 2 
  localparam C_PAD = 2**$clog2(C);



 logic signed [W_Y-1:0] total;  // accumilating data without truncation
 logic [$clog2(C):0] PC =0;  // counter to count clock cycles 
 logic signed [W_X-1:0] y;
 

//Padded input vectors
 wire signed    [C_PAD-1:0][W_X-1:0] x_padded = {'0, x};
 wire signed    [C_PAD-1:0][W_K-1:0] k_padded = {'0, k};    
  


always @(posedge clk or negedge enable)begin
    
    if (enable == 0) begin 
      PC <= 0;
      v_valid <= 0;
    end
    
    else begin 
    PC <= PC + 1;
    
     if (PC == 16 ) begin
     v_valid <=1;
     y_out <= y;
     
     end
     else  v_valid <= 0;  
     
    end
    
end  

//----- Multiply and Accumulate --------// 

logic signed  [W_M-1:0] multiplied_data;

assign multiplied_data = $signed(x_padded[PC])*$signed(k_padded[PC]);


always_ff @(posedge clk or negedge enable)begin
  if (enable == 0) begin 
    total <=0 ;
  end
  else if (v_valid)  total <=total ;
 
  else  total <= total + multiplied_data ;
 

end

    assign y = total[W_X-1:0];  // Truncated output
    assign PC_out = PC;
    
endmodule