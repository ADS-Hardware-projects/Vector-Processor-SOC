module VCU#(
    parameter matSize = 16,
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter words = 16,
    parameter memDepthC = 32,


    localparam memDepth = memDepthC - 2,
    localparam insSpace = 8 // no of bits allocated per opcode. in this case 8 bits
)
(
    input clk,
    input RESET,

    input memWRTDone,

    input [wordSize - 1:0] BRAMdataIn, // this is the data input from the BLOCK RAM
    output logic [wordSize-1: 0] BRAMDataOut, // output data width is the block ram data width
    output logic [memDepth-1+2:0]BRAMaddrByte,

    output logic [3:0]BRAMWREN,
    output logic BRAMENMEM,
    output logic done

);

    //////////////////////////////// DEFINE ESSENTIAL REGISTERS ////////////////////////////////
    logic [memDepth - 1: 0] PC; // the program counter
    logic [$clog2(matSize) - 1 : 0] addrCounter; // data pointer register
    logic [wordSize - 1: 0] INR; // instruction register
    logic [wordSize - insSpace - 1 : 0] OFFSET; // this register will contain the offset of the pointer
    logic [words-1 : 0][wordSize-1 : 0] column; // this will save the column from matrix B
    logic insInitFF; // this is a single bit flipflo. indicates if the instruction initalization is done



    //////////////////////////////// OTHER LOGIC WIRES //////////////////////////////////
    logic [memDepth-1:0]selectedAddress;




    //////////////////////////////// FETCH UNIT CONNECTION ////////////////////////////
    logic [wordSize - 1:0] FUdataIn; // this is the data input from the BLOCK RAM
    logic [memDepth-1 : 0] FUreadAddr; // address of the read port (FROM logic part)
    logic WriterBusy;
    logic FURESET;
    logic FUins; //// IMPORTANT THIS IS A 1 bit FF. this will indicate if the instruction has finished

    logic [matSize-1 : 0][wordSize-1 : 0] FUdataOut; // output from the fetch unit
    logic [memDepth - 1: 0] FUaddrIn; // address to the BLOCK ram
    logic FUvalid; // this will be high when the data is valid for read
    logic FUMEMenable;

    FetchUnit #(.matSize(matSize), .memDepth(memDepth), .wordSize(wordSize)) fu(
        .dataIn(FUdataIn),
        .readAddr(FUreadAddr),
        .WriterBusy(WriterBusy),
        .RESET(FURESET),
        .clk(clk),
        .ins(FUins),

        .dataOut(FUdataOut),
        .addrIn(FUaddrIn),
        .valid(FUvalid),
        .MEMenable(FUMEMenable)
    );


    ///////////////////////////////// REGISTER FILE CONNECTION ///////////////////////////////////

    logic [words-1 : 0][wordSize-1 : 0] RFdataIn;
    logic [$clog2(matSize) - 1 : 0] RFaddr;
    logic RFWE;
    logic [words-1 : 0][wordSize-1 : 0] RFdataOut [0 : NoOfElem - 1]; // this is the register file
    logic RFRESET;

    regFile #(.wordSize(wordSize), .words(words), .NoOfElem(NoOfElem)) rf(
        .dataIn(RFdataIn),
        .addr(RFaddr),
        .RESET(RFRESET),
        .WE(RFWE),
        .clk(clk),
        .dataOut(RFdataOut)
    );










//////////////////// TEMP ASSIGNS/////////////////
assign WriterBusy = 0;
assign BRAMWREN = 0;

assign BRAMENMEM = FUMEMenable; // to be extended
assign selectedAddress = FUaddrIn; // to be extended


assign BRAMDataOut = 0;
/////////////////// END OF TEMP ASSIGNS //////////////

/////////////////// CORRECT ASSIGNS ///////////////////
assign FUdataIn = BRAMdataIn;
assign BRAMaddrByte = {selectedAddress, 2'b00}; // generating the byte addressible memmory address
assign FUreadAddr = FUins ? PC : {addrCounter, 4'h00} + OFFSET; // if instruction then readadd = PC else data addr counter
assign RFaddr = addrCounter;
assign RFdataIn = FUdataOut;
/////////////////// END OF CORRECT ASSIGNS //////////////////////















//////////////////////////////////// COMBINATIONAL LOGIC PART ///////////////////////////////////////
    always_ff @(posedge clk or negedge RESET) begin 
        if (!RESET) begin 
            // resetting registers
            PC <= 0; // the program counter
            addrCounter <= 0; // data pointer
            INR <= 0; // instruction register
            done <= 0;
            column <= 0;
            insInitFF <= 0;
            OFFSET <= 0;

            // the fetch unit
            FUins <= 1; // start with a instruction
            FURESET <= 0;

            // the register file
            RFWE <= 0;
            RFRESET <= 0;

        end else begin 
            if (memWRTDone) begin /// Do nothing until memory is written

                if(FUvalid) begin 

                    if(FUins) begin 
                        /// incase of a instruction fetch cycle
                        INR <= FUdataOut[0]; // first word of the dataout
                        PC <= PC+1;
                        FUins <= 0; // let the instruction execute

                    end else begin 
                        /// incase of a instruction execution
                        case(INR[wordSize-1 : wordSize - insSpace])
                            
                            8'h00: begin // NOP Instruction
                                FUins <= 1; // indicate the instuction has finished
                            end

                            8'h01: begin // END Instruction
                                done <= 1; // sending the interrupt
                                FUins <= 0; // HALT the processor
                            end

                            8'h04: begin // LOADRF Instruction
                                if(~insInitFF) begin
                                    // initializing the instruction
                                    RFRESET <= 0;
                                    addrCounter <= 0; // resetting the address counter
                                    OFFSET <= INR[wordSize - insSpace - 1 : 0]; // 24 LSBs of the Instruction setting the offset
                                    FURESET <= 0; // reset the fetch unit so it can fetch data
                                    insInitFF <= 1;
                                end else begin
                                    // addrCounter <= addrCounter + 1; // increase the address counter
                                    RFWE <= 1; // write enable the fetch unit
                                    RFRESET <= 1;
                                    // FURESET <= 0; // reset the fetch unit
                                    if(RFWE) begin
                                        FURESET <= 0;
                                        addrCounter <= addrCounter + 1; // increase the address counter
                                    end
                                end

                                if(&addrCounter && RFWE) begin 
                                    addrCounter <= 0;
                                    insInitFF <= 0;

                                    FUins <= 1;
                                    RFWE <= 0;
                                end
                            end

                        endcase
                    end



                end else begin 
                    RFWE <= 0; // do not write to the register file
                    FURESET <= 1; // let the fetch unit fetch
                end





            end
        end

    end

endmodule
