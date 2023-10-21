module memoryNport #(parameter AddressSize = 5, WordSize = 512, NumPorts = 4) (
  input [AddressSize-1:0] Address [0:NumPorts-1], // address buses for each port
  inout [WordSize-1:0] Data [0:NumPorts-1], // data buses for each port
  input CS, // chip select signals for each port
  input WE [0:NumPorts-1], // write enable signals for each port
  input OE [0:NumPorts-1] // output enable signals for each port
);

logic [WordSize-1:0] Mem [0:(1<<AddressSize)-1]; // memory module generation

generate
  genvar i;
  for (i = 0; i < NumPorts; i = i + 1) begin : port_gen
    // Data read statements for each port
    assign Data[i] = (CS && OE[i]) ? Mem[Address[i]] : 'z;

    // Data write statements for each port
    always @(CS or WE[i]) begin
      if (CS && WE[i])
        Mem[Address[i]] = Data[i];
    end
  end
endgenerate

endmodule
