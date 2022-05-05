-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WaveTable2Rom is
  port (
    address : in unsigned(7 downto 0);
    clock : in std_logic;
    q : out unsigned(15 downto 0)
  );
end entity; 

architecture from_verilog of WaveTable2Rom is
begin
  q <= (others => 'Z');
end architecture;

