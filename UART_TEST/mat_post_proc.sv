module mat_pre_proc #(parameter NUM_OF_WORDS=4, parameter NUM_OF_ROWS = 16, parameter NUM_OF_COLS = 16)(
    input logic clk, rstn,
    output logic [31:0] s_data,
    input logic data_valid,
    input logic [NUM_OF_COLS-1:0][NUM_OF_ROWS-1:0][31:0] matrix,
    output logic data_send_finished

); 

    
    integer col_count=0;
    integer row_count=0;
    enum {IDLE, DATA_SEND} state;
    always_ff @(posedge clk or negedge rstn) begin

        if (!rstn) 
        begin
            col_count <= 0;
            row_count <= 0;
            state <= IDLE;
            data_send_finished <= 0;
        
        end 
        else
        begin

            case(state)

            IDLE:
            begin
                data_send_finished <= 0;

                if (data_valid)
                begin
                    state <= DATA_SEND;
                end

                else
                begin
                    state <= IDLE;
                end

            end

            DATA_SEND:
            begin

                if (col_count>= NUM_OF_COLS-1)
                begin
                    if (row_count >= NUM_OF_ROWS)
                    begin

                        row_count <= 0;
                        s_data <= matrix[row_count][col_count];
                        state <= IDLE;
                        data_send_finished <= 1;


                    end

                    else
                    begin
                        state <= DATA_SEND
                        col_count <= 0;
                        row_count <= row_count + 1;
                        state <= DATA_SEND;
                        s_data <= matrix[row_count][col_count];
                    end
                end

                else
                begin
                    col_count <= col_count + 1;
                    state <= DATA_SEND;
                    s_data <= matrix[row_count][col_count];

                end
                
            end

          
            endcase

        end

    end

endmodule