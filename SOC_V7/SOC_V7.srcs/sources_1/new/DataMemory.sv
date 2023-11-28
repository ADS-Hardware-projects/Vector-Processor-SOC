module DataMemory(
    input [8:0] InAddress, // address bus for input
    input [31:0] DataIn, // data bus for output

    input [8:0] OutAddress, // address bus for input
    output [31:0] DataOut, // data bus for output

    input WE, RESET, clk // contol logic
    );

    logic [31:0] Mem [0:511]; // create a memory using a lut

    // writing the Data read port
    assign DataOut = Mem[OutAddress];

    // writing data write port
    always @(posedge clk or negedge RESET) begin
        if(!RESET) begin
            for(int i = 0; i < 512; i++) begin
                Mem[i] <= '0;
            end
        end else begin
            if (WE)
                Mem[InAddress] = DataIn;        
        end
    end
endmodule
