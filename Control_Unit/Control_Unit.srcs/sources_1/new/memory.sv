module memory #(parameter AddressSize = 5, WordSize = 512) (
  input [AddressSize-1:0] InAddress, // address bus for input
  input [WordSize-1:0] DataIn, // data bus for output

  input [AddressSize-1:0] OutAddress, // address bus for input
  output [WordSize-1:0] DataOut, // data bus for output

  input CS, WE, OE, CLK // contol logic
);

logic [WordSize-1:0] Mem [0:(1<<AddressSize)-1];


assign Mem[0]  = 64'h0000000c000000220000000c0000000b00000000000000000000000000000000;
assign Mem[1]  = 64'h0000002b0000004c0000000c0000000a00000000000000000000000000000000;
assign Mem[2]  = 64'h0000000b000000090000002d0000003200000000000000000000000000000000;
assign Mem[3]  = 64'h00000017000000160000003d0000002d00000000000000000000000000000000;
assign Mem[4]  = 64'h0000000000000000000000000000000000000000000000000000000000000000;
assign Mem[5]  = 64'h0000000000000000000000000000000000000000000000000000000000000000;
assign Mem[6]  = 64'h0000000000000000000000000000000000000000000000000000000000000000;
assign Mem[7]  = 64'h0000000000000000000000000000000000000000000000000000000000000000;

assign Mem[8]  = 64'h000000170000002c0000000c0000005000000000000000000000000000000000;
assign Mem[9]  = 64'h0000000c0000002a0000005a0000000d00000000000000000000000000000000;
assign Mem[10] = 64'h0000000c00000030000000560000002000000000000000000000000000000000;
assign Mem[11] = 64'h0000003400000027000000510000001600000000000000000000000000000000;
assign Mem[12] = 64'h0000000000000000000000000000000000000000000000000000000000000000;
assign Mem[13] = 64'h0000000000000000000000000000000000000000000000000000000000000000;
assign Mem[14] = 64'h0000000000000000000000000000000000000000000000000000000000000000;
assign Mem[15] = 64'h0000000000000000000000000000000000000000000000000000000000000000;

// Defining the high impedance statement and the data
// if CS = 0 and OE = 0, this will output data.
// otherwise high impedance

assign DataOut = (CS && OE) ? Mem[OutAddress] : 'z;

// data write statement
always @(posedge CLK) begin
  if (CS && WE)
    Mem[InAddress] = DataIn;
end


endmodule