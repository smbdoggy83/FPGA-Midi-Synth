-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module Synthesizer (Synthesizer-Copy.v:1)
--   i2sTicks = 18
entity Synthesizer is
  port (
    CLOCK_50 : in std_logic;
    i2sBitClock : out std_logic;
    i2sLeftRightSelect : out std_logic;
    i2sSoundData : out std_logic;
    isNoteOn : in std_logic;
    modulationValue : in unsigned(7 downto 0);
    noteSampleTicks : in unsigned(23 downto 0)
  );
end entity; 

-- Generated from Verilog module Synthesizer (Synthesizer-Copy.v:1)
--   i2sTicks = 18
architecture from_verilog of Synthesizer is
  signal i2sBitClock_Reg : std_logic;
  signal i2sLeftRightSelect_Reg : std_logic;
  signal i2sSoundData_Reg : std_logic;
  signal bitCount : unsigned(7 downto 0) := X"0f";  -- Declared at Synthesizer-Copy.v:16
  signal i2sCount : unsigned(11 downto 0) := X"000";  -- Declared at Synthesizer-Copy.v:14
  signal isSamplePlaying : std_logic := '0';  -- Declared at Synthesizer-Copy.v:20
  signal isSoundPlaying : std_logic := '0';  -- Declared at Synthesizer-Copy.v:21
  signal modulation : unsigned(7 downto 0) := X"00";  -- Declared at Synthesizer-Copy.v:19
  signal noteSampleCount : unsigned(23 downto 0) := X"000000";  -- Declared at Synthesizer-Copy.v:15
  signal renderedSample : unsigned(15 downto 0);  -- Declared at Synthesizer-Copy.v:26
  signal sampleIndex : unsigned(7 downto 0) := X"00";  -- Declared at Synthesizer-Copy.v:17
  signal waveTableIndex : unsigned(7 downto 0) := X"00";  -- Declared at Synthesizer-Copy.v:18
begin
  i2sBitClock <= i2sBitClock_Reg;
  i2sLeftRightSelect <= i2sLeftRightSelect_Reg;
  i2sSoundData <= i2sSoundData_Reg;
  renderedSample <= (others => 'Z');
  -- Removed one empty process
  
  
  -- Generated from always process in Synthesizer (Synthesizer-Copy.v:34)
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      i2sCount <= i2sCount + X"001";
      if i2sCount = X"012" then
        i2sCount <= X"000";
        i2sBitClock_Reg <= not i2sBitClock_Reg;
        if i2sBitClock_Reg = '1' then
          if isSoundPlaying = '1' then
            i2sSoundData_Reg <= renderedSample(To_Integer(bitCount));
          else
            i2sSoundData_Reg <= '0';
          end if;
          if Resize(bitCount, 32) = X"00000000" then
            i2sLeftRightSelect_Reg <= not i2sLeftRightSelect_Reg;
            bitCount <= X"0f";
            if i2sLeftRightSelect_Reg = '1' then
              waveTableIndex <= sampleIndex;
              modulation <= modulationValue;
              isSoundPlaying <= isSamplePlaying;
            end if;
          else
            bitCount <= bitCount - X"01";
          end if;
        end if;
      end if;
      noteSampleCount <= noteSampleCount + X"000001";
      if noteSampleCount >= noteSampleTicks then
        noteSampleCount <= X"000000";
        if isSamplePlaying = '1' then
          sampleIndex <= sampleIndex + X"01";
        else
          sampleIndex <= X"00";
        end if;
        if isNoteOn = '1' then
          isSamplePlaying <= '1';
        else
          if sampleIndex = X"00" then
            isSamplePlaying <= '0';
          end if;
        end if;
      end if;
    end if;
  end process;
end architecture;

