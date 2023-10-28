module DataMemory(
    input [4:0] InAddress, // address bus for input
    input [511:0] DataIn, // data bus for output

    input [4:0] OutAddress, // address bus for output
    output [511:0] DataOut, // data bus for output

    input CS, WE, OE, CLK, MEMRST, // contol logic

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
    always_ff @(posedge CLK or negedge MEMRST) begin
        if(!MEMRST) begin
            Mem[0] <= '0; // Asynchronous reset when RST is deasserted
            Mem[1] <= '0; // Asynchronous reset when RST is deasserted
            Mem[2] <= '0; // Asynchronous reset when RST is deasserted
            Mem[3] <= '0; // Asynchronous reset when RST is deasserted
            Mem[4] <= '0; // Asynchronous reset when RST is deasserted
            Mem[5] <= '0; // Asynchronous reset when RST is deasserted
            Mem[6] <= '0; // Asynchronous reset when RST is deasserted
            Mem[7] <= '0; // Asynchronous reset when RST is deasserted

            Mem[8] <= '0; // Asynchronous reset when RST is deasserted
            Mem[9] <= '0; // Asynchronous reset when RST is deasserted
            Mem[10] <= '0; // Asynchronous reset when RST is deasserted
            Mem[11] <= '0; // Asynchronous reset when RST is deasserted
            Mem[12] <= '0; // Asynchronous reset when RST is deasserted
            Mem[13] <= '0; // Asynchronous reset when RST is deasserted
            Mem[14] <= '0; // Asynchronous reset when RST is deasserted
            Mem[15] <= '0; // Asynchronous reset when RST is deasserted

            Mem[16] <= '0; // Asynchronous reset when RST is deasserted
            Mem[17] <= '0; // Asynchronous reset when RST is deasserted
            Mem[18] <= '0; // Asynchronous reset when RST is deasserted
            Mem[19] <= '0; // Asynchronous reset when RST is deasserted
            Mem[20] <= '0; // Asynchronous reset when RST is deasserted
            Mem[21] <= '0; // Asynchronous reset when RST is deasserted
            Mem[22] <= '0; // Asynchronous reset when RST is deasserted
            Mem[23] <= '0; // Asynchronous reset when RST is deasserted

            Mem[24] <= '0; // Asynchronous reset when RST is deasserted
            Mem[25] <= '0; // Asynchronous reset when RST is deasserted
            Mem[26] <= '0; // Asynchronous reset when RST is deasserted
            Mem[27] <= '0; // Asynchronous reset when RST is deasserted
            Mem[28] <= '0; // Asynchronous reset when RST is deasserted
            Mem[29] <= '0; // Asynchronous reset when RST is deasserted
            Mem[30] <= '0; // Asynchronous reset when RST is deasserted
            Mem[31] <= '0; // Asynchronous reset when RST is deasserted

        end else begin
            if (CS && WE) begin
                Mem[InAddress] = DataIn;
            end
        end   
    end


endmodule
