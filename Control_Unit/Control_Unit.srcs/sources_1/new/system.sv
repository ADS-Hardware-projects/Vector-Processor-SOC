module system;

parameter MainMemoryAddressWidth = 5; // 32 addresses
parameter MainMemoryDataWidth = 512; // 512 bit width
parameter noOfPEs = 4; // number of processing elements

// defining global connections
logic masterCLK; // the master clock
logic [MainMemoryDataWidth - 1 : 0] mainMemoryWriter; // data comes from the C program
logic memoryWriteSelect; // this selects the writet to write to the main memory

// defininf wires for the main memory
logic [MainMemoryAddressWidth-1:0] mainAddrOut;    // Address for the main memory output
logic [MainMemoryAddressWidth-1:0] mainAddrIn;    // Address for the main memory Input
logic [MainMemoryDataWidth-1:0] mainDataOut;       // Data for the main memory output
logic [MainMemoryDataWidth-1:0] mainDataIn;       // Data for the main memory input
logic mainCS;
logic mainWE;
logic mainOE;

// defining wires for the dimenstion memory
logic [1:0] dimAddr;       // Address for the dimension memory
logic [15:0] dimData;      // Data for the dimension memory
logic dimCS;
logic dimWE;
logic dimOE;

// defining common wires for the registers
logic [noOfPEs - 1: 0]regCS;
logic [noOfPEs - 1: 0]regWE;
logic [noOfPEs - 1: 0]regOE;

// defining wires for the register1
logic [MainMemoryDataWidth-1:0] reg1DataIn; // databus for the register
logic [MainMemoryDataWidth-1:0] reg1DataOut; // databus for the register

// defining wires for the register2
logic [MainMemoryDataWidth-1:0] reg2DataIn; // databus for the register
logic [MainMemoryDataWidth-1:0] reg2DataOut; // databus for the register

// defining wires for the register3
logic [MainMemoryDataWidth-1:0] reg3DataIn; // databus for the register
logic [MainMemoryDataWidth-1:0] reg3DataOut; // databus for the register

// defining wires for the register4
logic [MainMemoryDataWidth-1:0] reg4DataIn; // databus for the register
logic [MainMemoryDataWidth-1:0] reg4DataOut; // databus for the register

// defininf wires for dimension register file
logic [15:0] dimDataIn;
logic [15:0] dim_l_dataOut;
logic [15:0] dim_m_dataOut;
logic [15:0] dim_n_dataOut;
logic [2:0] dim_CS;
logic [2:0] dim_WE;
logic [2:0] dim_OE;

// wires for the counter
logic counter_sel;

logic [3:0]rowCountDataIn;
logic [3:0]rowCountDataOut;
logic row_counter_CS;
logic row_counter_WE;
logic row_counter_OE;
logic row_counter_external;

logic [3:0]colCountDataIn;
logic [3:0]colCountDataOut;
logic col_counter_CS;
logic col_counter_WE;
logic col_counter_OE;
logic col_counter_external;

// defining logic and wires for shifter
wire [MainMemoryDataWidth - 1: 0]ShiftDataOutCombined;
wire [31: 0] ShiftDataIn [0 : 3]; // wires to connect PEs and 
logic shifterOE;
logic [noOfPEs - 1 : 0] shift;

// defining wires for Processing elements
logic [noOfPEs - 1 : 0]PEenable; // enable singals for the PEs
logic [MainMemoryDataWidth - 1: 0] PEBBus;



// Create instances of the "memory" module
memory #(5, 512) mainMem (.InAddress(mainAddrIn), .DataIn(mainDataIn), .OutAddress(mainAddrOut), .DataOut(mainDataOut), .CS(mainCS), .WE(mainWE), .OE(mainOE)); // The memory for store matrix dimensions

// create instances of the "register" module
register #(MainMemoryDataWidth) register1 (.DataIn(reg1DataIn), .DataOut(reg1DataOut), .CS(regCS[0]), .WE(regWE[0]), .OE(regOE[0]));
register #(MainMemoryDataWidth) register2 (.DataIn(reg2DataIn), .DataOut(reg2DataOut), .CS(regCS[1]), .WE(regWE[1]), .OE(regOE[1]));
register #(MainMemoryDataWidth) register3 (.DataIn(reg3DataIn), .DataOut(reg3DataOut), .CS(regCS[2]), .WE(regWE[2]), .OE(regOE[2]));
register #(MainMemoryDataWidth) register4 (.DataIn(reg4DataIn), .DataOut(reg4DataOut), .CS(regCS[3]), .WE(regWE[3]), .OE(regOE[3]));

// memory for hold matrix dimensions
register #(16) l_reg (.DataIn(dimDataIn), .DataOut(dim_l_dataOut), .CS(dim_CS[0]), .WE(dim_WE[0]), .OE(dim_OE[0]));
register #(16) m_reg (.DataIn(dimDataIn), .DataOut(dim_m_dataOut), .CS(dim_CS[1]), .WE(dim_WE[1]), .OE(dim_OE[1]));
register #(16) n_reg (.DataIn(dimDataIn), .DataOut(dim_n_dataOut), .CS(dim_CS[2]), .WE(dim_WE[2]), .OE(dim_OE[2]));

// counters
register #(4) row_counter(.DataIn(rowCountDataIn), .DataOut(rowCountDataOut), .CS(row_counter_CS), .WE(row_counter_WE), .OE(row_counter_OE));
register #(4) col_counter(.DataIn(colCountDataIn), .DataOut(colCountDataOut), .CS(col_counter_CS), .WE(col_counter_WE), .OE(col_counter_OE));

// create instances of PES
PE #(16, 32, 32) PE1 (.clk(masterCLK), .enable(PEenable[0]), .k(reg1DataOut), .x(PEBBus), .y(ShiftDataIn[0]));
PE #(16, 32, 32) PE2 (.clk(masterCLK), .enable(PEenable[1]), .k(reg2DataOut), .x(PEBBus), .y(ShiftDataIn[1]));
PE #(16, 32, 32) PE3 (.clk(masterCLK), .enable(PEenable[2]), .k(reg3DataOut), .x(PEBBus), .y(ShiftDataIn[2]));
PE #(16, 32, 32) PE4 (.clk(masterCLK), .enable(PEenable[3]), .k(reg4DataOut), .x(PEBBus), .y(ShiftDataIn[3]));

// create instance of the shifter
shifter #(512, 4, 32) PEshifter (.OE(shifterOE), .shift(shift), .dataIn(ShiftDataIn), .dataOut(ShiftDataOutCombined));

// connecting wires
assign PEBBus = mainDataOut;

// connecting dataout from main memory to data in of the registers
assign reg1DataIn = mainDataOut;
assign reg2DataIn = mainDataOut;
assign reg3DataIn = mainDataOut;
assign reg4DataIn = mainDataOut;

// need a multiplexer to select between shift data out or mainwriter to write to main memory
assign mainDataIn = (memoryWriteSelect) ? mainMemoryWriter : ShiftDataOutCombined;

// need a multiplexer to externally set row, or row = row + 1
assign rowCountDataIn = (row_counter_external) ? 4'b0000 : rowCountDataOut + 1;
assign colCountDataIn = (col_counter_external) ? 4'b0000 : colCountDataOut + 1;

// need a multiplexer to connect data read address to column/row counters
assign mainAddrOut = (counter_sel) ? {{1'b0}, rowCountDataOut} : {{1'b1}, colCountDataOut};


initial begin
  // Simulate your design here
end



endmodule
