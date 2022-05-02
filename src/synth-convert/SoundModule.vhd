-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SoundModule is
  port (
    CLOCK_50 : in std_logic;
    I2S_BIT_CLOCK : out std_logic;
    I2S_LEFT_RIGHT_SELECT : out std_logic;
    I2S_SOUND_DATA : out std_logic;
	 LED : out unsigned(7 downto 0);
    MIDI_RX : in std_logic
  );
end entity; 

architecture from_verilog of SoundModule is

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

  signal I2S_BIT_CLOCK_Reg : std_logic;
  signal I2S_LEFT_RIGHT_SELECT_Reg : std_logic;
  signal I2S_SOUND_DATA_Reg : std_logic;
--  signal LED_Reg : unsigned(7 downto 0);
	signal LED_Reg : unsigned(7 downto 0);
  signal i2sBitClock : std_logic;
  signal i2sLeftRightSelect : std_logic;
  signal i2sSoundData : std_logic;
  signal isNoteOn : std_logic;
--  signal noteSampleTicks : unsigned(23 downto 0);
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
  
  -- Instantiation of the MIDI processor and the synthesizer VHDL modules
	MidiProcessor_inst : midiProcessor
	port map(CLOCK_50, MIDI_RX, isNoteOn, noteSampleTicks, modulationValue);
	
	Synthesizer_inst : synthesizer
	port map(CLOCK_50, isNoteOn, noteSampleTicks, modulationValue, i2sBitClock, i2sSoundData, i2sLeftRightSelect);
  
  -- A process is initiated with the clock
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then --The following happens on the rising edge of the clock pulse:
      I2S_BIT_CLOCK_Reg <= i2sBitClock;--The I2S bit clock from the synthesizer is assigned to the bit clock register on the sound module
      I2S_SOUND_DATA_Reg <= i2sSoundData;--The I2S sound data from the synthesizer is assigned to the sound data register on the sound module
      I2S_LEFT_RIGHT_SELECT_Reg <= i2sLeftRightSelect;--The I2S life/right selest from the synthesizer is assigned to the left/right select on the sound module
      if isNoteOn = '1' then --The following happens when a note is on:
			LED_Reg <= noteSampleTicks(0 + 7 downto 0); -- LED_Reg <= noteSampleTicks(7 downto 0); --The note sample ticks are assigned to the LED register on the sound module
      else --If a note is not on:
        LED_Reg <= X"00";--The LED register is set to 0
      end if;
    end if;
  end process;
end architecture;

