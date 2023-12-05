module bram_con(

    output [31:0]addr,
    output [31:0]dout,
    input  [31:0] din,
    output [3:0] we,
    output en,
    output clk_b,
    input clk
);

assign addr = 32'b0;
assign dout = 32'b010101;
assign en = 1'b1;
assign we = 4'b1111;
assign clk_b = clk;



endmodule