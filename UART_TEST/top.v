module top #()
(
  input  clk, rstn, rx,m_valid,
  output tx, m_ready,s_valid,
  output [7:0] s_data_kx,
  input [7:0] par_data

);



    uart_rx #(
    .CLOCKS_PER_PULSE (10000),
    .BITS_PER_WORD (8), 
    .W_OUT (8)
    ) UART_RX_inst_1 (
        .clk    (clk), 
        .rstn   (rstn), 
        .rx     (rx),
        .m_valid(s_valid),
        .m_data (s_data_kx)
    );



    uart_tx #(
   .CLOCKS_PER_PULSE (2),
   .BITS_PER_WORD    (8),
   .PACKET_SIZE      (13),
   .W_OUT            (8)
    ) 
    UART_TX_inst_1 (
   .clk     (clk      ), 
   .rstn    (rstn     ), 
   .s_ready (m_ready  ),
   .s_valid (m_valid  ), 
   .s_data  (par_data ),
   .tx      (tx       )
  );  

endmodule

