-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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

--   i2sTicks = 18
architecture from_verilog of Synthesizer is

	component WaveTable0Rom
		port(
			address : in unsigned(7 downto 0); --waveTableIndex
			clock : in std_logic; --CLOCK_50
			q : out unsigned(15 downto 0) --waveTableSample0
		);
	end component;

	component WaveTable1Rom
		port(
			address : in unsigned(7 downto 0); --waveTableIndex
			clock : in std_logic; --CLOCK_50
			q : out unsigned(15 downto 0) --waveTableSample1
		);
	end component;
	
	component WaveTable2Rom
		port(
			address : in unsigned(7 downto 0); --waveTableIndex
			clock : in std_logic; --CLOCK_50
			q : out unsigned(15 downto 0) --waveTableSample2
		);
	end component;
	
	component SampleMixer
		port(
			sample0 : in unsigned(15 downto 0);
			sample1 : in unsigned(15 downto 0);
			sample2 : in unsigned(15 downto 0);
			modulationValue : in unsigned(7 downto 0);
			renderedSample : out unsigned(15 downto 0)
		);
	end component;
	
  signal i2sBitClock_Reg : std_logic;
  signal i2sLeftRightSelect_Reg : std_logic;
  signal i2sSoundData_Reg : std_logic;
  signal bitCount : unsigned(7 downto 0) := X"0f";
  signal i2sCount : unsigned(11 downto 0) := X"000"; 
  signal isSamplePlaying : std_logic := '0'; 
  signal isSoundPlaying : std_logic := '0';
  signal modulation : unsigned(7 downto 0) := X"00"; 
  signal noteSampleCount : unsigned(23 downto 0) := X"000000"; 
  signal renderedSample : unsigned(15 downto 0); 
  signal sampleIndex : unsigned(7 downto 0) := X"00";
  signal waveTableIndex : unsigned(7 downto 0) := X"00";

  -- The initiation of the wave table sample signals
  -- These are probably needed
  signal waveTableSample0 : unsigned(15 downto 0);
  signal waveTableSample1 : unsigned(15 downto 0);
  signal waveTableSample2 : unsigned(15 downto 0);

 begin
  i2sBitClock <= i2sBitClock_Reg;
  i2sLeftRightSelect <= i2sLeftRightSelect_Reg;
  i2sSoundData <= i2sSoundData_Reg;
  renderedSample <= (others => 'Z');
  -- Removed one empty process
  
  -- Instantiation of the wave table ROMs and the sample mixer for the synthesizer
  WaveTable0Rom_inst : WaveTable0Rom
  port map(waveTableIndex, CLOCK_50, waveTableSample0);

  WaveTable1Rom_inst : WaveTable1Rom
  port map(waveTableIndex, CLOCK_50, waveTableSample1);
  
  WaveTable2Rom_inst : WaveTable2Rom
  port map(waveTableIndex, CLOCK_50, waveTableSample2);
  
  SampleMixer_inst : SampleMixer
  port map(waveTableSample0, waveTableSample1, waveTableSample2, modulation, renderedSample);
  
  -- A process is initiated with the clock 
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then --The following happens on the rising edge of the clock pulse:
      i2sCount <= i2sCount + X"001";--The count of the I2S is incremented on each rising edge clock pulse
      if i2sCount = X"012" then
        i2sCount <= X"000";--The I2S count resets once it reached 12 and loops
        i2sBitClock_Reg <= not i2sBitClock_Reg;
        if i2sBitClock_Reg = '1' then --The following happens when the bit clock register in the I2S is enabled:
          if isSoundPlaying = '1' then --The following will happen when a sound is playing:
            i2sSoundData_Reg <= renderedSample(To_Integer(bitCount)); --When sound is playing through the I2S, then the rendered sample from the sample mixer will be assigned to the sound data register in the I2S.
          else
            i2sSoundData_Reg <= '0';--When sound is not playing, the sound data register is not enabled.
          end if;
          if Resize(bitCount, 32) = X"00000000" then
            i2sLeftRightSelect_Reg <= not i2sLeftRightSelect_Reg;--The Left/Right Select in the I2S is logically NOT if the resized string is 0.
            bitCount <= X"0f";
            if i2sLeftRightSelect_Reg = '1' then --The following will happen when Left/Right Select is enabled:
              waveTableIndex <= sampleIndex;--The index of samples will be assigned to the index of the wave tables initialized
              modulation <= modulationValue;--The values for modulation will be assigned to the modulation variable
              isSoundPlaying <= isSamplePlaying;--If the sample is playing, that information will also be assigned to when the sound is playing
            end if;
          else
            bitCount <= bitCount - X"01"; --The bit count is reduced by one when the resized data word is not 0
          end if;
        end if;
      end if;
      noteSampleCount <= noteSampleCount + X"000001";--The count of the note sample is incremented on each rising edge clock pulse
      if noteSampleCount >= noteSampleTicks then
        noteSampleCount <= X"000000";--The sample count is set to 0 when the sample count is greater than the number of sample ticks
        if isSamplePlaying = '1' then --The following will happen when a sample is playing:
          sampleIndex <= sampleIndex + X"01";--The sample index is incremented 
        else
          sampleIndex <= X"00";--The sample index will be 0 when a sample is not playing
        end if;
        if isNoteOn = '1' then --The following will happen when a note is activated:
          isSamplePlaying <= '1';--A sample will be played
        else
          if sampleIndex = X"00" then --The following will happen when the sample index is set to 0:
            isSamplePlaying <= '0';--A sample will not be played
          end if;
        end if;
      end if;
    end if;
  end process;
end architecture;

