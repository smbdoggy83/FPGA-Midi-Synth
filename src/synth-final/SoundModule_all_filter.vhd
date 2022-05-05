-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module SoundModule (SoundModule-Copy.v:1)
entity SoundModule_all_filter is
  port (
    CLOCK_50 : in std_logic;
    I2S_BIT_CLOCK : out std_logic;
    I2S_LEFT_RIGHT_SELECT : out std_logic;
    I2S_SOUND_DATA : out std_logic;
	 LED : out unsigned(7 downto 0);
    MIDI_RX : in std_logic
  );
end entity; 

-- Generated from Verilog module SoundModule (SoundModule-Copy.v:1)
architecture from_verilog of SoundModule_all_filter is

  	component midiProcessor
		port(
			CLOCK_50 : in std_logic;
			MIDI_RX : in std_logic;
			isNoteOn : out std_logic;
			noteSampleTicks : out unsigned(23 downto 0);
			modulationValue : out unsigned(7 downto 0)
		);
	end component;

	component synthesizer
		port(
			CLOCK_50, isNoteOn : in std_logic;
			noteSampleTicks : in unsigned(23 downto 0);
			modulationValue : in unsigned(7 downto 0);
			i2sBitClock, i2sSoundData, i2sLeftRightSelect : out std_logic
		);
	end component;
	
	component i2sound
		port(
			CLOCK_50 : in std_logic;
			KEY : in unsigned(3 downto 0);
			LEDR : out unsigned(9 downto 0);
			HEX0 : out unsigned(6 downto 0);
			HEX1 : out unsigned(6 downto 0);
			AUD_ADCDAT : inout std_logic;
			AUD_ADCLRCK : inout std_logic;
			AUD_BCLK : inout std_logic;
			AUD_DACDAT : out std_logic;
			AUD_DACLRCK : inout std_logic;
			AUD_XCK : out std_logic;
			FPGA_I2C_SCLK : out std_logic;
			FPGA_I2C_SDAT : inout std_logic
		);
	end component;

  signal I2S_BIT_CLOCK_Reg : std_logic;
  signal I2S_LEFT_RIGHT_SELECT_Reg : std_logic;
  signal I2S_SOUND_DATA_Reg : std_logic;
  signal LED_Reg : unsigned(7 downto 0);
  signal i2sBitClock : std_logic;  -- Declared at SoundModule-Copy.v:10
  signal i2sLeftRightSelect : std_logic;  -- Declared at SoundModule-Copy.v:12
  signal i2sSoundData : std_logic;  -- Declared at SoundModule-Copy.v:11
  signal isNoteOn : std_logic;  -- Declared at SoundModule-Copy.v:14
--  signal noteSampleTicks : unsigned(23 downto 0);  -- Declared at SoundModule-Copy.v:15
	signal noteSampleTicks : unsigned(23 downto 0);
	signal modulationValue : unsigned(7 downto 0);
  
begin
  I2S_BIT_CLOCK <= I2S_BIT_CLOCK_Reg; -- port stuff
  I2S_LEFT_RIGHT_SELECT <= I2S_LEFT_RIGHT_SELECT_Reg; -- port stuff
  I2S_SOUND_DATA <= I2S_SOUND_DATA_Reg; -- port stuff
  LED <= LED_Reg; -- port stuff
  i2sBitClock <= 'Z';
  i2sLeftRightSelect <= 'Z';
  i2sSoundData <= 'Z';
  isNoteOn <= 'Z';
  noteSampleTicks <= (others => 'Z');
  
--	MidiProcessor_inst : midiProcessor
--	port map(CLOCK_50, MIDI_RX, isNoteOn, noteSampleTicks, modulationValue);
	
--	Synthesizer_inst : synthesizer
--	port map(CLOCK_50, isNoteOn, noteSampleTicks, modulationValue, i2sBitClock, i2sSoundData, i2sLeftRightSelect);
  
--   i2sound_inst : i2sound
--	port map(CLOCK_50, KEY, LEDR, HEX0, HEX1, AUD_ADCDAT, AUD_ADCLRCK, AUD_BCLK, AUD_DACDAT, AUD_DACLRCK, AUD_XCK, FPGA_I2C_SCLK, FPGA_I2C_SDAT);
	
  -- Generated from always process in SoundModule (SoundModule-Copy.v:21)
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
	 
      I2S_BIT_CLOCK_Reg <= i2sBitClock;
      I2S_SOUND_DATA_Reg <= i2sSoundData;
      I2S_LEFT_RIGHT_SELECT_Reg <= i2sLeftRightSelect;
      if isNoteOn = '1' then
			LED_Reg <= noteSampleTicks(0 + 7 downto 0); -- LED_Reg <= noteSampleTicks(7 downto 0); 
      else
        LED_Reg <= X"00";
      end if;
		
    end if;
  end process;
end architecture;

