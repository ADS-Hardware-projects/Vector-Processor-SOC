module shifter #(parameter outWordSize = 512, parameter noOfPEs = 4, parameter singleWordLength = 32)(
    input OE, // output enable signal
    input [noOfPEs - 1: 0] shift, // the shift value
    input [singleWordLength - 1: 0] dataIn [0: noOfPEs - 1], // inputs from the processing elements
    output reg [outWordSize - 1: 0] dataOut // final combined 512 bit output data bus
);

assign dataOut = 'z; // setting all data outs for high impedance

always @(dataIn or OE) begin // in case of change of data in or Output enable
    if (OE) begin // if output enable is set
        case(shift)
            
            2'b00: dataOut[1*noOfPEs*singleWordLength - 1 : 0*noOfPEs*singleWordLength] = {dataIn[3], dataIn[2], dataIn[1], dataIn[0]};

            2'b01: dataOut[2*noOfPEs*singleWordLength - 1 : 1*noOfPEs*singleWordLength] = {dataIn[3], dataIn[2], dataIn[1], dataIn[0]};

            2'b10: dataOut[3*noOfPEs*singleWordLength - 1 : 2*noOfPEs*singleWordLength] = {dataIn[3], dataIn[2], dataIn[1], dataIn[0]};

            2'b11: dataOut[4*noOfPEs*singleWordLength - 1 : 3*noOfPEs*singleWordLength] = {dataIn[3], dataIn[2], dataIn[1], dataIn[0]};

            default: dataOut = 'z;

        endcase // end of case
    end // end of if output enable
end // end of always @

endmodule
