module memory4Port #(parameter AddressSize = 5, WordSize = 512) (
  input [AddressSize-1:0] AddressPort1, AddressPort2, AddressPort3, AddressPort4, // address buses for each port
  inout [WordSize-1:0] DataPort1, DataPort2, DataPort3, DataPort4, // data buses for each port
  input CS1, CS2, CS3, CS4, // chip select signals for each port
  input WE1, WE2, WE3, WE4, // write enable signals for each port
  input OE1, OE2, OE3, OE4 // output enable signals for each port
);

logic [WordSize-1:0] Mem [0:(1<<AddressSize)-1];

// Data read statements for each port
assign DataPort1 = (CS1 && OE1) ? Mem[AddressPort1] : 'z;
assign DataPort2 = (CS2 && OE2) ? Mem[AddressPort2] : 'z;
assign DataPort3 = (CS3 && OE3) ? Mem[AddressPort3] : 'z;
assign DataPort4 = (CS4 && OE4) ? Mem[AddressPort4] : 'z;

// Data write statements for each port
always @(CS1 or WE1) begin
  if (CS1 && WE1)
    Mem[AddressPort1] = DataPort1;
end

always @(CS2 or WE2) begin
  if (CS2 && WE2)
    Mem[AddressPort2] = DataPort2;
end

always @(CS3 or WE3) begin
  if (CS3 && WE3)
    Mem[AddressPort3] = DataPort3;
end

always @(CS4 or WE4) begin
  if (CS4 && WE4)
    Mem[AddressPort4] = DataPort4;
end

endmodule
