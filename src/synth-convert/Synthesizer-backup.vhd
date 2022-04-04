library ieee;
use ieee.std_logic_1164.all;

-- Synthesizer

entity Synthesizer is 
port(
			CLOCK_50, isNoteOn : in std_logic;
			noteSampleTicks : in std_logic_vector(23 downto 0);
			modulationValue : in std_logic_vector(7 downto 0);
			i2sBitClock, i2sSoundData, i2sLeftRightSelect : out std_logic);
end Synthesizer;

architecture imp of Synthesizer is

	-- might need to be moved down to "begin" block
	SIGNAL i2sCount : std_logic_vector(11 downto 0) := "000000000000";
	SIGNAL noteSampleCount : std_logic_vector(23 downto 0) := "000000000000000000000000";
	SIGNAL bitCount : std_logic_vector(7 downto 0) := "00001111"; --15
	SIGNAL sampleIndex, waveTableIndex, modulation : std_logic_vector(7 downto 0) := "00000000";
	SIGNAL isSamplePlaying, isSoundPlaying : std_logic := '0';

	SIGNAL waveTableSample0, waveTableSample1, waveTableSample2, renderedSample : std_logic_vector(15 downto 0);

	
begin

	process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
--			i2sCount <= i2sCount + 1;
			
			
			
		end if;
	end process;


end imp;