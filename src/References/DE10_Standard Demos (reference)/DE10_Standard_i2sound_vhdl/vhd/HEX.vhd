-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module HEX (HEX.v:1)
entity HEX is
  port (
    hex : in unsigned(3 downto 0);
    hex_fps : out unsigned(6 downto 0)
  );
end entity; 

-- Generated from Verilog module HEX (HEX.v:1)
architecture from_verilog of HEX is
  signal tmp_ivl_0 : unsigned(3 downto 0);  -- Temporary created at HEX.v:7
  signal tmp_ivl_10 : unsigned(6 downto 0);  -- Temporary created at HEX.v:8
  signal tmp_ivl_12 : unsigned(3 downto 0);  -- Temporary created at HEX.v:9
  signal tmp_ivl_14 : std_logic;  -- Temporary created at HEX.v:9
  signal tmp_ivl_16 : unsigned(6 downto 0);  -- Temporary created at HEX.v:9
  signal tmp_ivl_18 : unsigned(3 downto 0);  -- Temporary created at HEX.v:10
  signal tmp_ivl_2 : std_logic;  -- Temporary created at HEX.v:7
  signal tmp_ivl_20 : std_logic;  -- Temporary created at HEX.v:10
  signal tmp_ivl_22 : unsigned(6 downto 0);  -- Temporary created at HEX.v:10
  signal tmp_ivl_24 : unsigned(3 downto 0);  -- Temporary created at HEX.v:11
  signal tmp_ivl_26 : std_logic;  -- Temporary created at HEX.v:11
  signal tmp_ivl_28 : unsigned(6 downto 0);  -- Temporary created at HEX.v:11
  signal tmp_ivl_30 : unsigned(3 downto 0);  -- Temporary created at HEX.v:12
  signal tmp_ivl_32 : std_logic;  -- Temporary created at HEX.v:12
  signal tmp_ivl_34 : unsigned(6 downto 0);  -- Temporary created at HEX.v:12
  signal tmp_ivl_36 : unsigned(3 downto 0);  -- Temporary created at HEX.v:13
  signal tmp_ivl_38 : std_logic;  -- Temporary created at HEX.v:13
  signal tmp_ivl_4 : unsigned(6 downto 0);  -- Temporary created at HEX.v:7
  signal tmp_ivl_40 : unsigned(6 downto 0);  -- Temporary created at HEX.v:13
  signal tmp_ivl_42 : unsigned(3 downto 0);  -- Temporary created at HEX.v:14
  signal tmp_ivl_44 : std_logic;  -- Temporary created at HEX.v:14
  signal tmp_ivl_46 : unsigned(6 downto 0);  -- Temporary created at HEX.v:14
  signal tmp_ivl_48 : unsigned(3 downto 0);  -- Temporary created at HEX.v:15
  signal tmp_ivl_50 : std_logic;  -- Temporary created at HEX.v:15
  signal tmp_ivl_52 : unsigned(6 downto 0);  -- Temporary created at HEX.v:15
  signal tmp_ivl_54 : unsigned(6 downto 0);  -- Temporary created at HEX.v:16
  signal tmp_ivl_56 : unsigned(6 downto 0);  -- Temporary created at HEX.v:15
  signal tmp_ivl_58 : unsigned(6 downto 0);  -- Temporary created at HEX.v:14
  signal tmp_ivl_6 : unsigned(3 downto 0);  -- Temporary created at HEX.v:8
  signal tmp_ivl_60 : unsigned(6 downto 0);  -- Temporary created at HEX.v:13
  signal tmp_ivl_62 : unsigned(6 downto 0);  -- Temporary created at HEX.v:12
  signal tmp_ivl_64 : unsigned(6 downto 0);  -- Temporary created at HEX.v:11
  signal tmp_ivl_66 : unsigned(6 downto 0);  -- Temporary created at HEX.v:10
  signal tmp_ivl_68 : unsigned(6 downto 0);  -- Temporary created at HEX.v:9
  signal tmp_ivl_70 : unsigned(6 downto 0);  -- Temporary created at HEX.v:8
  signal tmp_ivl_8 : std_logic;  -- Temporary created at HEX.v:8
begin
  tmp_ivl_2 <= '1' when hex = tmp_ivl_0 else '0';
  tmp_ivl_8 <= '1' when hex = tmp_ivl_6 else '0';
  tmp_ivl_14 <= '1' when hex = tmp_ivl_12 else '0';
  tmp_ivl_20 <= '1' when hex = tmp_ivl_18 else '0';
  tmp_ivl_26 <= '1' when hex = tmp_ivl_24 else '0';
  tmp_ivl_32 <= '1' when hex = tmp_ivl_30 else '0';
  tmp_ivl_38 <= '1' when hex = tmp_ivl_36 else '0';
  tmp_ivl_44 <= '1' when hex = tmp_ivl_42 else '0';
  tmp_ivl_50 <= '1' when hex = tmp_ivl_48 else '0';
  tmp_ivl_56 <= tmp_ivl_52 when tmp_ivl_50 = '1' else tmp_ivl_54;
  tmp_ivl_58 <= tmp_ivl_46 when tmp_ivl_44 = '1' else tmp_ivl_56;
  tmp_ivl_60 <= tmp_ivl_40 when tmp_ivl_38 = '1' else tmp_ivl_58;
  tmp_ivl_62 <= tmp_ivl_34 when tmp_ivl_32 = '1' else tmp_ivl_60;
  tmp_ivl_64 <= tmp_ivl_28 when tmp_ivl_26 = '1' else tmp_ivl_62;
  tmp_ivl_66 <= tmp_ivl_22 when tmp_ivl_20 = '1' else tmp_ivl_64;
  tmp_ivl_68 <= tmp_ivl_16 when tmp_ivl_14 = '1' else tmp_ivl_66;
  tmp_ivl_70 <= tmp_ivl_10 when tmp_ivl_8 = '1' else tmp_ivl_68;
  hex_fps <= tmp_ivl_4 when tmp_ivl_2 = '1' else tmp_ivl_70;
  tmp_ivl_0 <= X"0";
  tmp_ivl_10 <= "1111001";
  tmp_ivl_12 <= X"2";
  tmp_ivl_16 <= "0100100";
  tmp_ivl_18 <= X"3";
  tmp_ivl_22 <= "0110000";
  tmp_ivl_24 <= X"4";
  tmp_ivl_28 <= "0011001";
  tmp_ivl_30 <= X"5";
  tmp_ivl_34 <= "0010010";
  tmp_ivl_36 <= X"6";
  tmp_ivl_4 <= "1000000";
  tmp_ivl_40 <= "0000010";
  tmp_ivl_42 <= X"7";
  tmp_ivl_46 <= "1111000";
  tmp_ivl_48 <= X"8";
  tmp_ivl_52 <= "0000000";
  tmp_ivl_54 <= "0010000";
  tmp_ivl_6 <= X"1";
end architecture;

