module register #(parameter WordSize = 512) (
  input [WordSize-1:0] DataIn, // data input
  input [WordSize-1:0] DataOut, // data output
  input CS, WE, OE // contol logic
);

logic [WordSize-1:0] Mem;

// Defining the high impedance statement and the data
// if CS = 0 and OE = 0, this will output data.
// otherwise high impedance
assign DataOut = (CS && OE) ? Mem : 'z;

// data write statement
always @(CS or WE) begin
  if (CS && WE)
    Mem = DataIn;
end


endmodule