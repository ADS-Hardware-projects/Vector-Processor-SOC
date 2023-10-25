module system #(
  parameter MainMemoryAddressWidth = 5, // 32 addresses
  parameter MainMemoryDataWidth = 512, // 512 bit width
  parameter noOfPEs = 4 // number of processing elements
)(

  ////////// JUST TO CKECH CONNECTIONS
  output logic [7:0] dim_l_dataOut,
  output logic [7:0] dim_m_dataOut,
  output logic [7:0] dim_n_dataOut,

  output logic [4:0]rowCountDataOut,
  output logic ROW_reg_DONE,
  output logic row_counter_WE,
  output logic [4:0]rowCountDataIn,


  /////////// ESSENTIAL CONNECTIONS
  input logic RESET,
  input logic masterCLK, // the master clock
  input logic [MainMemoryDataWidth - 1 : 0] mainMemoryWriteEXT, // data comes from the C program
  input logic [MainMemoryAddressWidth-1:0] mainMemAddrOutExternal, // address externaly read the main memory
  input logic memoryReadSelect, // this selects the external address to read from the memory (MUST BE 1 in the process)
  input logic memoryWriteSelect, // this selects the writet to write to the main memory
  input logic [7:0] dimDataIn, // use this to input matrix dimensions 
  input logic [2:0] dim_WE,


  output [31: 0] ShiftDataIn [0 : 3], // wires to connect PEs and 
  output reg process_DONE

);










// Variables
// logic ROW_reg_DONE; // this will say if the rows already stored in the registers

// defininf wires for the main memory
logic [MainMemoryAddressWidth-1:0] mainAddrOut;    // Address for the main memory output
logic [MainMemoryAddressWidth-1:0] mainAddrIn;    // Address for the main memory Input
logic [MainMemoryAddressWidth-1:0] interMainAddrOut; // intermediate state to memory out address
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
logic [noOfPEs - 1: 0]regRST;

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
// logic [7:0] dim_l_dataOut;
// logic [7:0] dim_m_dataOut;
// logic [7:0] dim_n_dataOut;
logic [2:0] dim_CS;
logic [2:0] dim_OE;
logic [2:0] dim_RST;

// wires for the counter
logic counter_sel;

// logic [4:0]rowCountDataIn;
// logic [4:0]rowCountDataOut;
logic row_counter_RST;
logic row_counter_CS;
// logic row_counter_WE;
logic row_counter_OE;
logic row_counter_external;

logic [4:0]colCountDataIn;
logic [4:0]colCountDataOut;
logic col_counter_RST;
logic col_counter_CS;
logic col_counter_WE;
logic col_counter_OE;
logic col_counter_external;

// defining wires for Processing elements
logic [noOfPEs - 1 : 0]PEenable; // enable singals for the PEs
logic [noOfPEs - 1 : 0]PEValid; // the valid signals for the PES
logic [MainMemoryDataWidth - 1: 0] PEBBus;



// Create instances of the "memory" module
memory #(5, 512) mainMem (.CLK(masterCLK), .InAddress(mainAddrIn), .DataIn(mainDataIn), .OutAddress(mainAddrOut), .DataOut(mainDataOut), .CS(mainCS), .WE(mainWE), .OE(mainOE)); // The memory for store matrix dimensions

// create instances of the "register" module
register #(MainMemoryDataWidth) register1 (.RST(regRST[0]), .CLK(masterCLK), .DataIn(reg1DataIn), .DataOut(reg1DataOut), .CS(regCS[0]), .WE(regWE[0]), .OE(regOE[0]));
register #(MainMemoryDataWidth) register2 (.RST(regRST[1]), .CLK(masterCLK), .DataIn(reg2DataIn), .DataOut(reg2DataOut), .CS(regCS[1]), .WE(regWE[1]), .OE(regOE[1]));
register #(MainMemoryDataWidth) register3 (.RST(regRST[2]), .CLK(masterCLK), .DataIn(reg3DataIn), .DataOut(reg3DataOut), .CS(regCS[2]), .WE(regWE[2]), .OE(regOE[2]));
register #(MainMemoryDataWidth) register4 (.RST(regRST[3]), .CLK(masterCLK), .DataIn(reg4DataIn), .DataOut(reg4DataOut), .CS(regCS[3]), .WE(regWE[3]), .OE(regOE[3]));

// memory for hold matrix dimensions
register #(8) l_reg (.RST(dim_RST[0]), .CLK(masterCLK), .DataIn(dimDataIn), .DataOut(dim_l_dataOut), .CS(dim_CS[0]), .WE(dim_WE[0]), .OE(dim_OE[0]));
register #(8) m_reg (.RST(dim_RST[1]), .CLK(masterCLK), .DataIn(dimDataIn), .DataOut(dim_m_dataOut), .CS(dim_CS[1]), .WE(dim_WE[1]), .OE(dim_OE[1]));
register #(8) n_reg (.RST(dim_RST[2]), .CLK(masterCLK), .DataIn(dimDataIn), .DataOut(dim_n_dataOut), .CS(dim_CS[2]), .WE(dim_WE[2]), .OE(dim_OE[2]));

// counters
register #(5) row_counter(.RST(row_counter_RST), .CLK(masterCLK), .DataIn(rowCountDataIn), .DataOut(rowCountDataOut), .CS(row_counter_CS), .WE(row_counter_WE), .OE(row_counter_OE));
register #(5) col_counter(.RST(col_counter_RST), .CLK(masterCLK), .DataIn(colCountDataIn), .DataOut(colCountDataOut), .CS(col_counter_CS), .WE(col_counter_WE), .OE(col_counter_OE));

