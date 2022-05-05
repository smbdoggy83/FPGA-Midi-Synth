library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity parallel2serial_tb is -- A testbench usually has no ports
end parallel2serial_tb;

architecture tb of parallel2serial_tb is
	
	signal i_clk, finished, i_rstb, i_data_ena : std_logic := '0';
	signal i_data : std_logic_vector(23 downto 0);
	signal o_data_valid, o_data, o_error_serialize_pulse : std_logic;
	
begin

	i_clk <= not i_clk after 10ns when finished /= '1' else '0'; --20ns = 1/50MHz
	
	process
	begin
	
--		A <= x"0";
		finished <= '0';
		i_rstb <= '0';
		i_data_ena <= '0';
		
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

		i_data_ena <= '1';
		i_data <= "100100000100010101000000"; 
		
		wait for 20ns;
		i_data_ena <= '0';

		
----------------------------------------------------------
		
		wait for 200us;
		
		finished <= '1';
		wait;
	end process;
	
	uut : entity work.parallel2serial
	port map(
		i_clk => i_clk,
		i_rstb => i_rstb,
		i_data_ena => i_data_ena,
		i_data => i_data,
		o_data_valid => o_data_valid,
		o_data => o_data,
		o_error_serialize_pulse => o_error_serialize_pulse
	);
	
end tb;
