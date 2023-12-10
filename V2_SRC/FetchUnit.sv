`timescale 1ns / 1ps
module FetchUnit #(
    parameter NoOfElem = 16,
    parameter memDepth = 12,
    parameter wordSize = 32


    // localparam padding_size = memDepth - $clog2(NoOfElem*2) - $clog2(NoOfElem)
)(
    input [wordSize - 1:0] dataIn, // this is the data input from the BLOCK RAM
    input [memDepth - 1: 0] readAddr, // address of the read port (FROM logic part)
    input clk, RESET, WriterBusy, ins,

    output logic [NoOfElem-1 : 0][wordSize-1 : 0] dataOut, // output from the fetch unit
    output logic [memDepth - 1: 0] addrIn, // address to the BLOCK ram
    output logic valid, // this will be high when the data is valid for read
    output logic MEMenable
);

    logic [$clog2(NoOfElem): 0] addrCounter; // this will count the sub address
    logic delay;


    ////////////////////// HARD WIRING PART //////////////////////////
    // assign valid = addrCounter[$clog2(NoOfElem)]; // valid = MSB of the address counter
    assign addrIn = readAddr + addrCounter[$clog2(NoOfElem) - 1 : 0]; // this is the address provided for the block ram


    
    always_ff @(posedge clk or negedge RESET) begin
        ////////////////////// RESET Condition of the module //////////////////////////
        if(!RESET || WriterBusy) begin
            addrCounter <= 0;
            dataOut <= 0;
            delay <=0 ;
            MEMenable <= 1; // enable the memmory so it can read
            // addrIn <= 0;
            valid <= 0;
            // addrIn <= {{padding_size{1'b0}} , readAddr, addrCounter[$clog2(NoOfElem) - 1 : 0]};
        end // end of if(!RESET) block

        /////////////////////// LOGIC OF FETCH UNIT ////////////////////////////////
        else begin 
            if (!valid) begin // halt condition
                if(!ins) begin // if not an instruction (a data)
                    if (delay) begin
                        dataOut[addrCounter-1] <= dataIn; // assign data came from BLOCK ram to output register
                    end
                    delay <= 1;
                    addrCounter <= addrCounter + 1; // incrementing the counter

                    if (addrCounter[$clog2(NoOfElem)]) begin 
                        valid <= 1;
                        MEMenable <= 0;
                    end
                end else begin
                    dataOut[0] <= dataIn; // the first 32 bit of the register is the insturction
                    valid <= 1; // high the valid signal
                    MEMenable <= 0; // resetting the memmory enable signal
                end
            end else begin
                MEMenable <= 0; // disable the memory
            end // end of if not valid 
        end // end of the logic of fetch unit
    end // end of the reset condition


endmodule
