library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MidiByteReader_tb is -- A testbench usually has no ports
end MidiByteReader_tb;

architecture tb of MidiByteReader_tb is
	
	signal CLOCK_50, finished : std_logic := '0';
	signal MIDI_RX : std_logic;
	signal byteValue : unsigned(7 downto 0);
	signal isByteAvailable : std_logic;
	
begin

	CLOCK_50 <= not CLOCK_50 after 10ns when finished /= '1' else '0'; --20ns = 1/50MHz
	
	process
	begin
	
--		A <= x"0";
		finished <= '0';
		MIDI_RX <= '0';
		wait for 10ns; -- sync with clock posedge
		wait for 20ns; -- wait an extra clock cycle to be safe

		wait for 200ns; -- waiting for byteValue to initialize (debounce countdown)
		wait for 200us; -- to be extra safe
		
		-- measured distance = 1202030ns - 913740ns = 288340ns = 288.34us
		-- previously 625us
		
		-- example message: 10010000 01000101 01100000	
			--1001: Note on 
			--0000: channel (supposedly ignored for now)
			--01000101: frequency = 440
			--01100000: velocity = 96 (supposedly ignored for now)

		MIDI_RX <= '1'; 
		wait for 288.34us;

		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '1';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '1';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '1';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '1';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '1';
		wait for 288.34us;
		
		MIDI_RX <= '1';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;
		
		MIDI_RX <= '0';
		wait for 288.34us;

----------------------------------------------------------
		
		wait for 200us;
		
		finished <= '1';
		wait;
	end process;
	
	uut : entity work.MidiByteReader
	port map(
		CLOCK_50 => CLOCK_50,
		MIDI_RX => MIDI_RX,
		byteValue => byteValue,
		isByteAvailable => isByteAvailable
	);
end tb;
