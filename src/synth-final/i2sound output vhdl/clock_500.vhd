-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module CLOCK_500 (clock_500.v:45)
entity CLOCK_500 is -- Handles volume control
  port (
    CLOCK : in std_logic;
    CLOCK_2 : out std_logic;
    CLOCK_500_sig : out std_logic;
    DATA : out unsigned(23 downto 0);
    END_sig : in std_logic;
    GO : out std_logic;
    KEY0_EDGE : in std_logic; -- edge of button, usually negative edge
    level_vol : out unsigned(3 downto 0);
    rst_n : in std_logic
  );
end entity; 

-- Generated from Verilog module CLOCK_500 (clock_500.v:45)
architecture from_verilog of CLOCK_500 is
  signal COUNTER_500 : unsigned(10 downto 0);  -- Declared at clock_500.v:72
  signal DATA_A : unsigned(15 downto 0);  -- Declared at clock_500.v:74
  type ROM_Type is array (8 downto 0) of unsigned(15 downto 0);
  signal ROM : ROM_Type;  -- Declared at clock_500.v:73
  signal tmp_ivl_10 : std_logic;  -- Temporary created at clock_500.v:84
  signal tmp_ivl_12 : unsigned(31 downto 0);  -- Temporary created at clock_500.v:84
  signal tmp_ivl_15 : unsigned(30 downto 0);  -- Temporary created at clock_500.v:84
  signal tmp_ivl_16 : unsigned(31 downto 0);  -- Temporary created at clock_500.v:84
  signal tmp_ivl_18 : std_logic;  -- Temporary created at clock_500.v:84
  signal tmp_ivl_21 : std_logic;  -- Temporary created at clock_500.v:84
  signal tmp_ivl_23 : std_logic;  -- Temporary created at clock_500.v:84
  signal tmp_ivl_24 : unsigned(1 downto 0);  -- Temporary created at clock_500.v:84
  signal tmp_ivl_27 : std_logic;  -- Temporary created at clock_500.v:84
  signal tmp_ivl_28 : unsigned(1 downto 0);  -- Temporary created at clock_500.v:84
  signal tmp_ivl_30 : unsigned(1 downto 0);  -- Temporary created at clock_500.v:84
  signal tmp_ivl_34 : unsigned(31 downto 0);  -- Temporary created at clock_500.v:122
  signal tmp_ivl_37 : unsigned(26 downto 0);  -- Temporary created at clock_500.v:122
  signal tmp_ivl_38 : unsigned(31 downto 0);  -- Temporary created at clock_500.v:122
  signal tmp_ivl_4 : unsigned(7 downto 0);  -- Temporary created at clock_500.v:83
  signal tmp_ivl_40 : unsigned(31 downto 0);  -- Temporary created at clock_500.v:122
  signal tmp_ivl_42 : unsigned(31 downto 0);  -- Temporary created at clock_500.v:122
  signal tmp_ivl_44 : unsigned(31 downto 0);  -- Temporary created at clock_500.v:122
  signal tmp_ivl_48 : unsigned(7 downto 0);  -- Temporary created at clock_500.v:123
  signal tmp_ivl_51 : unsigned(2 downto 0);  -- Temporary created at clock_500.v:123
  signal tmp_ivl_52 : unsigned(7 downto 0);  -- Temporary created at clock_500.v:123
  signal tmp_ivl_54 : unsigned(7 downto 0);  -- Temporary created at clock_500.v:123
  signal tmp_ivl_8 : unsigned(5 downto 0);  -- Temporary created at clock_500.v:84
  signal address : unsigned(5 downto 0);  -- Declared at clock_500.v:75
  signal vol : unsigned(4 downto 0);  -- Declared at clock_500.v:107
  signal volume : unsigned(6 downto 0);  -- Declared at clock_500.v:108
