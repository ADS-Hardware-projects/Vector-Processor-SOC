module FetchUnit #(
    parameter matSize = 16,
    parameter memDepth = 12,


    localparam padding_size = memDepth - $clog2(matSize*2-1) - $clog2(matSize-1)
)(
    input [31:0] dataIn, // this is the data input from the BLOCK RAM
    input [$clog2(matSize*2 - 1) - 1: 0] readAddr, // address of the read port (FROM logic part)
    input clk, RESET,

    output reg [matSize * 32 - 1: 0] dataOut, // output from the fetch unit
    output [memDepth - 1: 0] addrIn, // address to the BLOCK ram
    output valid // this will be high when the data is valid for read
);

    reg [$clog2(matSize - 1): 0] addrCounter; // this will count the sub address
    reg delay;


    ////////////////////// HARD WIRING PART //////////////////////////
    assign valid = addrCounter[$clog2(matSize - 1)]; // valid = MSB of the address counter
    assign addrIn = {{padding_size{1'b0}} , readAddr, addrCounter[$clog2(matSize - 1) - 1 : 0]}; // this is the address provided for the block ram


    
    always_ff @(posedge clk or negedge RESET) begin
        ////////////////////// RESET Condition of the module //////////////////////////
        if(!RESET) begin
            addrCounter <= '0;
            dataOut <= '0;
            delay <=0 ;
        end // end of if(!RESET) block

        /////////////////////// LOGIC OF FETCH UNIT ////////////////////////////////
        else begin 
            if (!valid) begin
                if (delay) begin
                    dataOut[32*(addrCounter + 1) - 1 -: 32] <= dataIn; // assign data came from BLOCK ram to output register
                    addrCounter <= addrCounter + 1; // incrementing the counter
                end
                delay <= ~delay;
            end // end of if not valid
        end // end of the logic of fetch unit
    end // end of the reset condition


endmodule
