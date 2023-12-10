`timescale 1ns / 1ps
module PEadd #(
    parameter NoOfElem = 16,
    parameter wordSize = 32
)(
    input clk, RESET,
    input [1:0]ctrl,

    input [NoOfElem - 1 : 0][wordSize -1 : 0] a, // one of the inputs
    input [NoOfElem - 1 : 0][wordSize -1 : 0] b, // one of the inputs

    output logic valid,
    output logic [NoOfElem - 1 : 0][wordSize -1 : 0] c // one of the inputs
);

always_ff @(posedge clk or negedge RESET) begin
    if(!RESET) begin 
        c <= 0;
        valid <= 0;
    end else begin
        // Loop through each element of the vectors and add them
        for (int i = 0; i < NoOfElem; i = i + 1) begin

            case(ctrl)
                2'b00: begin
                    c[i] <= a[i] + b[i];
                end

                2'b01: begin
                    c[i] <= -a[i] - b[i];
                end

                2'b10: begin
                    c[i] <= a[i] - b[i];
                end

                2'b11: begin
                    c[i] <=  b[i] - a[i];
                end
            endcase
        end
        valid <= 1;
    end
end

endmodule
