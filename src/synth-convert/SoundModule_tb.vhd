library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SoundModule_tb is -- A testbench usually has no ports
end SoundModule_tb;

architecture tb of SoundModule_tb is
	
	signal CLOCK_50, finished : std_logic := '0';
	signal I2S_BIT_CLOCK : std_logic;
	signal I2S_LEFT_RIGHT_SELECT : std_logic;
	signal I2S_SOUND_DATA : std_logic;
	signal LED : unsigned(7 downto 0);
	signal MIDI_RX : std_logic;
	
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
							
		MIDI_RX <= '1';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '1';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '1';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '1';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '1';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '1';
		wait for 20ns;
		
		MIDI_RX <= '1';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		MIDI_RX <= '0';
		wait for 20ns;
		
		
		
		wait for 150ns;		
		
		finished <= '1';
		wait;
	end process;
	
	uut : entity work.SoundModule
	port map(
		CLOCK_50 => CLOCK_50,
		I2S_BIT_CLOCK => I2S_BIT_CLOCK,
		I2S_LEFT_RIGHT_SELECT => I2S_LEFT_RIGHT_SELECT,
		I2S_SOUND_DATA => I2S_SOUND_DATA,
		LED => LED,
		MIDI_RX => MIDI_RX
	);
end tb;
