//parameter NUM_OF_ROWS = 16, parameter NUM_OF_COLS = 16
module mat_pre_proc #(parameter NUM_OF_WORDS=4)(
    input logic clk, rstn,
    input logic [31:0] s_data,
    input logic data_valid,
    output logic [NUM_OF_ROWS-1:0][NUM_OF_COLS-1:0][31:0] matrix,
    output logic data_valid_out

); 

    integer word_count;
    integer value_count;
    integer row_count;

    logic [15:0] NUM_OF_ROWS, NUM_OF_COLS;
    logic [31:0] dimensions;

    logic [NUM_OF_COLS-1:0][31:0] row;

    enum {IDLE, VALUE_FILL, ROW_FILL, COL_FILL} state;
    assign NUM_OF_COLS = dimensions[31:16];
    assign NUM_OF_ROWS = dimensions[15:0];


    always_ff @(posedge clk or negedge rstn) begin

        if (!rstn) 
        begin

            value_count <= 0;
            row_count <= 0;
            state <= IDLE;
            row <= 0;
            data_valid_out <= 0;
        
        end 
        else
        begin

            case(state)

            IDLE:
            begin
                data_valid_out <= 0;

                if (data_valid)
                begin
                    
                    if (row_count==0 && col_count==0)
                    begin
                        dimensions <= s_data;

                    end
                    else
                    begin
                        state <= COL_FILL;
                    end
                end

                else
                begin
                    state <= IDLE;
                end

            end
            COL_FILL:
            begin

                if (value_count>= NUM_OF_COLS-1)
                begin
                    value_count <= 0;
                    state <= ROW_FILL;
                    row[value_count][31:0] <= s_data;
                end

                else
                begin
                    value_count <= value_count + 1;
                    state <= IDLE;
                    row[value_count][31:0] <= s_data;

                end
                
            end

            ROW_FILL:
            begin

                if (row_count>= NUM_OF_ROWS-1)
                begin
                    row_count <= 0;
                    state <= IDLE;
                    matrix[row_count][NUM_OF_ROWS-1:0] <= row;
                    data_valid_out <= 1;
                end

                else
                begin
                    row_count <= row_count + 1;
                    state <= IDLE;
                    matrix[row_count][NUM_OF_ROWS-1:0] <= row;

                end
                
            end

            endcase

        end

    end




endmodule