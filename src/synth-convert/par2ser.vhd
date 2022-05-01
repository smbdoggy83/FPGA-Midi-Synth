------------------------------------------------------------------
-- Name		   : par2ser.vhd
-- Description : Parallel to serial converter
-- Designed by : Claudio Avi Chami - FPGA Site
-- Date        : 26/03/2016
-- Version     : 01
------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity par2ser is
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
end par2ser;


architecture rtl of par2ser is
	constant CNT_W  : natural := integer(ceil(log2(real(DATA_W))));	-- calculate needed width of internal counter
	signal cnt 		: unsigned (CNT_W-1 downto 0);
	signal reg 		: std_logic_vector (DATA_W-1 downto 0);
	signal frame_s 	: std_logic_vector (1 downto 0);
	signal frame_i 	: std_logic;

begin 

par2ser_pr: process (clk, rst) 
	begin 
    if (rst = '1') then 
        reg 	<= (others => '0');
        cnt 	<= (others => '1');
    elsif (rising_edge(clk)) then
		if (load = '1') then				-- load parallel register
			reg		<= data_in;
			cnt 	<= to_unsigned(DATA_W-1, cnt'length);
		else
			if (cnt > 0) then				-- all data bits transferred?
				cnt		<= cnt - 1;			
			end if;	
		end if;	
    end if;
end process;

data_out <= reg(to_integer(cnt));

-- generate single clock pulse for frame
frame_pr: process (clk, rst) 
	begin 
    if (rst = '1') then 
        frame_s(1)	<= '1';
    elsif (rising_edge(clk)) then
		frame_s(1)	<= frame_s(0);		
    end if;
end process;

frame_s(0) <= '1' when (cnt = 0) else '0';
frame_i <= '1' when frame_s = "01" else '0';
busy  <= '1' when (cnt > 0) or frame_i='1' else '0';
frame <= frame_i;

end rtl;

