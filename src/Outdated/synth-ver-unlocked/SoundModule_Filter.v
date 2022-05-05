module SoundModule_Filter(
	input CLOCK_50,
	input MIDI_RX,
	output reg I2S_BIT_CLOCK,
	output reg I2S_SOUND_DATA,
	output reg I2S_LEFT_RIGHT_SELECT,
	output reg [7:0] LEDR,
	
	input [3:0] KEY,
	output reg [6:0] HEX0,
	output reg [6:0] HEX1,
	input AUD_ADCDAT,
	output reg AUD_DACDAT,
	output reg AUD_XCK,
	output reg FPGA_I2C_SCLK,
	inout FPGA_I2C_SDAT,
	
	input [9:0] SW
);

wire i2sBitClock;
wire i2sSoundData;
wire i2sLeftRightSelect;

wire isNoteOn;
wire [23:0] noteSampleTicks;
wire [7:0] modulationValue;

//// 

wire filter_out;

wire [6:0] hex0;
wire [6:0] hex1;
wire aud_dacdat;
wire aud_xck;
wire fpga_i2c_sclk;

reg filter_in;

////

MidiProcessor midiProcessor(CLOCK_50, MIDI_RX, isNoteOn, noteSampleTicks, modulationValue);
Synthesizer synthesizer(CLOCK_50, isNoteOn, noteSampleTicks, modulationValue, i2sBitClock, i2sSoundData, i2sLeftRightSelect);

bandpass_leastPth_ver filter(CLOCK_50, 1'b1, 1'b0, filter_in, filter_out);

//DE10_Standard_i2sound i2sound(KEY, hex0, hex1, AUD_ADCDAT, aud_dacdat, aud_xck, fpga_i2c_sclk, FPGA_I2C_SDAT);
//DE10_Standard_i2sound i2sound(KEY, hex0, hex1, noteSampleTicks, aud_dacdat, aud_xck, fpga_i2c_sclk, FPGA_I2C_SDAT);
DE10_Standard_i2sound i2sound(KEY, hex0, hex1, filter_out, aud_dacdat, aud_xck, fpga_i2c_sclk, FPGA_I2C_SDAT);

always @(posedge CLOCK_50)
begin
	I2S_BIT_CLOCK <= i2sBitClock;
	I2S_SOUND_DATA <= i2sSoundData;
	I2S_LEFT_RIGHT_SELECT <= i2sLeftRightSelect;

	LEDR <= isNoteOn ? noteSampleTicks[7:0] : 8'h00;
	
	HEX0 <= hex0;
	HEX1 <= hex1;
	AUD_DACDAT <= aud_dacdat;
	AUD_XCK <= aud_xck;
	FPGA_I2C_SCLK <= fpga_i2c_sclk;
	filter_in <= SW[0] ? i2sSoundData : AUD_ADCDAT;
end

endmodule
