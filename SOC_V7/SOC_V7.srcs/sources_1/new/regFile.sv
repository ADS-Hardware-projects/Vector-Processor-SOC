module regFile #(
    parameter wordSize = 32,
    parameter words = 16,
    parameter NoOfElem = 16
)
(
    input [words-1 : 0][wordSize-1 : 0] dataIn,
    input [$clog2(NoOfElem) - 1 : 0] addr,
    input RESET, WE, clk, transpose,
    output logic [words-1 : 0][wordSize-1 : 0] dataOut [0 : NoOfElem - 1] // this is the register file
);

logic [words-1 : 0][wordSize-1 : 0] mem [0 : NoOfElem - 1]; // this is the register file

always_comb begin : routing
    for (int i = 0; i < NoOfElem; i = i + 1) begin
        if(transpose) begin
            for(int j = 0; j < NoOfElem; j = j + 1) begin
                dataOut[i][j] = mem[15 - j][15 - i];
            end
        end
        else begin
            dataOut[i] = mem[i];
        end
    end
end

always_ff @(posedge clk or negedge RESET) begin 
    ///////////////////////// RESET CONDITION /////////////////////////
    if (!RESET) begin
        for (int i = 0; i < NoOfElem; i++) begin
            mem[i] <= 0;
        end
    end // end of resetting

    ///////////////////////// LOGIC OF THE SYSTEM ////////////////////////////
    else begin
        if (WE) begin 
            mem[addr] <= dataIn;
        end // end of write enable
    end // end of logic
end // end of always_ff @(posedge clk or negedge RESET)

endmodule
