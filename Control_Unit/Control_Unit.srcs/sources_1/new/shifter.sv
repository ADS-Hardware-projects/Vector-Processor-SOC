module shifter #(parameter outWordSize = 512, parameter noOfPEs = 4, parameter singleWordLength = 32)(
    input OE, // output enable signal
    input WE, // Write Enable
    input CLK, // the clock to write
    input [1: 0] shift, // the shift value   (0 to 3)
    input [singleWordLength - 1: 0] dataIn [0: noOfPEs - 1], // inputs from the processing elements
    output reg [outWordSize - 1: 0] dataOut // final combined 512 bit output data bus
);

logic [127:0] DataInComb = {dataIn[3],dataIn[2],dataIn[1],dataIn[0]};
logic [3:0] WriteEN;

register #(128) shiftREG4(.DataIn(DataInComb), .DataOut(dataOut[511:384]), .CS(1'b1), .WE(WriteEN[3]), .OE(OE));
register #(128) shiftREG3(.DataIn(DataInComb), .DataOut(dataOut[383:256]), .CS(1'b1), .WE(WriteEN[2]), .OE(OE));
register #(128) shiftREG2(.DataIn(DataInComb), .DataOut(dataOut[255:128]), .CS(1'b1), .WE(WriteEN[1]), .OE(OE));
register #(128) shiftREG1(.DataIn(DataInComb), .DataOut(dataOut[127:0])  , .CS(1'b1), .WE(WriteEN[0]), .OE(OE));

always @(posedge CLK) begin
    if(WE) begin // if the write enable signal is on then we need to set correct register write enable high
        case (shift)
            2'b00: WriteEN = 4'b1000;
            2'b01: WriteEN = 4'b0100;
            2'b10: WriteEN = 4'b0010;
            2'b11: WriteEN = 4'b0001;
            default: WriteEN = 4'b0000;
        endcase
    end else begin
        WriteEN = 4'b0000;
    end
end // end of always @

endmodule
