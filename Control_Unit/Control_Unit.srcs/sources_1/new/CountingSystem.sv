module CountingSystem(

    // Essential Inputs of the Wrapper
    input logic RESET,
    input logic clk,

    input logic StartPROC,

    input logic [7:0] dimDataIn,

    

    // Essential Outputs of the Wrapper
    


    //////////////////// JUST TO CHECK //////////////////////////
    output logic [3:0]rowCountDataOut,
    output logic [3:0]colCountDataOut,
    input logic valid,
    input logic [1:0] dim_WE,

    output logic enable,

    output logic ROW_count_Done,

    output logic [7:0]checkSUB

    );

    /// Variables for the counters
    // logic ROW_count_Done;
    logic valid; // the signal from PES

    /// Connecting logic wires for the registers
    logic row_counter_RST;
    logic row_counter_CS;
    logic row_counter_WE;
    logic row_counter_OE;
    logic [3:0] rowCountDataIn;
    // logic rowCountDataOut;

    logic col_counter_RST;
    logic col_counter_CS;
    logic col_counter_WE;
    logic col_counter_OE;
    logic [3:0] colCountDataIn;
    // logic colCountDataOut;

    logic [1:0] dim_RST;
    logic [1:0] dim_CS;
    logic [1:0] dim_OE;

    logic [7:0] dim_l_dataOut;
    logic [7:0] dim_n_dataOut;

////////////////////////////////////////// Combinational LOGIC of the SOC //////////////////////////////////////////////////
    assign row_counter_CS = 1;
    assign row_counter_OE = 1;

    assign col_counter_CS = 1;
    assign col_counter_OE = 1;

    assign dim_CS = 2'b11;
    assign dim_OE = 2'b11;

    assign rowCountDataIn = rowCountDataOut + 1;

    assign checkSUB = dim_l_dataOut - rowCountDataOut;
/////////////////////////////////////////// END OF COMBINATIONAL LOGIC /////////////////////////////////////////////////////


//creating the counters
    register #(4) rowCounter (.RST(row_counter_RST), .CLK(clk), .DataIn(rowCountDataIn), .DataOut(rowCountDataOut), .CS(row_counter_CS), .WE(row_counter_WE), .OE(row_counter_OE));
    register #(4) colCounter (.RST(col_counter_RST), .CLK(clk), .DataIn(colCountDataIn), .DataOut(colCountDataOut), .CS(col_counter_CS), .WE(col_counter_WE), .OE(col_counter_OE));

//creating dimensions registers
    register #(8) l_reg (.RST(dim_RST[0]), .CLK(clk), .DataIn(dimDataIn), .DataOut(dim_l_dataOut), .CS(dim_CS[0]), .WE(dim_WE[0]), .OE(dim_OE[0]));
    register #(8) n_reg (.RST(dim_RST[1]), .CLK(clk), .DataIn(dimDataIn), .DataOut(dim_n_dataOut), .CS(dim_CS[1]), .WE(dim_WE[1]), .OE(dim_OE[1]));

    always_ff @(posedge clk or negedge RESET) begin
        if (!RESET) begin
            // Asynchronous reset behavior
            //////////////////////////// SYSTEM RESET ///////////////////////////////////////

            // resetting registers
            row_counter_RST <= 0;
            row_counter_WE <= 0; // disabling writing

            col_counter_RST <= 0;
            col_counter_WE <= 0;

            dim_RST <= '0;

            ROW_count_Done <= 0;

            // disabling PES
            enable <= 0;


            //////////////////////////// END OF SYSTEM RESET ////////////////////////////////

        end else begin
            // Synchronous logic behavior
            row_counter_RST <= 1;
            col_counter_RST <= 1;
            dim_RST <= 2'b11;


            if (StartPROC) begin

                if (!ROW_count_Done) begin
                    // Row Up counting
                    // Row counter pausing condition
                    if (rowCountDataOut[1:0] == 2'b10) begin
                        row_counter_WE <= 0;
                        ROW_count_Done <= 1; // saying to start column conterin
                    end else begin
                        row_counter_WE <= 1;
                    end 

                    // dissabling the column counter
                    col_counter_RST <= 0; // resetting the column counter
                    col_counter_WE <= 0 ;
                end else begin
                    // In this block we need to disable row counter and enable column counting
                    col_counter_RST <= 1; // stop resetting column counter
                
                    if (valid) begin
                        colCountDataIn <= colCountDataOut + 1;
                        enable <= 0;
                    
                        // resetting conditions
                        if (dim_n_dataOut - colCountDataOut <= 1) begin 
                            ROW_count_Done <= 0; // Row Count must start
                            col_counter_WE <= 0; // disabling writing to column counter
                        end else begin
                            ROW_count_Done <= 1;
                            col_counter_WE <= 1;
                        end

                    end else begin
                        enable <= 1;
                        col_counter_WE <= 0; // wait until the PES Done working
                    end

                end


            end else begin
                // do not start anything
                

            end

        end
end

endmodule
