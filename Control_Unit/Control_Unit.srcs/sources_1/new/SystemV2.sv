module SystemV2 #(
    parameter MainMemoryAddressWidth = 5, // 32 addresses
    parameter MainMemoryDataWidth = 512, // 512 bit width
    parameter noOfPEs = 4 // number of processing elements
)(
 
    ////// JUST TESTING ONES
    input logic [MainMemoryDataWidth - 1: 0] reg1DataIn,
    input logic [MainMemoryDataWidth - 1: 0] reg2DataIn,
    input logic [MainMemoryDataWidth - 1: 0] reg3DataIn,
    input logic [MainMemoryDataWidth - 1: 0] reg4DataIn,

    input logic [MainMemoryDataWidth - 1: 0] xDataBUS,

    output logic [31: 0] PEDataOut1,
    output logic [31: 0] PEDataOut2,
    output logic [31: 0] PEDataOut3,
    output logic [31: 0] PEDataOut4,

    input logic [3:0] regWE, // Write Enable of the PE registers
    input logic regOE, // Output Enable of the PE registers

    input logic PEenable,
    output logic [3:0] PEValid,

    // Essential Inputs of the Wrapper
    input logic RESET,
    input logic clk

    // Essential Outputs of the Wrapper

);


logic [3:0] regRST; // reset pins for the PE registers
logic [3:0] regCS; // Chip Select of the PE registers
// logic [3:0] regWE; // Write Enable of the PE registers
// logic [3:0] regOE; // Output Enable of the PE registers

logic [MainMemoryDataWidth - 1: 0] reg1DataOut;
logic [MainMemoryDataWidth - 1: 0] reg2DataOut;
logic [MainMemoryDataWidth - 1: 0] reg3DataOut;
logic [MainMemoryDataWidth - 1: 0] reg4DataOut;


// create instances of the "register" module
register #(MainMemoryDataWidth) register1 (.RST(regRST[0]), .CLK(clk), .DataIn(reg1DataIn), .DataOut(reg1DataOut), .CS(regCS[0]), .WE(regWE[0]), .OE(regOE));
register #(MainMemoryDataWidth) register2 (.RST(regRST[1]), .CLK(clk), .DataIn(reg2DataIn), .DataOut(reg2DataOut), .CS(regCS[1]), .WE(regWE[1]), .OE(regOE));
register #(MainMemoryDataWidth) register3 (.RST(regRST[2]), .CLK(clk), .DataIn(reg3DataIn), .DataOut(reg3DataOut), .CS(regCS[2]), .WE(regWE[2]), .OE(regOE));
register #(MainMemoryDataWidth) register4 (.RST(regRST[3]), .CLK(clk), .DataIn(reg4DataIn), .DataOut(reg4DataOut), .CS(regCS[3]), .WE(regWE[3]), .OE(regOE));


// create instances of PEs
PE #(16, 32, 32) PE1 (.clk(clk), .enable(PEenable), .valid(PEValid[0]), .k(reg1DataOut), .x(xDataBUS), .y(PEDataOut1));
PE #(16, 32, 32) PE2 (.clk(clk), .enable(PEenable), .valid(PEValid[1]), .k(reg2DataOut), .x(xDataBUS), .y(PEDataOut2));
PE #(16, 32, 32) PE3 (.clk(clk), .enable(PEenable), .valid(PEValid[2]), .k(reg3DataOut), .x(xDataBUS), .y(PEDataOut3));
PE #(16, 32, 32) PE4 (.clk(clk), .enable(PEenable), .valid(PEValid[3]), .k(reg4DataOut), .x(xDataBUS), .y(PEDataOut4));


////////////////////////////////////////// Combinational LOGIC of the SOC //////////////////////////////////////////////////
assign regCS = 4'b1111;


/////////////////////////////////////////// END OF COMBINATIONAL LOGIC /////////////////////////////////////////////////////



always @(posedge clk or negedge RESET) begin
    if (!RESET) begin
        // Asynchronous reset behavior
        //////////////////////////// SYSTEM RESET ///////////////////////////////////////

        // resetting registers
        regRST <= 4'b0000;


        //////////////////////////// END OF SYSTEM RESET ////////////////////////////////

    end else begin
        // Synchronous logic behavior
        regRST <= 4'b1111;





    end
end


endmodule
