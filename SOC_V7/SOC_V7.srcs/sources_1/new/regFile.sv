module regFile #(
    parameter wordSize = 32,
    parameter words = 16,
    parameter NoOfElem = 16
)
(
    input [words * wordSize - 1 : 0] dataIn,
    input [$clog2(NoOfElem - 1) - 1 : 0] addr,
    input RESET, WE, clk,
    output reg [words * wordSize - 1: 0] dataOut [0 : NoOfElem - 1] // this is the register file
);

always_ff @(posedge clk or negedge RESET) begin 
    ///////////////////////// RESET CONDITION /////////////////////////
    if (!RESET) begin
        for (int i = 0; i < NoOfElem; i++) begin
            dataOut[i] <= '0;
        end
    end // end of resetting

    ///////////////////////// LOGIC OF THE SYSTEM ////////////////////////////
    else begin
        if (WE) begin 
            dataOut[addr] <= dataIn;
        end // end of write enable
    end // end of logic
end // end of always_ff @(posedge clk or negedge RESET)

endmodule
