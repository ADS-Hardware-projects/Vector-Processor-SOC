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

    output reg [wordSize-1: 0] dataOut, // output data width is the block ram data width
    output reg [memDepth-1 : 0] writeAddrBRAM, // this is the address the BLOCK RAM sees
    output reg writeEN
);

    reg [wordSize - 1: 0]dataBuffer[0 : NoOfElem - 1];
    reg [$clog2(NoOfElem): 0]subAddrCounter; // this will count the addresses

    
    // assign writeAddrBRAM = { {padding{1'b0}}, 2'b10, writeAddr, subAddrCounter[$clog2(NoOfElem)-1:0] };// creating the BLOCK RAM memmory address

    always_ff @(posedge clk or negedge RESET) begin
        if (!RESET) begin
            subAddrCounter <= 0;
            dataBuffer <= dataIn;
            writeAddrBRAM <= NoOfElem * NoOfElem * 2 + writeAddr*NoOfElem - 1;
        end else begin
            if (~subAddrCounter[$clog2(NoOfElem)]) begin  // this is the halt condition
                writeEN <= 1;
                writeAddrBRAM <= writeAddrBRAM + 1;
                subAddrCounter <= subAddrCounter + 1; 
                dataOut <= dataBuffer [subAddrCounter]; // always assign the output word
            end else begin
                writeEN <= 0;
            end
        end
    end

endmodule
