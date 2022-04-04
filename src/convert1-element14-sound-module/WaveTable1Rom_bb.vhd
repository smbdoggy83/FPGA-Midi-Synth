-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module WaveTable1Rom (WaveTable1Rom_bb.v:34)
entity WaveTable1Rom is
  port (
    address : in unsigned(7 downto 0);
    clock : in std_logic;
    q : out unsigned(15 downto 0)
  );
end entity; 

-- Generated from Verilog module WaveTable1Rom (WaveTable1Rom_bb.v:34)
architecture from_verilog of WaveTable1Rom is
begin
  q <= (others => 'Z');
end architecture;

