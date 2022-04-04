-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module WaveTable0Rom (WaveTable0Rom_bb.v:34)
entity WaveTable0Rom is
  port (
    address : in unsigned(7 downto 0);
    clock : in std_logic;
    q : out unsigned(15 downto 0)
  );
end entity; 

-- Generated from Verilog module WaveTable0Rom (WaveTable0Rom_bb.v:34)
architecture from_verilog of WaveTable0Rom is
begin
  q <= (others => 'Z');
end architecture;

