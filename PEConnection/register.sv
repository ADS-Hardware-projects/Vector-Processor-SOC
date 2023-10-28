module register #(parameter WordSize = 512) (
  input [WordSize-1:0] DataIn, // data input
  input CS, WE, OE, CLK, RST, // control logic
  output reg [WordSize-1:0] DataOut // data output
);

  logic [WordSize-1:0] Mem;
  
  // Defining the high impedance statement and the data
  // if CS = 0 and OE = 0, this will output data.
  // otherwise high impedance
  assign DataOut = (CS && OE) ? Mem : 'z;
  
  // Data write statement
  always_ff @(posedge CLK or negedge RST) begin
    if (!RST) begin
      Mem <= '0; // Asynchronous reset when RST is deasserted
    end else if (CS && WE) begin
      Mem <= DataIn;
    end
  end
endmodule
