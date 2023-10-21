module memory #(parameter AddressSize = 5, WordSize = 512) (
  input [AddressSize-1:0] Address, // address bus
  inout [WordSize-1:0] Data, // data bus
  input CS, WE, OE // contol logic
);

logic [WordSize-1:0] Mem [0:(1<<AddressSize)-1];

// Defining the high impedance statement and the data
// if CS = 0 and OE = 0, this will output data.
// otherwise high impedance

assign Data = (CS && OE) ? Mem[Address] : 'z;

// data write statement
always @(CS or WE) begin
  if (CS && WE)
    Mem[Address] = Data;
end


endmodule