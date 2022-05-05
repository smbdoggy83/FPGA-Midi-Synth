library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Synthesizer_tb is -- A testbench usually has no ports
end Synthesizer_tb;

architecture tb of Synthesizer_tb is
	
	signal CLOCK_50, finished : std_logic := '0';
   signal i2sBitClock : std_logic;
   signal i2sLeftRightSelect : std_logic;
   signal i2sSoundData : std_logic;
   signal isNoteOn : std_logic := '0';
   signal modulationValue : unsigned(7 downto 0);
	signal noteSampleTicks : unsigned(23 downto 0);
	
begin

	CLOCK_50 <= not CLOCK_50 after 10ns when finished /= '1' else '0'; --20ns = 1/50MHz
	
	process
	begin
	
--		A <= x"0";
		finished <= '0';
		isNoteOn <= '0';
		wait for 10ns; -- sync with clock posedge
		wait for 20ns; -- wait an extra clock cycle to be safe
		
		isNoteOn <= '1';
		modulationValue <= X"00";
		noteSampleTicks <= X"15A973";
		
		wait for 160ns;
		
		modulationValue <= X"00";
		noteSampleTicks <= X"B48599";
		
		wait for 40ns;
		
		finished <= '1';
		wait;
	end process;
	
	uut : entity work.Synthesizer
	port map(
		CLOCK_50 => CLOCK_50,
		i2sBitClock => i2sBitClock,
		i2sLeftRightSelect => i2sLeftRightSelect,
		i2sSoundData => i2sSoundData,
		isNoteOn => isNoteOn,
		modulationValue => modulationValue,
		noteSampleTicks => noteSampleTicks
	);
end tb;
