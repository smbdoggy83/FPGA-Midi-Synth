module Top_Level_ver(
	// Synth
	input CLOCK_50,
	input MIDI_RX, 
//	output reg I2S_BIT_CLOCK, // Not used
//	output reg I2S_SOUND_DATA, // Goes to i2sound instead of direct output
//	output reg I2S_LEFT_RIGHT_SELECT, // Not used
	output reg [9:0] LEDR,

	// i2sound
	input [3:0] KEY,
	output reg [6:0] HEX0,
	output reg [6:0] HEX1,
	input AUD_ADCDAT,				// Audio in (Physical)
	output reg AUD_DACDAT, 		// Audio Out
	output reg AUD_XCK,
	output reg FPGA_I2C_SCLK,
	inout FPGA_I2C_SDAT,

	// Other
	input [9:0] SW // Toggle Audio Source / Filter
);

wire isNoteOn;
wire [23:0] noteSampleTicks;
wire [7:0] modulationValue;

wire [9:0] ledr;
wire [6:0] hex0;
wire [6:0] hex1;
wire aud_dacdat;
wire aud_xck;

reg filter_in;
reg audio_in;

SoundModule soundmodule(CLOCK_50, MIDI_RX, i2s_bit_clock, i2s_sound_data, i2s_left_right_select, ledr); // Synthesizer itself
bandpass_leastPth_ver filter(CLOCK_50, 1'b1, 1'b0, filter_in, filter_out); // Bandpass Filter
DE10_Standard_i2sound i2sound(CLOCK_50, KEY, hex0, hex1, audio_in, aud_dacdat, aud_xck, fpga_i2c_sclk, FPGA_I2C_SDAT); // Audio In / Out


always @(posedge CLOCK_50)
begin
	LEDR <= ledr;
	HEX0 <= hex0;
	HEX1 <= hex1;
	AUD_DACDAT <= aud_dacdat; // audio output
	AUD_XCK <= aud_xck;
	FPGA_I2C_SCLK <= fpga_i2c_sclk;

	filter_in <= SW[0] ? i2s_sound_data : AUD_ADCDAT; // Switch 0 Controls if audio is from synth or from physical jack
	audio_in <= SW[1] ? filter_out : filter_in; // Switch 1 Controls if filter is enabled 	
end


endmodule
