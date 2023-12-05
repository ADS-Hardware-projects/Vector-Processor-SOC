module FU(

    input logic clk,
    input logic start,rstn,
    input logic [31:0] pc,
    input logic [31:0] l1,w1,l2,w2, dataIn,dataInPE,
    output logic [31:0] addrBram, dataPE01, dataPE02,dataPE11,dataPE12,dataPE21,dataPE22,dataPE31,dataPE32,
    output logic enPE,
    input logic donePE
);

logic [3:0] state;
logic [6:0] counter;
parameter IDLE = 1, DREAD = 2, WAIT_CAL = 3;

logic [31:0] pc1,pc2,pc3,pc4;
logic [32*8 -1 :0] shiftReg;
assign addrBram = pc1;
assign dataPE01 = shiftReg[31:0];
assign dataPE02 = shiftReg[63:32];
assign dataPE11 = shiftReg[95:64];
assign dataPE12 = shiftReg[127:96];
assign dataPE21 = shiftReg[159:128];
assign dataPE22 = shiftReg[191:160];
assign dataPE31 = shiftReg[223:192];
assign dataPE32 = shiftReg[255:224];

always @(posedge clk)
begin

    if (!rstn)
    begin
        state <= IDLE;
                            
        pc1 <= 0;
        pc2 <= 0;
        pc3 <= 0;
        pc4 <= 0;
        enPE <= 0;

    end

    else
    begin

        case (state)
        begin
            IDLE:
            begin

                state <= IDLE;
                            
                pc1 <= 0;
                pc2 <= 0;
                pc3 <= 0;
                pc4 <= 0;
                enPE <= 0;
                if (start == 1 && pc ==0)
                begin
                    state <= DREAD;
                    pc1 <= 0;
                    pc2 <= 4;
                    pc3 <= 8;
                    pc4 <= 12;
                    counter <= 0;
                    enPE <= 0;

                end
            end

            DREAD:
            begin
                state <= DREAD;
                if (counter >=8)
                begin

                    state <= WAIT_CAL;
                    enPE <= 1;


                end

                else
                begin
                    counter <= counter + 1;
                    shiftReg <= {dataIn, shiftReg[32*(7-counter)-1:0]};
                    pc1 <= pc1 + 4;
                    enPE <= 0;
                end
            end


            WAIT_CAL:
            begin

                if (donePE)
                begin

                end

                else
                begin
                    state <= WAIT_CAL;
                end

            end
        end
        endcase
    end
end





endmodule