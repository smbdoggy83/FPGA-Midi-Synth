library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MidiProcessor_tb is -- A testbench usually has no ports
end MidiProcessor_tb;

architecture tb of MidiProcessor_tb is
	
	signal CLOCK_50, finished : std_logic := '0';
	signal MIDI_RX : std_logic;
	signal isNoteOn : std_logic;
	signal modulationValue : unsigned(7 downto 0);
	signal noteSampleTicks : unsigned(23 downto 0);
	signal count : unsigned(2 downto 0);

	
begin

	CLOCK_50 <= not CLOCK_50 after 10ns when finished /= '1' else '0'; --20ns = 1/50MHz
	
	process
	begin
	
--		A <= x"0";
		finished <= '0';
		MIDI_RX <= '0';
		wait for 10ns;
		wait for 20ns; -- wait an extra clock cycle to be safe

		-- start message: 10010000 01000101 01100000	
			--1001: Note on
			--0000: channel (supposedly ignored for now)
			--01000101: frequency = 440
			--01100000: velocity = 96 (supposedly ignored for now)
			
		wait for 200ns; -- waiting for byteValue to initialize (likely due to debounce)
		
--		wait for 7ms; -- some other delay im not sure about

		MIDI_RX <= '1'; 
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '1';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '1';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '1';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '1';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '1';
		wait for 625us;
		
		MIDI_RX <= '1';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
		MIDI_RX <= '0';
		wait for 625us;
		
----------------------------------------------------------
		
		wait for 160ns;		
		
		finished <= '1';
		wait;
	end process;
	
	uut : entity work.MidiProcessor
	port map(
		CLOCK_50 => CLOCK_50,
		MIDI_RX => MIDI_RX,
		isNoteOn => isNoteOn,
		modulationValue => modulationValue,
		noteSampleTicks => noteSampleTicks
	);
end tb;
