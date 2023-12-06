`timescale 1ns / 1ps
module PEadd #(
    parameter matSize = 16,
    parameter wordSize = 32
)(
    input clk, RESET, ctrl,

    input [matSize - 1 : 0][wordSize -1 : 0] a, // one of the inputs
    input [matSize - 1 : 0][wordSize -1 : 0] b, // one of the inputs

    output logic valid,
    output logic [matSize - 1 : 0][wordSize -1 : 0] c // one of the inputs
);

always_ff @(posedge clk or negedge RESET) begin
    if(!RESET) begin 
        c <= 0;
        valid <= 0;
    end else begin
        // Loop through each element of the vectors and add them
        for (int i = 0; i < matSize; i = i + 1) begin
            if (ctrl == 0) begin 
                c[i] <= a[i] + b[i];
            end else begin
                c[i] <= ~a[i]+1'b1 + b[i];  // B - A
            end
        end
        valid <= 1;
    end
end

endmodule
