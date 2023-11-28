//// FOR MY INFORMATION


//// After start -> 1,
//// 7 clocks to get first result
//// after that 7 clock for next
//// INFO:  no of clocks for calculation => #MatrixColumns X 7
////                                       e.g.: 8 column matrix ==> 56 clocks 








module SystemV3(

    input CLK, WE, RESET, start,

    /// These are for inputting data to the RAM
    input [4:0] InAddress, // address bus for input
    // input [511:0] DataIn, // data bus for output

    // output [3:0] ResultAddress, // address of the (this will tell what the output is For saliya) (4 bit 0 - 16)
    // output [511:0] FinalDataOut, // the column (calculated combined output)

    output AnsValid
);

    ////////////////////////////////////////////////////////////////////

    logic [511:0] DataIn; // data bus for output

    logic [3:0] ResultAddress; // address of the (this will tell what the output is For saliya) (4 bit 0 - 16)
    logic [511:0] FinalDataOut; // the column (calculated combined output)

    /////////////////////////////////////////////////////////////////////







    logic [4:0] OutAddress; // address bus for output the column
    logic [511:0] DataOut; // data bus for output

    logic MEMRST;

    logic CS, OE; // contol logic

    // dedicated outputs
    logic [511:0] Out0;
    logic [511:0] Out1;
    logic [511:0] Out2;
    logic [511:0] Out3;

    logic [511:0] Out4;
    logic [511:0] Out5;
    logic [511:0] Out6;
    logic [511:0] Out7;

    logic [511:0] Out8;
    logic [511:0] Out9;
    logic [511:0] Out10;
    logic [511:0] Out11;

    logic [511:0] Out12;
    logic [511:0] Out13;
    logic [511:0] Out14;
    logic [511:0] Out15;

    // For processing elements
    logic enablePE;
    logic [15:0] v_valid;

    // For registers
    logic [3:0] colCountDataIn;
    logic [3:0] colCountDataOut;
    logic col_counter_RST;
    logic col_counter_CS;
    logic col_counter_WE;
    logic col_counter_OE;

    logic halt = 0;

    /////////// CONBINATIONAL LOGIC /////////////
    assign CS = 1;
    assign OE = 1;
    assign col_counter_CS = 1;
    assign col_counter_OE = 1;

    assign ResultAddress = colCountDataOut; // Column counter data out it
    assign OutAddress = {1'b1, colCountDataOut}; // The column is in the second large set (16-31) so append 1 in front and that is the output

    assign AnsValid = (
        v_valid[0] & v_valid[1] & v_valid[2] & v_valid[3] & v_valid[4] & v_valid[5] & v_valid[6] & v_valid[7] & 
        v_valid[8] & v_valid[9] & v_valid[10] & v_valid[11] & v_valid[12] & v_valid[13] & v_valid[14] & v_valid[15]  
    );

    // Create an Instance of the Data Memory
    DataMemory dataMem(.*);

    // Create Instances of PEs
    PE #(16, 32, 32) PE0  (.clk(CLK), .v_valid(v_valid[0 ]), .enable(enablePE), .k(Out0 ), .x(DataOut), .y_out(FinalDataOut[511:480]));
    PE #(16, 32, 32) PE1  (.clk(CLK), .v_valid(v_valid[1 ]), .enable(enablePE), .k(Out1 ), .x(DataOut), .y_out(FinalDataOut[479:448]));
    PE #(16, 32, 32) PE2  (.clk(CLK), .v_valid(v_valid[2 ]), .enable(enablePE), .k(Out2 ), .x(DataOut), .y_out(FinalDataOut[447:416]));
    PE #(16, 32, 32) PE3  (.clk(CLK), .v_valid(v_valid[3 ]), .enable(enablePE), .k(Out3 ), .x(DataOut), .y_out(FinalDataOut[415:384]));
    PE #(16, 32, 32) PE4  (.clk(CLK), .v_valid(v_valid[4 ]), .enable(enablePE), .k(Out4 ), .x(DataOut), .y_out(FinalDataOut[383:352]));
    PE #(16, 32, 32) PE5  (.clk(CLK), .v_valid(v_valid[5 ]), .enable(enablePE), .k(Out5 ), .x(DataOut), .y_out(FinalDataOut[351:320]));
    PE #(16, 32, 32) PE6  (.clk(CLK), .v_valid(v_valid[6 ]), .enable(enablePE), .k(Out6 ), .x(DataOut), .y_out(FinalDataOut[319:288]));
    PE #(16, 32, 32) PE7  (.clk(CLK), .v_valid(v_valid[7 ]), .enable(enablePE), .k(Out7 ), .x(DataOut), .y_out(FinalDataOut[287:256]));
    PE #(16, 32, 32) PE8  (.clk(CLK), .v_valid(v_valid[8 ]), .enable(enablePE), .k(Out8 ), .x(DataOut), .y_out(FinalDataOut[255:224]));
    PE #(16, 32, 32) PE9  (.clk(CLK), .v_valid(v_valid[9 ]), .enable(enablePE), .k(Out9 ), .x(DataOut), .y_out(FinalDataOut[223:192]));
    PE #(16, 32, 32) PE10 (.clk(CLK), .v_valid(v_valid[10]), .enable(enablePE), .k(Out10), .x(DataOut), .y_out(FinalDataOut[191:160]));
    PE #(16, 32, 32) PE11 (.clk(CLK), .v_valid(v_valid[11]), .enable(enablePE), .k(Out11), .x(DataOut), .y_out(FinalDataOut[159:128]));
    PE #(16, 32, 32) PE12 (.clk(CLK), .v_valid(v_valid[12]), .enable(enablePE), .k(Out12), .x(DataOut), .y_out(FinalDataOut[127:96]));
    PE #(16, 32, 32) PE13 (.clk(CLK), .v_valid(v_valid[13]), .enable(enablePE), .k(Out13), .x(DataOut), .y_out(FinalDataOut[95 :64]));
    PE #(16, 32, 32) PE14 (.clk(CLK), .v_valid(v_valid[14]), .enable(enablePE), .k(Out14), .x(DataOut), .y_out(FinalDataOut[63 :32]));
    PE #(16, 32, 32) PE15 (.clk(CLK), .v_valid(v_valid[15]), .enable(enablePE), .k(Out15), .x(DataOut), .y_out(FinalDataOut[31 :0]));

    // Create instance of a register to store the number of columns
    register #(4) colCounter (.RST(col_counter_RST), .CLK(CLK), .DataIn(colCountDataIn), .DataOut(colCountDataOut), .CS(col_counter_CS), .WE(col_counter_WE), .OE(col_counter_OE));

    always_ff @(posedge CLK or negedge RESET) begin
        if (!RESET) begin
            // RESET CONDITION
            enablePE <= 0; // disable Processing elements
            col_counter_RST <= 0; // resetting column counter 
            col_counter_WE <= 0; // dissabling write enable
            MEMRST <= 0;
            halt <= 0;

        end else begin
            col_counter_RST <= 1; // stop resetting the column counter
            MEMRST <= 1;

            if (start & !halt) begin
                if(!AnsValid) begin
                    enablePE <= 1;
                    col_counter_WE <= 0;
                    colCountDataIn <= 0;

                end else begin
                    // increment the column counter
                    colCountDataIn <= colCountDataOut + 1;
                    col_counter_WE <= 1;
                    enablePE <= 0;
                end

                if (colCountDataOut == 4'hf) begin
                    halt <= 1;
                end else begin
                    halt <= 0;
                end
            end 
        end
    end


endmodule