begin
  tmp_ivl_21 <= tmp_ivl_10 and tmp_ivl_18;
  CLOCK_500_sig <= COUNTER_500(9);
  CLOCK_2 <= COUNTER_500(1);
  DATA <= tmp_ivl_4 & DATA_A; -- slave address + sub_address + register_data
  tmp_ivl_10 <= '1' when tmp_ivl_8 >= address else '0';
  tmp_ivl_12 <= tmp_ivl_15 & END_sig;
  tmp_ivl_18 <= '1' when tmp_ivl_12 = tmp_ivl_16 else '0';
  tmp_ivl_23 <= COUNTER_500(10);
  tmp_ivl_24 <= tmp_ivl_27 & tmp_ivl_23;
  tmp_ivl_30 <= tmp_ivl_24 when tmp_ivl_21 = '1' else tmp_ivl_28;
  GO <= tmp_ivl_30(0);
  tmp_ivl_34 <= tmp_ivl_37 & vol;
  tmp_ivl_40 <= tmp_ivl_34 - tmp_ivl_38;
  tmp_ivl_44 <= tmp_ivl_40 / tmp_ivl_42;
  level_vol <= tmp_ivl_44(0 + 3 downto 0);
  tmp_ivl_48 <= tmp_ivl_51 & vol;
  tmp_ivl_54 <= tmp_ivl_48 + tmp_ivl_52;
  volume <= tmp_ivl_54(0 + 6 downto 0);
  tmp_ivl_15 <= "0000000000000000000000000000000";
  tmp_ivl_16 <= X"00000001";
  tmp_ivl_27 <= '0';
  tmp_ivl_28 <= "01";
  tmp_ivl_37 <= "000000000000000000000000000";
  tmp_ivl_38 <= X"00000004";
  tmp_ivl_4 <= X"34";
  tmp_ivl_42 <= X"00000003";
  tmp_ivl_51 <= "000";
  tmp_ivl_52 <= X"60";
  tmp_ivl_8 <= "001000";
  
---------------------------------------
-- Structural Coding
---------------------------------------
-- In this section, blocks of code had to be copied and pasted since VHDL doesn't support detection of multiple signals at once. 
  
  
  
  -- Generated from always process in CLOCK_500 (clock_500.v:89)
  process (CLOCK) is
  begin
    if rising_edge(CLOCK) then
      COUNTER_500 <= COUNTER_500 + "00000000001";
    end if;
  end process;
  
  -- Generated from always process in CLOCK_500 (clock_500.v:95)
  process (KEY0_EDGE, END_sig)
  begin
  
    if (falling_edge(KEY0_EDGE)) then --    wait until falling_edge(KEY0_EDGE) or rising_edge(END_sig);
	
		 if (not KEY0_EDGE) = '1' then
			address <= "000000";
		 else
			if address <= "001000" then
			  address <= address + "000001";
			end if;
		 end if;
	 
	 elsif (rising_edge(END_sig)) then
	     if (not KEY0_EDGE) = '1' then
			address <= "000000";
		 else
			if address <= "001000" then
			  address <= address + "000001";
			end if;
		 end if;
	 
	 end if; -- falling edge rising edge
	 
  end process;
  
  -- Generated from always process in CLOCK_500 (clock_500.v:110)
  process (rst_n, KEY0_EDGE)
  begin
  
--the volume level, level 0 to level 9,
--the higher the level, the greater the sound
  
	 if (falling_edge(rst_n)) then --    wait until falling_edge(rst_n) or falling_edge(KEY0_EDGE);
		 if (not rst_n) = '1' then 
			vol <= "11111"; -- Reset volume on reset button
		 else
			if vol = "00100" then
			  vol <= "11111"; -- Reset volume to 9 if at 0 and button is pressed again
			else
			  if (not KEY0_EDGE) = '1' then
				 vol <= vol - "00011"; -- Decrease volume
			  end if;
			end if;
		 end if;
	 
	 end if; -- falling edge falling edge
	 
	 if (falling_edge(KEY0_EDGE)) then --    wait until falling_edge(rst_n) or falling_edge(KEY0_EDGE);
		 if (not rst_n) = '1' then
			vol <= "11111";
		 else
			if vol = "00100" then
			  vol <= "11111";
			else
			  if (not KEY0_EDGE) = '1' then
				 vol <= vol - "00011";
			  end if;
			end if;
		 end if;
	 
	 end if; -- falling edge falling edge

  end process;
  
  -- Generated from always process in CLOCK_500 (clock_500.v:126)
  process 
  begin
    wait until rising_edge(END_sig);
    ROM(0) <= X"0c00"; -- power down
    ROM(1) <= X"0ec2"; -- master
    ROM(2) <= X"0838"; -- sound selet
    ROM(3) <= X"1000"; -- mclk
    ROM(4) <= X"0017"; -- ROM[4]= 16'h1e00; -- reset
    ROM(5) <= X"0217";
    ROM(6) <= X"04" & '0' & volume; -- left channel headphone output volume
    ROM(7) <= X"06" & '0' & volume; -- right channel headphone output volume
    ROM(8) <= X"1201";
--    wait for 0 ns;  -- Read target of blocking assignment (clock_500.v:141)
    DATA_A <= ROM(To_Integer(address)); -- active
  end process;
end architecture;

