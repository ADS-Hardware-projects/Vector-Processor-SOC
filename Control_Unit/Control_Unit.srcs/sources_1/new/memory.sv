module memory #(parameter AddressSize = 5, WordSize = 512) (
  input [AddressSize-1:0] InAddress, // address bus for input
  input [WordSize-1:0] DataIn, // data bus for output

  input [AddressSize-1:0] OutAddress, // address bus for input
  output [WordSize-1:0] DataOut, // data bus for output

  input CS, WE, OE // contol logic
);

logic [WordSize-1:0] Mem [0:(1<<AddressSize)-1];

// Defining the high impedance statement and the data
// if CS = 0 and OE = 0, this will output data.
// otherwise high impedance

assign DataOut = (CS && OE) ? Mem[OutAddress] : 'z;

// data write statement
always @(CS or WE) begin
  if (CS && WE)
    Mem[InAddress] = DataIn;
end


endmodule