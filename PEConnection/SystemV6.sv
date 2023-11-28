module SystemV6(

    input CLK, WE, RESET, start,

    /// These are for inputting data to the RAM
    input [4:0] InAddress, // address bus for input
    input [511:0] DataIn, // data bus for output

    output [4:0] ResultAddress, // address of the (this will tell what the output is For saliya) (4 bit 0 - 16)
    output [255:0] FinalDataOut, // the column (calculated combined output)

    output AnsValid
);


    // dedicated outputs
    logic [511:0] SwitchedOut[0:7];

    // For processing elements
    logic enablePE;
    logic [7:0] v_valid;


    logic halt = 0;

    // Registers
    reg [4:0]colCounter; // this will count colums from 0 -> 32
    logic [511:0] Mem [0:32]; // this is the main memmory

    /////////// CONBINATIONAL LOGIC /////////////

    assign ResultAddress = colCounter; // Column counter data out it

    assign SwitchedOut[0] = (colCounter[0] == 0) ? Mem[0] : Mem[8]; // multiplexing the outputs
    assign SwitchedOut[1] = (colCounter[0] == 0) ? Mem[1] : Mem[9]; // multiplexing the outputs
    assign SwitchedOut[2] = (colCounter[0] == 0) ? Mem[2] : Mem[10]; // multiplexing the outputs
    assign SwitchedOut[3] = (colCounter[0] == 0) ? Mem[3] : Mem[11]; // multiplexing the outputs
    assign SwitchedOut[4] = (colCounter[0] == 0) ? Mem[4] : Mem[12]; // multiplexing the outputs
    assign SwitchedOut[5] = (colCounter[0] == 0) ? Mem[5] : Mem[13]; // multiplexing the outputs
    assign SwitchedOut[6] = (colCounter[0] == 0) ? Mem[6] : Mem[14]; // multiplexing the outputs
    assign SwitchedOut[7] = (colCounter[0] == 0) ? Mem[7] : Mem[15]; // multiplexing the outputs

    assign AnsValid = (v_valid[0] & v_valid[1] & v_valid[2] & v_valid[3] & v_valid[4] & v_valid[5] & v_valid[6] & v_valid[7]);

    ///////////// END OF COMBINATIONAL LOGIC ///////////////////


    // Create Instances of PEs
    PE #(16, 32, 32) PE0  (.clk(CLK), .v_valid(v_valid[0]), .enable(enablePE), .k(SwitchedOut[0]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[255:224]));
    PE #(16, 32, 32) PE1  (.clk(CLK), .v_valid(v_valid[1]), .enable(enablePE), .k(SwitchedOut[1]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[223:192]));
    PE #(16, 32, 32) PE2  (.clk(CLK), .v_valid(v_valid[2]), .enable(enablePE), .k(SwitchedOut[2]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[191:160]));
    PE #(16, 32, 32) PE3  (.clk(CLK), .v_valid(v_valid[3]), .enable(enablePE), .k(SwitchedOut[3]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[159:128]));
    PE #(16, 32, 32) PE4  (.clk(CLK), .v_valid(v_valid[4]), .enable(enablePE), .k(SwitchedOut[4]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[127:96] ));
    PE #(16, 32, 32) PE5  (.clk(CLK), .v_valid(v_valid[5]), .enable(enablePE), .k(SwitchedOut[5]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[95 :64] ));
    PE #(16, 32, 32) PE6  (.clk(CLK), .v_valid(v_valid[6]), .enable(enablePE), .k(SwitchedOut[6]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[63 :32] ));
    PE #(16, 32, 32) PE7  (.clk(CLK), .v_valid(v_valid[7]), .enable(enablePE), .k(SwitchedOut[7]), .x(Mem[{1'b1, colCounter[4:1]}]), .y_out(FinalDataOut[31 :0]  ));

    //// Main Memmory Logic Here ////
    always_ff @(posedge CLK or negedge RESET) begin
        if(!RESET) begin
            for (integer  i = 0; i < 32; i++) begin
                Mem[i] <= '0; // Asynchronous reset when RST is deasserted
            end
        end else begin
            if (WE) begin
                Mem[InAddress] = DataIn;
            end
        end
    end




    //// GPU LOGIC HERE ////
    always_ff @(posedge CLK or negedge RESET) begin
        if (!RESET) begin
            // RESET CONDITION
            enablePE <= 0; // disable Processing elements
            colCounter <= 0; // resetting the column counter
            halt <= 0;

        end else begin
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
