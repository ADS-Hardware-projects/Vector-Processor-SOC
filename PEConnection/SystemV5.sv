module SystemV5(

    input CLK, WE, RESET, start,

    /// These are for inputting data to the RAM
    input [4:0] InAddress, // address bus for input
    input [511:0] DataIn, // data bus for output

    output [4:0] ResultAddress, // address of the (this will tell what the output is For saliya) (4 bit 0 - 16)
    output [255:0] FinalDataOut, // the column (calculated combined output)

    output AnsValid
);

    logic [4:0] OutAddress; // address bus for output the column
    logic [511:0] DataOut; // data bus for output

    logic MEMRST;

    logic CS, OE; // contol logic

    // dedicated outputs
    logic [511:0] Out[0:15];
    logic [511:0] SwitchedOut[0:7];

    // For processing elements
    logic enablePE;
    logic [7:0] v_valid;


    logic halt = 0;

    // Registers as counters
    reg [4:0]colCounter; // this will count colums from 0 -> 32

    /////////// CONBINATIONAL LOGIC /////////////
    assign CS = 1;
    assign OE = 1;


    assign ResultAddress = colCounter; // Column counter data out it
    assign OutAddress = {1'b1, colCounter[4:1]}; // The column is in the second large set (16-31) so append 1 in front and that is the output

    // assign SwitchedOut[0:7] = (colCounter[0] == 0) ? Out[0:7] : Out[8:15]; // multiplexing the outputs

    assign SwitchedOut[0] = (colCounter[0] == 0) ? Out[0] : Out[8]; // multiplexing the outputs
    assign SwitchedOut[1] = (colCounter[0] == 0) ? Out[1] : Out[9]; // multiplexing the outputs
    assign SwitchedOut[2] = (colCounter[0] == 0) ? Out[2] : Out[10]; // multiplexing the outputs
    assign SwitchedOut[3] = (colCounter[0] == 0) ? Out[3] : Out[11]; // multiplexing the outputs
    assign SwitchedOut[4] = (colCounter[0] == 0) ? Out[4] : Out[12]; // multiplexing the outputs
    assign SwitchedOut[5] = (colCounter[0] == 0) ? Out[5] : Out[13]; // multiplexing the outputs
    assign SwitchedOut[6] = (colCounter[0] == 0) ? Out[6] : Out[14]; // multiplexing the outputs
    assign SwitchedOut[7] = (colCounter[0] == 0) ? Out[7] : Out[15]; // multiplexing the outputs


    assign AnsValid = (v_valid[0] & v_valid[1] & v_valid[2] & v_valid[3] & v_valid[4] & v_valid[5] & v_valid[6] & v_valid[7]);

    // Create an Instance of the Data Memory
    DataMemory dataMem(.*);

    // Create Instances of PEs
    PE #(16, 32, 32) PE0  (.clk(CLK), .v_valid(v_valid[0]), .enable(enablePE), .k(SwitchedOut[0]), .x(DataOut), .y_out(FinalDataOut[255:224]));
    PE #(16, 32, 32) PE1  (.clk(CLK), .v_valid(v_valid[1]), .enable(enablePE), .k(SwitchedOut[1]), .x(DataOut), .y_out(FinalDataOut[223:192]));
    PE #(16, 32, 32) PE2  (.clk(CLK), .v_valid(v_valid[2]), .enable(enablePE), .k(SwitchedOut[2]), .x(DataOut), .y_out(FinalDataOut[191:160]));
    PE #(16, 32, 32) PE3  (.clk(CLK), .v_valid(v_valid[3]), .enable(enablePE), .k(SwitchedOut[3]), .x(DataOut), .y_out(FinalDataOut[159:128]));
    PE #(16, 32, 32) PE4  (.clk(CLK), .v_valid(v_valid[4]), .enable(enablePE), .k(SwitchedOut[4]), .x(DataOut), .y_out(FinalDataOut[127:96] ));
    PE #(16, 32, 32) PE5  (.clk(CLK), .v_valid(v_valid[5]), .enable(enablePE), .k(SwitchedOut[5]), .x(DataOut), .y_out(FinalDataOut[95 :64] ));
    PE #(16, 32, 32) PE6  (.clk(CLK), .v_valid(v_valid[6]), .enable(enablePE), .k(SwitchedOut[6]), .x(DataOut), .y_out(FinalDataOut[63 :32] ));
    PE #(16, 32, 32) PE7  (.clk(CLK), .v_valid(v_valid[7]), .enable(enablePE), .k(SwitchedOut[7]), .x(DataOut), .y_out(FinalDataOut[31 :0]  ));



    always_ff @(posedge CLK or negedge RESET) begin
        if (!RESET) begin
            // RESET CONDITION
            enablePE <= 0; // disable Processing elements
            colCounter <= 0; // resetting the column counter
            MEMRST <= 0;
            halt <= 0;

        end else begin
            MEMRST <= 1;

            if (start & !halt) begin
                if(!AnsValid) begin
                    enablePE <= 1;
                    colCounter <= colCounter;

                end else begin
                    // increment the column counter
                    colCounter <= colCounter + 5'b1;
                    enablePE <= 0;
                end

                if (colCounter[4:0] == 5'h1f) begin
                    halt <= 1;
                end else begin
                    halt <= 0;
                end
            end 
        end
    end


endmodule
