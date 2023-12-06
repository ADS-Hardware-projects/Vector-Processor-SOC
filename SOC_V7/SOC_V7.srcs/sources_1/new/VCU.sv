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
    logic [wordSize - insSpace - 1 : 0] OFFSET; // this register will contain the offset of the pointer for reader
    logic [wordSize - insSpace - 1 : 0] WROFFSET; // this register will contain the offset of the pointer for writer
    logic [words-1 : 0][wordSize-1 : 0] row; // this will save the row from matrix B
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
    logic transpose;

    regFile #(.wordSize(wordSize), .words(words), .NoOfElem(NoOfElem)) rf(
        .dataIn(RFdataIn),
        .addr(RFaddr),
        .RESET(RFRESET),
        .transpose(transpose),
        .WE(RFWE),
        .clk(clk),
        .dataOut(RFdataOut)
    );


    ///////////////////////////////// PE GENERATION AND CONNECTION //////////////////////////////////
    logic [NoOfElem - 1 : 0]v_valid;
    logic PEValid;
    logic PEEnable;
    logic [NoOfElem-1 : 0][wordSize-1 : 0]PEOutput;
    

    genvar i;
    generate
    for (i = 0; i < NoOfElem; i = i + 1) begin : PEs
        PE #(matSize, wordSize, wordSize) ProcElem_inst (
        .clk(clk),
        .enable(PEEnable),
        .k(RFdataOut[i]),
        .x(row),
        .y_out(PEOutput[NoOfElem - i - 1]),
        .v_valid(v_valid[i])
        );
    end
    endgenerate

    //////////////////////////////// PE ADDER CONNECTION ////////////////////////////////////////////

    logic PEaddRESET;
    logic PEaddCtrl;
    logic [matSize - 1 : 0][wordSize -1 : 0] PEaddIn1; // one of the inputs
    logic [matSize - 1 : 0][wordSize -1 : 0] PEaddIn2; // one of the inputs

    logic [matSize - 1 : 0][wordSize -1 : 0] PEaddOut; // the output
    logic PEaddValid;

    PEadd #(.matSize(matSize), .wordSize(wordSize)) PEadder(
        .clk(clk),
        .RESET(PEaddRESET),
        .ctrl(PEaddCtrl),
        .a(PEaddIn1),
        .b(PEaddIn2),

        .c(PEaddOut),
        .valid(PEaddValid)
    );




    /////////////////////////////////// MEMMORY WRITER CONNECTION /////////////////////////////////////
    // Conneting the memmory writer
    logic MEMWRRESET;
    logic [memDepth-1 : 0] MRAddrOut;
    logic MRwriteEN;
    logic WRdone;
    logic [memDepth-1 : 0] WRaddr; // write address from the logic part
    logic [NoOfElem-1 : 0][wordSize-1 : 0] WRdata; // data input to the writer
    logic WriterEnable;
    logic [$clog2(NoOfElem)-1 : 0] WRaddrCounter;

    memWriter #(NoOfElem, wordSize, memDepth) memoryWriteBuff (
        .clk(clk),
        .RESET(MEMWRRESET),
        .dataIn(WRdata),
        .writeAddr(WRaddr),
        .enable(WriterEnable),

        .dataOut(BRAMDataOut),
        .writeAddrBRAM(MRAddrOut),
        .writeEN(MRwriteEN),
        .WRdone(WRdone)
    );




    /////////////////// CORRECT ASSIGNS ///////////////////
    assign WriterBusy = ~WRdone; // if the writer is done then writer is not busy
    assign FUdataIn = BRAMdataIn;
    assign BRAMaddrByte = {selectedAddress, 2'b00}; // generating the byte addressible memmory address
    assign FUreadAddr = FUins ? PC : {addrCounter, 4'h00} + OFFSET; // if instruction then readadd = PC else data addr counter
    assign WRaddr = {WRaddrCounter, 4'h00} + WROFFSET;
    assign RFaddr = addrCounter;
    assign RFdataIn = FUdataOut;
    assign PEValid = (&v_valid) ? 1 : 0;
    assign selectedAddress = MRwriteEN ? MRAddrOut : FUaddrIn; 
    assign BRAMWREN = MRwriteEN ? 4'b1111 : 4'b0000;
    assign BRAMENMEM = FUMEMenable || MRwriteEN;


    assign PEaddIn1 = row;
    /////////////////// END OF CORRECT ASSIGNS //////////////////////



    //////////////////////////////////// COMBINATIONAL LOGIC PART ///////////////////////////////////////
    always_ff @(posedge clk or negedge RESET) begin 
        if (!RESET) begin 
            // resetting registers
            PC <= 0; // the program counter
            addrCounter <= 0; // data pointer
            INR <= 0; // instruction register
            done <= 0;
            row <= 0;
            insInitFF <= 0;
            OFFSET <= 0;

            // the fetch unit
            FUins <= 1; // start with a instruction
            FURESET <= 0;

            // the register file
            RFWE <= 0;
            RFRESET <= 0;
            transpose <= 0;

            // Processing elements
            PEEnable <= 0;

            // Memmory writer
            MEMWRRESET <= 0; // reset the memmory writer
            WriterEnable <= 0; // disable the mrmmorty writer
            WRaddrCounter <= {NoOfElem{1'b1}};
            WRdata <= 0;
            WROFFSET <= 0;

            // PE adder
            PEaddRESET <= 0;;
            PEaddCtrl <= 0;
            // PEaddIn1 <= 0;
            PEaddIn2 <= 0;

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
                                FURESET <= 0; // reset the fetch unit. so next instruction may loaded
                            end

                            8'h01: begin // Terminate Instruction
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
                                    if(RFWE) begin
                                        FURESET <= 0;
                                        addrCounter <= addrCounter + 1; // increase the address counter
                                    end
                                end

                                if(&addrCounter && RFWE) begin 
                                    addrCounter <= 0;
                                    OFFSET <= 0;
                                    insInitFF <= 0;
                                    FUins <= 1;
                                    RFWE <= 0;
                                    FURESET <= 0;
                                end
                            end

                            8'h08: begin // load row instruction
                                if(~insInitFF) begin
                                    // initializing the instruction
                                    addrCounter <= 0; // resetting the address counter
                                    OFFSET <= INR[23 : 0]; // 24 LSBs of the Instruction setting the offset
                                    FURESET <= 0; // reset the fetch unit so it can fetch data
                                    insInitFF <= 1;
                                end else begin
                                    row <= FUdataOut; // save the output from the fetch unit to the row
                                    addrCounter <= 0;
                                    OFFSET <= 0;
                                    insInitFF <= 0;
                                    FUins <= 1;
                                    FURESET <= 0;
                                end
                            end

                            8'h0c: begin // Matrix multiplication instruction
                                if(~insInitFF) begin
                                    PEEnable <= 0;
                                    addrCounter <= 0;
                                    WRaddrCounter <= {NoOfElem{1'b1}};
                                    OFFSET <= INR[23 : 12];
                                    WROFFSET <= INR[11 : 0]; // setting the offeset
                                    FURESET <= 0;
                                    insInitFF <= 1;
                                    transpose <= 1; // we want the transposed output from the register files
                                end else begin
                                    row <= FUdataOut; // get data from the fetch unit
                                    
                                    if(PEValid) begin 
                                        // write the result to the memmory
                                        WRdata <= PEOutput;
                                        WRaddrCounter <= WRaddrCounter + 1;
                                        MEMWRRESET <= 0; // reset the writer
                                        WriterEnable <= 1; // enable the writer (this wont be 0 until system reset)

                                        addrCounter <= addrCounter + 1; // increment the address counter
                                        FURESET <= 0;
                                        PEEnable <= 0; // let processing elements do the work
                                    end else begin
                                        PEEnable <= 1;
                                    end
                                end

                                if (&addrCounter && PEValid) begin 
                                    PEEnable <= 0;
                                    addrCounter <= 0;
                                    OFFSET <= 0;
                                    FURESET <= 0;
                                    insInitFF <= 0;
                                    transpose <= 0;
                                    FUins <= 1;
                                end
                            end

                            8'h0e: begin // Matrix SUB1 (A-B) instruction
                                if(~insInitFF) begin
                                    PEaddCtrl <= 0;
                                    PEaddRESET <= 0; // resetting the adder
                                    addrCounter <= 0;
                                    WRaddrCounter <= {NoOfElem{1'b1}};
                                    OFFSET <= INR[23 : 12];
                                    WROFFSET <= INR[11 : 0]; // setting the offeset
                                    FURESET <= 0;
                                    insInitFF <= 1;
                                    transpose <= 0; // we want  output from the register files
                                end else begin
                                    row <= FUdataOut; // get data from the fetch unit
                                    PEaddIn2 <= ~RFdataOut[addrCounter] + 1'b1; // provide the 2s compliment
                                    
                                    if(PEaddValid) begin 
                                        // write the result to the memmory
                                        // give input to processing elements and get the output ///////////
                                        // PEaddIn1 <= row;
                                        // PEaddIn2 <= RFdataOut[addrCounter];
                                        WRdata <= PEaddOut;


                                        WRaddrCounter <= WRaddrCounter + 1;
                                        MEMWRRESET <= 0; // reset the writer
                                        WriterEnable <= 1; // enable the writer (this wont be 0 until system reset)

                                        addrCounter <= addrCounter + 1; // increment the address counter
                                        FURESET <= 0;
                                        PEaddRESET <= 0; // let processing elements do the work
                                    end else begin
                                        PEaddRESET <= 1;
                                    end
                                end

                                if (&addrCounter && PEaddValid) begin 
                                    PEaddRESET <= 0;
                                    addrCounter <= 0;
                                    OFFSET <= 0;
                                    FURESET <= 0;
                                    insInitFF <= 0;
                                    transpose <= 0;
                                    FUins <= 1;
                                end
                            end

                            8'h0f: begin // Matrix Adder instruction
                                if(~insInitFF) begin
                                    PEaddCtrl <= 0;
                                    PEaddRESET <= 0; // resetting the adder
                                    addrCounter <= 0;
                                    WRaddrCounter <= {NoOfElem{1'b1}};
                                    OFFSET <= INR[23 : 12];
                                    WROFFSET <= INR[11 : 0]; // setting the offeset
                                    FURESET <= 0;
                                    insInitFF <= 1;
                                    transpose <= 0; // we want  output from the register files
                                end else begin
                                    row <= FUdataOut; // get data from the fetch unit
                                    PEaddIn2 <= RFdataOut[addrCounter];
                                    
                                    if(PEaddValid) begin 
                                        // write the result to the memmory
                                        // give input to processing elements and get the output ///////////
                                        // PEaddIn1 <= row;
                                        // PEaddIn2 <= RFdataOut[addrCounter];
                                        WRdata <= PEaddOut;


                                        WRaddrCounter <= WRaddrCounter + 1;
                                        MEMWRRESET <= 0; // reset the writer
                                        WriterEnable <= 1; // enable the writer (this wont be 0 until system reset)

                                        addrCounter <= addrCounter + 1; // increment the address counter
                                        FURESET <= 0;
                                        PEaddRESET <= 0; // let processing elements do the work
                                    end else begin
                                        PEaddRESET <= 1;
                                    end
                                end

                                if (&addrCounter && PEaddValid) begin 
                                    PEaddRESET <= 0;
                                    addrCounter <= 0;
                                    OFFSET <= 0;
                                    FURESET <= 0;
                                    insInitFF <= 0;
                                    transpose <= 0;
                                    FUins <= 1;
                                end
                            end

                            8'h10: begin // JUMP Instruction
                                PC <= {22'b0, INR[9:0]}; // update the program counter to given value
                                FUins <= 1; // indicate the instuction has finished
                                FURESET <= 0; // reset the fetch unit. so next instruction may loaded
                            end

                        endcase
                    end

                end else begin 
                    RFWE <= 0; // do not write to the register file
                    FURESET <= 1; // let the fetch unit fetch
                    MEMWRRESET <= 1; // let the writer do the work
                end





            end
        end

    end

endmodule
