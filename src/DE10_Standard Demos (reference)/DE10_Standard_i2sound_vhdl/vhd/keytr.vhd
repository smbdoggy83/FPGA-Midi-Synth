-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module keytr (keytr_new.v:47)
entity keytr is
  port (
    KEY0_EDGE : out std_logic;
    ON_sig : out std_logic;
    clock : in std_logic;
    counter : out unsigned(9 downto 0);
    key0 : in std_logic;
    rst_n : in std_logic
  );
end entity; 

-- Generated from Verilog module keytr (keytr_new.v:47)
architecture from_verilog of keytr is
  signal counter_Reg : unsigned(9 downto 0);
  signal D1 : std_logic;  -- Declared at keytr_new.v:102
  signal D2 : std_logic;  -- Declared at keytr_new.v:103
  signal tmp_ivl_0 : unsigned(3 downto 0);  -- Temporary created at keytr_new.v:115
  signal tmp_ivl_11 : std_logic;  -- Temporary created at keytr_new.v:150
  signal tmp_ivl_2 : std_logic;  -- Temporary created at keytr_new.v:115
  signal tmp_ivl_4 : std_logic;  -- Temporary created at keytr_new.v:115
  signal tmp_ivl_6 : std_logic;  -- Temporary created at keytr_new.v:115
  signal delay : unsigned(15 downto 0);  -- Declared at keytr_new.v:101
  signal falling_edg : std_logic;  -- Declared at keytr_new.v:104
  signal flag : std_logic;  -- Declared at keytr_new.v:100
  signal flag_temp : unsigned(3 downto 0);  -- Declared at keytr_new.v:99
begin
  counter <= counter_Reg;
  KEY0_EDGE <= D1 or tmp_ivl_11;
  tmp_ivl_2 <= '1' when flag_temp = tmp_ivl_0 else '0';
  falling_edg <= tmp_ivl_4 when tmp_ivl_2 = '1' else tmp_ivl_6;
  tmp_ivl_11 <= not D2;
  ON_sig <= 'Z';
  tmp_ivl_0 <= X"3";
  tmp_ivl_4 <= '1';
  tmp_ivl_6 <= '0';
  
  -- Generated from always process in keytr (keytr_new.v:108)
  process (clock) is
  begin
    if falling_edge(clock) then
      if flag = '1' then
        flag_temp <= key0 & flag_temp(1 + 2 downto 1);
      end if;
    end if;
  end process;
  
  -- Generated from always process in keytr (keytr_new.v:119)
  process (clock, rst_n) is
  begin
    if (not rst_n) = '1' then
      flag <= '1';
    elsif rising_edge(clock) then
      if delay = X"1000" then
        flag <= '1';
      else
        if falling_edg = '1' then
          flag <= '0';
        end if;
      end if;
    end if;
  end process;
  
  -- Generated from always process in keytr (keytr_new.v:132)
  process (clock) is
  begin
    if rising_edge(clock) then
      if (not key0) = '1' then
        delay <= delay + X"0001";
      else
        delay <= X"0000";
      end if;
    end if;
  end process;
  
  -- Generated from always process in keytr (keytr_new.v:145)
  process (clock) is
  begin
    if falling_edge(clock) then
      D1 <= flag;
      D2 <= D1;
    end if;
  end process;
end architecture;

