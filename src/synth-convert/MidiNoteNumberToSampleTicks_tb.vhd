library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MidiNoteNumberToSampleTicks_tb is -- A testbench usually has no ports
end MidiNoteNumberToSampleTicks_tb;

architecture tb of MidiNoteNumberToSampleTicks_tb is
	
--	signal finished : std_logic := '0';
	signal midiNoteNumber : unsigned(7 downto 0);
	signal noteSampleTicks : unsigned(23 downto 0);
	
begin

--	CLOCK_50 <= not CLOCK_50 after 10ns when finished /= '1' else '0'; --20ns = 1/50MHz
	
	process
	begin
	
--		A <= x"0";
--		finished <= '0';
		midiNoteNumber <= X"00";
		wait for 10ns; -- sync with clock posedge
		wait for 20ns; -- wait an extra clock cycle to be safe
		
		midiNoteNumber <= X"07";
		
		wait for 160ns;
		
		midiNoteNumber <= X"1c";
		
		wait for 160ns;
		
		midiNoteNumber <= X"6e";
		
		wait for 40ns;
		
--		finished <= '1';
		wait;
	end process;
	
	uut : entity work.MidiNoteNumberToSampleTicks
	port map(
		midiNoteNumber => midiNoteNumber,
		noteSampleTicks => noteSampleTicks
	);
end tb;
