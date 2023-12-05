
`timescale 1 ns / 1 ps

	module AXI_STREAM_S_M_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32,

		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
		    output reg [12:0]addr,
            output reg [31:0]dout,
            input [31:0] din,
            output reg we_1,
            output reg en,
            output wire clk_b,
            input wire done_cal,


		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready,

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid
	);
	
	
	
	wire [31:0] data_to_bram;
	wire [12:0] addr_to_bram;
	reg [31:0] data_from_bram;
//    wire  clk_to_bram;
    wire we;
    reg [12:0] addr_counter;
// Instantiation of Axi Bus Interface M00_AXIS
	AXI_STREAM_S_M_v1_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) AXI_STREAM_S_M_v1_0_M00_AXIS_inst (
	   .data_from_bram(data_from_bram),
	   .data_valid(data_valid),
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready)
	);

// Instantiation of Axi Bus Interface S00_AXIS
	AXI_STREAM_S_M_v1_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) AXI_STREAM_S_M_v1_0_S00_AXIS_inst (
	    .data_to_bram(data_to_bram),
	    .addr_to_bram(addr_to_bram),
//	    .clk_to_bram(clk_to_bram),
	    .we(we),
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid)
	);

	// Add user logic here
	
	reg [3:0] state;
    reg data_valid;

    parameter IDLE = 1, DATA_IN=2, DATA_OUT=3;
	assign clk_b = s00_axis_aclk;
	always @(posedge s00_axis_aclk)
	begin
	   if (s00_axis_aresetn)
	   begin
	      
	       state <= IDLE;
	   end
	   
	   else
	   begin
	       case(state)
	       IDLE:
	       begin
	           addr_counter <= 0;
	           en <= 1'b0;
	           data_valid <= 1'b0;

               if (we)
               begin
                addr_counter <= 0;
                state <= DATA_OUT;
               end
               
               else
               begin
                if (done_cal)
                begin
                    addr_counter <= 512;
                    state <= DATA_IN;
                end
               
               end
	       end
	       
	       DATA_OUT:
	       begin
	           addr <= addr_counter;
	           dout <= data_to_bram;
	           addr_counter <= addr_counter + 1;
	           we_1 <= we;
	           en <= 1'b1;
	           state <= DATA_OUT;
	           if (addr_counter >= 512)
	           begin
	               state <= IDLE;
	           end
	       end
	       
	       DATA_IN:
	       begin
	           if (!we)
	           begin
	           data_from_bram <= din;
               addr <= addr_counter;
               data_valid <= 1'b1;
               addr_counter <= addr_counter +1;
               en = 1'b1;
//               clk_b <= m00_axis_aclk;
               state <= DATA_IN;
               if (addr_counter >512 + 256)
               begin
                state <= IDLE;
               end
               end
      
	       end
	       
	       endcase
	   end
	end
	

//	always @(posedge m00_axis_aclk)
//	begin
	
//	   if(!m00_axis_aresetn)
//	   begin
//	       state <= IDLE;
//	   end
	   
//	   else
//	   begin
//	       case(state)
//	       IDLE:
//	       begin
//	           addr_counter <= 0;
//	           en <= 1'b0;
//	           data_valid <= 1'b0;
//	           if (done_cal)
//               begin
//                    addr_counter <= 512;
//                    state <= DATA_IN;
   
//               end
//	       end
	       
//	       DATA_IN:
//	       begin
//	           if (!we)
//	           begin
//	           data_from_bram <= din;
//               addr <= addr_counter;
//               data_valid <= 1'b1;
//               addr_counter <= addr_counter +1;
//               en = 1'b1;
////               clk_b <= m00_axis_aclk;
//               state <= DATA_IN;
//               if (addr_counter >512 + 256)
//               begin
//                state <= IDLE;
//               end
//               end
      
//	       end
	       
//	       endcase
//	   end
	       
//      end



	// User logic ends

	endmodule
