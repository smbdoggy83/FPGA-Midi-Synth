
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module DE10_Standard_i2sound(

//	//////////// CLOCK //////////
	input 		          		CLOCK2_50,
	input 		          		CLOCK3_50,
	input 		          		CLOCK4_50,
	input 		          		CLOCK_50,

	//////////// KEY //////////
	input 		     [3:0]		KEY,


	output		     [9:0]		LEDR,

	//////////// Seg7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5,

	//////////// Audio //////////
	input 		          		AUD_ADCDAT,
	inout 		          		AUD_ADCLRCK,
	inout 		          		AUD_BCLK,
	output		          		AUD_DACDAT,
	inout 		          		AUD_DACLRCK,
	output		          		AUD_XCK,

	//////////// I2C for Audio and Video-In //////////
	output		          		FPGA_I2C_SCLK,
	inout 		          		FPGA_I2C_SDAT

);



///=======================================================
//  REG/WIRE declarations
//=======================================================
wire				CLK_1M;
wire			 	END;
wire			 	KEY0_EDGE;
wire	[23:0] 		AUD_I2C_DATA;
wire         		GO;
wire  	[3:0]  		level_vol;
wire [23:0] 	audio_out;
reg  [23:0]    audio_out_reg;

//=======================================================
//  Structural coding
//=======================================================
assign		LEDR = 10'h000;
assign		HEX1 = 7'h40;
assign		AUD_DACDAT = AUD_ADCDAT;

//KEY triggle - Takes in the button (key) and uses the clock to debounce it, returns a signal that just represents the pressing-in-edge of pressing the button
keytr			u3( 
	.clock(CLK_1M),
	.key0(KEY[0]),
	.rst_n(KEY[1]),
	
	.KEY0_EDGE(KEY0_EDGE)
	);

//I2C output data
CLOCK_500		u1(
	.CLOCK(CLOCK_50), //The Outputting Clock Signal is Connected to the CLOCK_50 Signal on the DE-10
	.rst_n(KEY[1]), // The Reset Signal is Connected to KEY1 on the DE-10					 
	.END(END), //Stopping the Process of Outputting the I2C Data to the I2S on the DE-10
	.KEY0_EDGE(KEY0_EDGE), //The Edge Signal for KEY0 is Connected to the Edge Signal for KEY0 on the DE-10
	
	.CLOCK_500(CLK_1M), //The Clock_500 Signal Outputting from the I2C is Connected to a 1MHz on the DE-10
	.GO(GO), //Process of Moving the I2C Serial Data             
	.CLOCK_2(AUD_XCK), //The Clock_2 Signal Outputting from the I2C is Connected to the Audio XCK Signal on the I2S in the DE-10
	.DATA(AUD_I2C_DATA), //The Data Signal Outputting from the I2C is Connected to the Audio I2C Data Signal on the I2S in the DE-10
	.level_vol(level_vol) //The Outputting Volume Level is Mapped to the I2C Volume Level on the DE-10
	);
					 
//i2c input controller
i2c				u2( 
	// Host Side
	.CLOCK(CLK_1M), //The Overall Clock Signal from the Controller is Connected to a 1MHz Clock on the DE-10
	.RESET(1'b1), //The Reset Signal from the Controller is Connected to the Value 1'b1 on the DE-10
	// I2C Side
	.I2C_SDAT(FPGA_I2C_SDAT), //The I2C Data Signal from the Controller is Connected to the FPGA I2C Data Signal for the Audio In of the I2S on the DE-10
	.I2C_DATA(AUD_I2C_DATA), //The 24 Bit I2C Serial Data from the Controller is Connected to the 24 Bit Audio I2C Data Signal for the I2S on the DE-10
	.I2C_SCLK(FPGA_I2C_SCLK), //The I2C Clock Signal from the Controller is Connected to the FPGA I2C Clock Signal for the Audio In of the I2S on the DE-10
	// Control Signals
	.GO(GO), //Process of Moving the I2C Serial Data
	.END(END) //Stopping the Process of Moving I2C Serial Data
	);
					 
HEX				u4(
	.hex(level_vol), 
	.hex_fps(HEX0) //Displays the Volume Level on the DE-10
	);
/*
lowpass_800 u5(
	.clk(CLOCK_50),
	.clk_enable(1'b1),
	.reset(1'b0),
	.filter_in(AUD_I2C_DATA),
	.filter_out(audio_out),
	);
*/
endmodule
