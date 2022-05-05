module Top_Level_ver(
	// Synth
	input CLOCK_50,
	input MIDI_RX, 
//	output reg I2S_BIT_CLOCK, // Not used
//	output reg I2S_SOUND_DATA, // Goes to i2sound
//	output reg I2S_LEFT_RIGHT_SELECT, // Not used
	output [9:0] LEDR,

	// i2sound
	input [3:0] KEY,
	output [6:0] HEX0,
	output [6:0] HEX1,
	input AUD_ADCDAT,
//	inout AUD_ADCLRCK,
//	inout AUD_BCLK,
	output AUD_DACDAT,
//	inout AUD_DACLRCK,
	output AUD_XCK,
	output FPGA_I2C_SCLK,
	inout FPGA_I2C_SDAT,

	
	// Other
	input [9:0] SW // Toggle between live audio and synth audio
);

wire isNoteOn;
wire [23:0] noteSampleTicks;
wire [7:0] modulationValue;

wire [9:0] ledr;
wire [6:0] hex0;
wire [6:0] hex1;
wire aud_dacdat;
wire aud_xck;

reg audio_in;


SoundModule soundmodule(CLOCK_50, MIDI_RX, i2s_bit_clock, i2s_sound_data, i2s_left_right_select, ledr);
DE10_Standard_i2sound i2sound(KEY, HEX0, HEX1, audio_in, aud_dacdat, aud_xck, fpga_i2c_sclk, FPGA_I2C_SDAT);

always @(posedge CLOCK_50)
begin
//	LEDR <= ledr;
//	HEX0 <= hex0;
//	HEX1 <= hex1;
//	AUD_DACDAT <= aud_dacdat;
//	AUD_XCK <= aud_xck;
//	FPGA_I2C_SCLK <= fpga_i2c_sclk;

	audio_in <= SW[0] ? i2s_sound_data : AUD_ADCDAT;
end


endmodule
