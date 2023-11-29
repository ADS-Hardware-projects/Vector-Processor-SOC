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
    input [511:0] DataIn, // data bus for output

    output [3:0] ResultAddress, // address of the (this will tell what the output is For saliya) (4 bit 0 - 16)
    output [511:0] FinalDataOut, // the column (calculated combined output)

    output AnsValid
);

    assign ResultAddress = '0;
    assign FinalDataOut = '0;

    assign AnsValid = 0;

endmodule
