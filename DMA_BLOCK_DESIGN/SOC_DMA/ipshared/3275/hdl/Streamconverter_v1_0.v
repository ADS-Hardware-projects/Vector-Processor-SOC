
`timescale 1 ns / 1 ps

	module Streamconverter_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
		
		output wire [31:0]addr,
        output wire [31:0]dout,
        input  wire [31:0] din,
        output wire [3:0] we_1,
        output wire en,

        input wire start_cal,
        
        input wire done_cal,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);
	
	
	
    wire [31:0] data_to_bram;
	wire [31:0] addr_to_bram;
	
	reg [31:0] data_from_bram;
//    wire  clk_to_bram;
    wire [3:0] we;
    	
	reg [3:0] state;
    reg data_valid;
//    reg [31:0] tempmem [0:511];
    wire write_finished;
    wire [31:0] fifo_addr;
// Instantiation of Axi Bus Interface S00_AXIS
	Streamconverter_v1_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) Streamconverter_v1_0_S00_AXIS_inst (
 .data_to_bram(data_to_bram),
	    .addr_to_bram(addr_to_bram),
	    .we(we),
	    .write_finished(write_finished),
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid)
	);

// Instantiation of Axi Bus Interface M00_AXIS
	Streamconverter_v1_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) Streamconverter_v1_0_M00_AXIS_inst (
        .data_from_bram(din),
	   .done_cal(done_cal),
	   .fifo_addr(fifo_addr),
	   .start_cal(start_cal),
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready)
	);

	// Add user logic here
	
    assign dout = data_to_bram;
    assign we_1 = we;
    assign addr = (~done_cal) ? {addr_to_bram, 2'b00} : {fifo_addr, 2'b00}; 
    assign en = (&we)||(done_cal && m00_axis_tready);

	// User logic ends

	endmodule
