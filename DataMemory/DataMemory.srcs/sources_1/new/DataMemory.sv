module DataMemory(
    input [4:0] InAddress, // address bus for input
    input [511:0] DataIn, // data bus for output

    input [4:0] OutAddress, // address bus for input
    output [511:0] DataOut, // data bus for output

    input CS, WE, OE, CLK, // contol logic

    // dedicated outputs
    output [511:0] Out0,
    output [511:0] Out1,
    output [511:0] Out2,
    output [511:0] Out3,

    output [511:0] Out4,
    output [511:0] Out5,
    output [511:0] Out6,
    output [511:0] Out7,

    output [511:0] Out8,
    output [511:0] Out9,
    output [511:0] Out10,
    output [511:0] Out11,

    output [511:0] Out12,
    output [511:0] Out13,
    output [511:0] Out14,
    output [511:0] Out15
    );

    logic [511:0] Mem [0:31]; // create a memory using a lut

    // writing the Dara read port
    assign DataOut = (CS && OE) ? Mem[OutAddress] : 'z;

    /// Assigining dedicated outputs

    assign Out0  = (CS && OE) ? Mem[0] : 'z;
    assign Out1  = (CS && OE) ? Mem[1] : 'z;
    assign Out2  = (CS && OE) ? Mem[2] : 'z;
    assign Out3  = (CS && OE) ? Mem[3] : 'z;

    assign Out4  = (CS && OE) ? Mem[4] : 'z;
    assign Out5  = (CS && OE) ? Mem[5] : 'z;
    assign Out6  = (CS && OE) ? Mem[6] : 'z;
    assign Out7  = (CS && OE) ? Mem[7] : 'z;

    assign Out8  = (CS && OE) ? Mem[8] : 'z;
    assign Out9  = (CS && OE) ? Mem[9] : 'z;
    assign Out10 = (CS && OE) ? Mem[10] : 'z;
    assign Out11 = (CS && OE) ? Mem[11] : 'z;

    assign Out12 = (CS && OE) ? Mem[12] : 'z;
    assign Out13 = (CS && OE) ? Mem[13] : 'z;
    assign Out14 = (CS && OE) ? Mem[14] : 'z;
    assign Out15 = (CS && OE) ? Mem[15] : 'z;

    // writing data write port
    always @(posedge CLK) begin
    if (CS && WE)
        Mem[InAddress] = DataIn;
    end
endmodule
