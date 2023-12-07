module memWriter#(
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter memDepth = 9,

    localparam padding = memDepth - 2 - $clog2(NoOfElem) * 2
)(
    input clk,
    input RESET,

    input [wordSize - 1: 0] dataIn [0 : NoOfElem - 1], // inputs from the processing elements
    input [$clog2(NoOfElem) - 1: 0] writeAddr, // write address from the logic part. this will be processed and sent to the block ram

    output logic [wordSize-1: 0] dataOut, // output data width is the block ram data width
    output logic [memDepth-1 : 0] writeAddrBRAM, // this is the address the BLOCK RAM sees
    output logic writeEN,
    output logic WRdone
);

    logic [wordSize - 1: 0]dataBuffer[0 : NoOfElem - 1];
    logic [$clog2(NoOfElem): 0]subAddrCounter; // this will count the addresses


    always_ff @(posedge clk or negedge RESET) begin
        if (!RESET) begin
            // resetting the outputs
            dataOut <= 0;
            writeAddrBRAM <= NoOfElem * NoOfElem * 2 + writeAddr*NoOfElem - 1;
            writeEN <= 0;
            WRdone <= 1;

            // resetting other logic
            subAddrCounter <= 0;
            dataBuffer <= dataIn;
            
        end else begin
            if (~subAddrCounter[$clog2(NoOfElem)]) begin  // this is the halt condition
                WRdone <= 0;
                writeEN <= 1;
                writeAddrBRAM <= writeAddrBRAM + 1;
                subAddrCounter <= subAddrCounter + 1; 
                dataOut <= dataBuffer [subAddrCounter]; // always assign the output word
            end else begin
                writeEN <= 0;
                WRdone <= 1;
            end
        end
    end

endmodule
