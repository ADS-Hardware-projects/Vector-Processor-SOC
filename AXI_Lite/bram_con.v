module bram_con#()(

    input [31:0] data_from_pl,
    input [31:0] data_from_bram,
    output [31:0] data_to_bram,
    output [31:0] data_to_pl,
    input [31:0] address,
    output [31:0] addressb,
    input clk,rstn,en,
    input [3:0] we,
    output [3:0] web,
    output clkb,rstnb,enb



);

assign clkb = clk;

always @(posedge clk or negedge rstn)
begin
    if (!rstn)
    begin
        rstnb <= 0;
    end

    else 
    begin
        rstnb <= 1;

        if(en)
        begin
            enb <= 1;
            addressb <= address;
            data_to_pl <= data_from_bram;


        end

        if (we)
        begin
            web <= 1;
            data_to_bram <= data_from_pl;
            addressb <= address;

        end
        

    end
    
end



endmodule