// create instances of PES
PE #(16, 32, 32) PE1 (.clk(masterCLK), .enable(PEenable[0]), .valid(PEValid[0]), .k(reg1DataOut), .x(PEBBus), .y(ShiftDataIn[0]));
PE #(16, 32, 32) PE2 (.clk(masterCLK), .enable(PEenable[1]), .valid(PEValid[1]), .k(reg2DataOut), .x(PEBBus), .y(ShiftDataIn[1]));
PE #(16, 32, 32) PE3 (.clk(masterCLK), .enable(PEenable[2]), .valid(PEValid[2]), .k(reg3DataOut), .x(PEBBus), .y(ShiftDataIn[2]));
PE #(16, 32, 32) PE4 (.clk(masterCLK), .enable(PEenable[3]), .valid(PEValid[3]), .k(reg4DataOut), .x(PEBBus), .y(ShiftDataIn[3]));


// connecting wires
assign PEBBus = mainDataOut;

// connecting dataout from main memory to data in of the registers
assign reg1DataIn = mainDataOut;
assign reg2DataIn = mainDataOut;
assign reg3DataIn = mainDataOut;
assign reg4DataIn = mainDataOut;

// need a multiplexer to select between shift data out or mainwriter to write to main memory
assign mainDataIn = (memoryWriteSelect) ? mainMemoryWriteEXT : 512'b0;
assign mainAddrOut = (memoryReadSelect) ? interMainAddrOut : mainMemAddrOutExternal;

// need a multiplexer to externally set row, or row = row + 1
assign rowCountDataIn = (row_counter_external) ? 5'b00000 : rowCountDataOut + 1;
assign colCountDataIn = (col_counter_external) ? 5'b00000 : colCountDataOut + 1;

// need a multiplexer to connect data read address to column/row counters
assign interMainAddrOut = (counter_sel) ? {{1'b0}, rowCountDataOut[3:0]} : {{1'b1}, colCountDataOut[3:0]};

// setting up constants
assign dim_CS = 3'b111; // always chip selected
assign dim_OE = 3'b111; // always Output enables

assign row_counter_CS = 1'b1;
assign col_counter_CS = 1'b1;
assign row_counter_OE = 1'b1;
assign col_counter_OE = 1'b1;

assign regCS = 4'b1111;
assign regOE = 4'b1111;

assign mainCS = 1'b1;
assign mainOE = 1'b1;







always @(posedge masterCLK) begin

  if (!RESET) begin // reset is active low
    // initialization
    ROW_reg_DONE <= 0;
    process_DONE <= 0;

    // resetting counters
    row_counter_external <= 1;
    col_counter_external <= 1;

    // first connect row counter as the address for the mem dataout
    counter_sel <= 1;

    // reset all write enable pins
    mainWE <= 0;
    regWE <= 4'b0;
    dimWE <= 3'b0;
    row_counter_WE <= 0;
    col_counter_WE <= 0;

    // resetting processing elements
    PEenable <= 4'b0;

    // resetting registers
    regRST <= 4'b0;
    dim_RST <= 3'b0;
    row_counter_RST <= 0;
    col_counter_RST <= 0;
  end else begin
    // STOP resetting registers
    regRST <= 4'b1111;
    dim_RST <= 3'b111;
    row_counter_RST <= 1;
    col_counter_RST <= 1;


    if (!process_DONE) begin

      // disablinig row counter if last two bits are 1 and enabling the column counter
      if (rowCountDataOut [1:0] == 2'b11) begin
        ROW_reg_DONE <= 1;
      end else begin
        ROW_reg_DONE <= 0;
      end

      // do opposite, when finished up counting the number of columns
      if (dim_n_dataOut - colCountDataOut <= 0) begin
        if (rowCountDataOut < dim_l_dataOut - 1) begin
          process_DONE <= 1; // set termination
        end else begin
          ROW_reg_DONE <= 0;
        end
      end else begin
        row_counter_WE <= 0; // disabling the writing to row counter
        row_counter_external <= 0; // this will send row = row + 1 to prevent from resetting
        col_counter_external <= 0; // send col = col+1 to counter so it will start counting
        counter_sel <= 0; // select column counter as the memory output address
      end

      // setup COLUMN / ROW counters to fetch data from the memory
      if (ROW_reg_DONE) begin
        row_counter_WE <= 0; // disabling the writing to row counter
        row_counter_external <= 0; // this will send row = row + 1 to prevent from resetting
        col_counter_external <= 0; // send col = col+1 to counter so it will start counting
        counter_sel <= 0; // select column counter as the memory output address

      end else begin
        row_counter_WE <= 1; // row counter always should count 4 times 
        row_counter_external <= 0; // this will send row = row + 1 so it will count up
        /////////////////// Important block of code!!!!!!!!! ////////////////
        col_counter_WE <= 1; // NOT disable counting for columns
        col_counter_external <= 1; // send 0 to counter so it will reset to 0
        counter_sel <= 1; // select row counter output as the memory output address
     
      end

    end else begin// end of the process done if statement
      ROW_reg_DONE <= 0;
      row_counter_external <= 1;
      col_counter_external <= 1;
      counter_sel <= 1;
    end
  end // end of else of RESET                        
end // end of always posedge

// this happens increments of starting of column change
always @(ROW_reg_DONE or colCountDataOut) begin // incase of end of ROW sending or increase of column
  if (ROW_reg_DONE) begin
    col_counter_WE <= 0; // disabling the column counter to let PE start working
    PEenable <= 4'b1111; // enabling the Processing elements
  end else begin
    col_counter_WE <= 0; // disabling the column counter to let PE start working
    PEenable <= 4'b0; // disabling the Processing elements
  end
end

endmodule
