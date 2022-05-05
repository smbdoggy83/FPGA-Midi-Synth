library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SampleMixer_tb is -- A testbench usually has no ports
end SampleMixer_tb;

architecture tb of SampleMixer_tb is
	
	signal modulationValue : unsigned(7 downto 0);
	signal renderedSample : unsigned(15 downto 0);
	signal sample0 : unsigned(15 downto 0);
	signal sample1 : unsigned(15 downto 0);
	signal sample2 : unsigned(15 downto 0);	
	
begin

--	CLOCK_50 <= not CLOCK_50 after 10ns when finished /= '1' else '0'; --20ns = 1/50MHz
	
	process
	begin
	
--		A <= x"0";
		sample0 <= X"0000";
		sample1 <= X"FFFF";
		sample2 <= X"BBBB";
		modulationValue <= X"00";
		wait for 10ns; -- sync with clock posedge
		wait for 20ns; -- wait an extra clock cycle to be safe
		
		wait for 100ns;
		
		modulationValue <= X"78";

		wait for 100ns;
		
		modulationValue <= X"FF";
		
		wait for 40ns;
		
--		finished <= '1';
		wait;
	end process;
	
	uut : entity work.SampleMixer
	port map(
		modulationValue => modulationValue,
		renderedSample => renderedSample,
		sample0 => sample0,
		sample1 => sample1,
		sample2 => sample2
	);
end tb;
