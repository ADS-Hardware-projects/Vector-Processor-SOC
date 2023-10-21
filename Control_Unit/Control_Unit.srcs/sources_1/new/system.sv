module system;

parameter MainMemoryAddressWidth = 5; // 32 addresses
parameter MainMemoryDataWidth = 512; // 512 bit width
parameter noOfPEs = 4; // number of processing elements

// defininf wires for the main memory
logic [MainMemoryAddressWidth-1:0] mainAddr[0: noOfPEs - 1];    // Address for the main memory
logic [MainMemoryDataWidth-1:0] mainData[0: noOfPEs -1];       // Data for the main memory
logic mainCS;
logic mainWE[0: noOfPEs -1];
logic mainOE[0: noOfPEs -1];

// defining wires for the dimenstion memory
logic [1:0] dimAddr;       // Address for the dimension memory
logic [15:0] dimData;      // Data for the dimension memory
logic dimCS;
logic dimWE;
logic dimOE;

// defining wires for the register1
logic [MainMemoryDataWidth-1:0] reg1Data; // databus for the register
logic reg1CS;
logic reg1WE;
logic reg1OE;

// defining wires for the register2
logic [MainMemoryDataWidth-1:0] reg2Data; // databus for the register
logic reg2CS;
logic reg2WE;
logic reg2OE;

// defining wires for the register3
logic [MainMemoryDataWidth-1:0] reg3Data; // databus for the register
logic reg3CS;
logic reg3WE;
logic reg3OE;

// defining wires for the register4
logic [MainMemoryDataWidth-1:0] reg4Data; // databus for the register
logic reg4CS;
logic reg4WE;
logic reg4OE;

// Create instances of the "memory" module
memoryNport#(5, 512, 4) mainMem(.Address(mainAddr[0: noOfPEs - 1]), .Data(mainData[0: noOfPEs -1]), .CS(mainCS), .WE(mainWE[0: noOfPEs -1]), .OE(mainOE[0: noOfPEs -1])); // The main memory to hold two matrixes
memory #(2, 16) dimMem (.Address(dimAddr), .Data(dimData), .CS(dimCS), .WE(dimWE), .OE(dimOE)); // The memory for store matrix dimensions

// create instances of the "register" module
register #(MainMemoryDataWidth) register1 (.Data(reg1Data), .CS(reg1CS), .WE(reg1WE), .OE(reg1OE));
register #(MainMemoryDataWidth) register2 (.Data(reg2Data), .CS(reg2CS), .WE(reg2WE), .OE(reg2OE));
register #(MainMemoryDataWidth) register3 (.Data(reg3Data), .CS(reg3CS), .WE(reg3WE), .OE(reg3OE));
register #(MainMemoryDataWidth) register4 (.Data(reg4Data), .CS(reg4CS), .WE(reg4WE), .OE(reg4OE));

// You can add more instances as needed

initial begin
  // Simulate your design here
end



endmodule
