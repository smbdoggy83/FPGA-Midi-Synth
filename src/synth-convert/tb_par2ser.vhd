------------------------------------------------------------------
-- Name		   : tb_par2ser.vhd
-- Description : Testbench for par2ser.vhd
-- Designed by : Claudio Avi Chami - FPGA Site
-- Date        : 26/03/2016
-- Version     : 01
------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
	use ieee.numeric_std.ALL;
    
entity tb_par2ser is
end entity;

architecture test of tb_par2ser is

    constant PERIOD  : time   := 20 ns;
    constant DATA_W  : natural := 24;
	
    signal clk       : std_logic := '0';
    signal rst       : std_logic := '1';
    signal load      : std_logic := '0';
    signal busy      : std_logic ;
    signal data_in   : std_logic_vector (23 downto 0);
    signal endSim	 : boolean   := false;
	 signal data_out : std_logic;
	 signal frame : std_logic;

    component par2ser  is
	generic (
		DATA_W		: natural := 8
	);
	port (
		clk: 		in std_logic;
		rst: 		in std_logic;
		
		-- inputs
		data_in:	in std_logic_vector (DATA_W-1 downto 0);
		load: 		in std_logic;
		
		-- outputs
		data_out: 	out std_logic;
		busy:		out std_logic;
		frame:		out std_logic
	);
    end component;
    

begin
    clk     <= not clk after PERIOD/2;
    rst     <= '0' after  PERIOD*10;

	-- Main simulation process
	process 
	begin
	
		wait until (rst = '0');
		wait until (rising_edge(clk));

		data_in <= x"aaaaaa";
		load	<= '1';
		wait until (rising_edge(clk));
		load	<= '0';
		wait until (rising_edge(clk));
		wait until (busy = '0');
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));

		
		data_in <= x"bbbbbb";
		load	<= '1';
		wait until (rising_edge(clk));
		load	<= '0';
		wait until (rising_edge(clk));
		wait until (busy = '0');
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));

		
		wait until (rising_edge(clk));

		data_in <= "100100000100010101100000";
		load	<= '1';
		wait until (rising_edge(clk));
		load	<= '0';
		wait until (rising_edge(clk));
		wait until (busy = '0');
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));
		wait until (rising_edge(clk));

		endSim  <= true;

	end	process;	
		
	-- End the simulation
	process 
	begin
		if (endSim) then
			assert false 
				report "End of simulation." 
				severity failure; 
		end if;
		wait until (rising_edge(clk));
	end process;	

    par2ser_inst : par2ser
    generic map (
		DATA_W	 => DATA_W
	)
    port map (
        clk      => clk,
        rst	     => rst,
		
        data_in  => data_in,
        load     => load,
		
        data_out => data_out,
        busy     => busy,
		frame	 => frame
    );

end architecture;