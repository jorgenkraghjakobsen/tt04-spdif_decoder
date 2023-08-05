`default_nettype none

module tt_um_jkj_spdif_decoder #( parameter MAX_COUNT = 24'd10_000_000 ) (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

spdif_decoder spdif_decoder(
    .clk_in(clk),
    .resetb(rst_n),
    .rx_in(ui_in[0]),
    .i2s_bck(uo_out[0]),
    .i2s_ws(uo_out[1]),
    .i2s_d0(uo_out[2]),
    .audio_locked(uo_out[3]),
    .edgedetect(uo_out[4]));

endmodule
