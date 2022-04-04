-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module SoundModule (SoundModule.v:1)
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

-- Generated from Verilog module SoundModule (SoundModule.v:1)
architecture from_verilog of SoundModule is
  signal I2S_BIT_CLOCK_Reg : std_logic;
  signal I2S_LEFT_RIGHT_SELECT_Reg : std_logic;
  signal I2S_SOUND_DATA_Reg : std_logic;
  signal LED_Reg : unsigned(7 downto 0);
  signal i2sBitClock : std_logic;  -- Declared at SoundModule.v:10
  signal i2sLeftRightSelect : std_logic;  -- Declared at SoundModule.v:12
  signal i2sSoundData : std_logic;  -- Declared at SoundModule.v:11
  signal isNoteOn : std_logic;  -- Declared at SoundModule.v:14
  signal noteSampleTicks : unsigned(23 downto 0);  -- Declared at SoundModule.v:15
begin
  I2S_BIT_CLOCK <= I2S_BIT_CLOCK_Reg;
  I2S_LEFT_RIGHT_SELECT <= I2S_LEFT_RIGHT_SELECT_Reg;
  I2S_SOUND_DATA <= I2S_SOUND_DATA_Reg;
  LED <= LED_Reg;
  i2sBitClock <= 'Z';
  i2sLeftRightSelect <= 'Z';
  i2sSoundData <= 'Z';
  isNoteOn <= 'Z';
  noteSampleTicks <= (others => 'Z');
  
  -- Generated from always process in SoundModule (SoundModule.v:21)
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      I2S_BIT_CLOCK_Reg <= i2sBitClock;
      I2S_SOUND_DATA_Reg <= i2sSoundData;
      I2S_LEFT_RIGHT_SELECT_Reg <= i2sLeftRightSelect;
      if isNoteOn = '1' then
        LED_Reg <= noteSampleTicks(0 + 7 downto 0);
      else
        LED_Reg <= X"00";
      end if;
    end if;
  end process;
end architecture;

