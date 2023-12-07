`timescale 1ns / 1ps
module PEadd #(
    parameter matsize = 16,
    parameter wordsize = 32
)(
    input clk, RESET, ctrl,

    input [matsize - 1 : 0][wordsize -1 : 0] a, // one of the inputs
    input [matsize - 1 : 0][wordsize -1 : 0] b, // one of the inputs

    output logic [matsize - 1 : 0][wordsize -1 : 0] c // one of the inputs
);

always_ff @(posedge clk or negedge RESET) begin
    if(!RESET) begin 
        c <= 0;
    end else begin
        // Loop through each element of the vectors and add them
        for (int i = 0; i < matsize; i = i + 1) begin
            if (ctrl == 0) begin 
                c[i] <= a[i] + b[i];
            end else begin
                c[i] <= a[i] - b[i];
            end
        end
    end
end

endmodule
