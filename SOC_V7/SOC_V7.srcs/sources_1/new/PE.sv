module PE #(
  parameter NoOfElem = 16, 
  parameter wordSize = 32
  )(
  input clk,
  input RESET,
  input signed [NoOfElem-1 : 0][wordSize-1 : 0] in1,  //---------vector 1 
  input signed [NoOfElem-1 : 0][wordSize-1 : 0] in2,  //---------vector 2

  output logic signed [wordSize-1 : 0] out, //-------Truncated output
  output logic  valid
);

// logic signed [NoOfElem-1 : 0][wordSize-1 : 0] in1;  //---------vector 1 
// logic signed [NoOfElem-1 : 0][wordSize-1 : 0] in2;  //---------vector 2
// logic signed [wordSize-1 : 0] out; //-------Truncated output

/////////////////////// REGISTERS /////////////////////////
logic [wordSize-1 : 0] total; // the total will be accumulated here
logic [$clog2(NoOfElem) - 2 : 0]counter;


//////////////////////// COMBINATIONAL LOGIC ///////////////////////////
logic [$clog2(NoOfElem) - 1 : 0]counter_4x;
assign counter_4x = {counter, 2'b0}; // append 2 zeros




//////////////////////// SEQUENTIAL LOGIC /////////////////////////////
always_ff @(posedge clk or negedge RESET) begin
  if(!RESET) begin
    // Resetting outputs 
    out <= 0;
    valid <= 0;

    // Resetting the registers
    total <= 0;
    counter <= 0;
  end else begin
    if (~counter[$clog2(NoOfElem) - 2]) begin
      total <= total + (in1[counter_4x] * in2[counter_4x]) + (in1[counter_4x+1] * in2[counter_4x+1]) + (in1[counter_4x+2] * in2[counter_4x+2]) + (in1[counter_4x+3] * in2[counter_4x+3]); // multiply and accumulate
      counter <= counter + 1; // increment the counter
    end else begin 
      out <=  total;
      valid <= 1;
    end  
  end
end


endmodule