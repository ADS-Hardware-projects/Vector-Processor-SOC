
`timescale 1 ns / 1 ps

	module S2MMV2_v1_0_S00_AXIS #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// AXI4Stream sink: Data Width
		parameter integer C_S_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
	      output reg [31:0] data_to_bram,
		  output reg [31:0] addr_to_bram,
          output wire write_finished,  
		  output reg  [3:0] we,
		  input wire [ 31:0] DMA_MM2S_BUFF_LEN,
	      input wire [ 31:0] DMA_MM2S_START_ADDR,

		// User ports ends
		// Do not modify the ports beyond this line

		// AXI4Stream sink: Clock
		input wire  S_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S_AXIS_ARESETN,
		// Ready to accept data in
		output wire  S_AXIS_TREADY,
		// Data in
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S_AXIS_TLAST,
		// Data is in valid
		input wire  S_AXIS_TVALID
	);
	// function called clogb2 that returns an integer which has the 
	// value of the ceiling of the log base 2.
	function integer clogb2 (input integer bit_depth);
	  begin
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
	      bit_depth = bit_depth >> 1;
	  end
	endfunction

	// Total number of input data.
	wire [31:0] NUMBER_OF_INPUT_WORDS;
	assign  NUMBER_OF_INPUT_WORDS  = DMA_MM2S_BUFF_LEN;
	// bit_num gives the minimum number of bits needed to address 'NUMBER_OF_INPUT_WORDS' size of FIFO.
//	wire [15:0] bit_num; 
//	assign bit_num  = $clog2(NUMBER_OF_INPUT_WORDS-1);
	// Define the states of state machine
	// The control state machine oversees the writing of input streaming data to the FIFO,
	// and outputs the streaming data from the FIFO
	parameter [1:0] IDLE = 1'b0,        // This is the initial/idle state 

	                WRITE_FIFO  = 1'b1; // In this state FIFO is written with the
	                                    // input stream data S_AXIS_TDATA 
	wire  	axis_tready;
	// State variable
	reg mst_exec_state;  
	// FIFO implementation signals
	genvar byte_index;     
	// FIFO write enable
	wire fifo_wren;
	// FIFO full flag
	reg fifo_full_flag;
	// FIFO write pointer
	reg [31:0] write_pointer;
	// sink has accepted all the streaming data and stored in FIFO
	  reg writes_done;
	// I/O Connections assignments

	assign S_AXIS_TREADY	= 1'b1;//axis_tready;
    always @(posedge S_AXIS_ACLK) 
        begin  
          if (!S_AXIS_ARESETN) 
          // Synchronous reset (active low)
            begin
              mst_exec_state <= IDLE;
            end  
          else
            case (mst_exec_state)
              IDLE: 
                // The sink starts accepting tdata when 
                // there tvalid is asserted to mark the
                // presence of valid streaming data 
                  if (S_AXIS_TVALID)
                    begin
                      mst_exec_state <= WRITE_FIFO;
                    end
                  else
                    begin
                      mst_exec_state <= IDLE;
                    end
              WRITE_FIFO: 
                // When the sink has accepted all the streaming input data,
                // the interface swiches functionality to a streaming master
                if (writes_done)
                  begin
                    mst_exec_state <= IDLE;
                  end
                else
                  begin
                    // The sink accepts and stores tdata 
                    // into FIFO
                    mst_exec_state <= WRITE_FIFO;
                  end
    
            endcase
        end
	// AXI Streaming Sink 
	// 
	// The example design sink is always ready to accept the S_AXIS_TDATA  until
	// the FIFO is not filled with NUMBER_OF_INPUT_WORDS number of input words.
	assign axis_tready = ((mst_exec_state == WRITE_FIFO) && (write_pointer <= NUMBER_OF_INPUT_WORDS-1));

	

	always@(posedge S_AXIS_ACLK)
	begin
	  if(!S_AXIS_ARESETN)
	    begin
	      write_pointer <= 0;
	      writes_done <= 1'b0;
	      we <= 0;
	      addr_to_bram<= 0;
          data_to_bram <= 0;
	    end  
	  else
	    if (write_pointer <= NUMBER_OF_INPUT_WORDS-1)
	      begin
	        if (fifo_wren)
	          begin
	            write_pointer <= write_pointer + 1;
	            writes_done <= 1'b0;
	            addr_to_bram<= write_pointer + DMA_MM2S_START_ADDR;
                data_to_bram <= S_AXIS_TDATA;
                we <= 4'b1111;
	          end
	         else
                 begin
                   we <= 0;
                 end
           end
        else
        begin
            write_pointer <= 0;
        end
	     if ((write_pointer == NUMBER_OF_INPUT_WORDS-1)|| S_AXIS_TLAST)
            begin
      
              writes_done <= 1'b1;
              we <= 4'b1111;
           
            end
	      end 


	// FIFO write enable generation
	assign fifo_wren = S_AXIS_TVALID;// && axis_tready;


//	always @( posedge S_AXIS_ACLK )
//	    begin
//	      if (writes_done)// && S_AXIS_TSTRB[byte_index])
//	        begin
//	          write_pointer <= 0;
//	        end  
//	    end  


	endmodule
