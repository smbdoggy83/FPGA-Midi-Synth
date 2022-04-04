-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module SampleMixer (SampleMixer.v:1)
entity SampleMixer is
  port (
    modulationValue : in unsigned(7 downto 0);
    renderedSample : out unsigned(15 downto 0);
    sample0 : in unsigned(15 downto 0);
    sample1 : in unsigned(15 downto 0);
    sample2 : in unsigned(15 downto 0)
  );
end entity; 

-- Generated from Verilog module SampleMixer (SampleMixer.v:1)
architecture from_verilog of SampleMixer is
  signal tmp_ivl_0 : unsigned(15 downto 0);  -- Temporary created at SampleMixer.v:73
  signal mixSample0 : unsigned(15 downto 0) := X"0000";  -- Declared at SampleMixer.v:9
  signal mixSample1 : unsigned(15 downto 0) := X"0000";  -- Declared at SampleMixer.v:10
  signal mixSample2 : unsigned(15 downto 0) := X"0000";  -- Declared at SampleMixer.v:11
begin
  tmp_ivl_0 <= mixSample0 + mixSample1;
  renderedSample <= tmp_ivl_0 + mixSample2;
  -- Removed one empty process
  
  
  -- Generated from always process in SampleMixer (SampleMixer.v:13)
  process (modulationValue, sample2, sample1, sample0) is
  begin
    if sample0(15) = '1' then
      if Resize(((not sample0) + X"0001"), 32) > ((((not sample0) + X"0001") srl 6) * Resize(modulationValue, 16)) then
        mixSample0 <= Resize((not (Resize(((not sample0) + X"0001"), 32) - ((((not sample0) + X"0001") srl 6) * Resize(modulationValue, 16)))) + X"00000001", 16);
      else
        mixSample0 <= X"0000";
      end if;
    else
      if Resize(sample0, 32) > ((sample0 srl 6) * Resize(modulationValue, 16)) then
        mixSample0 <= Resize(Resize(sample0, 32) - ((sample0 srl 6) * Resize(modulationValue, 16)), 16);
      else
        mixSample0 <= X"0000";
      end if;
    end if;
    if sample1(15) = '1' then
      if Resize(modulationValue, 32) >= X"00000040" then
        if Resize(((not sample1) + X"0001"), 32) > ((((not sample1) + X"0001") srl 6) * (Resize(modulationValue, 16) - X"0040")) then
          mixSample1 <= Resize((not (Resize(((not sample1) + X"0001"), 32) - ((((not sample1) + X"0001") srl 6) * (Resize(modulationValue, 16) - X"0040")))) + X"00000001", 16);
        else
          mixSample1 <= X"0000";
        end if;
      else
        if Resize(((not sample1) + X"0001"), 32) > ((((not sample1) + X"0001") srl 6) * (X"0040" - Resize(modulationValue, 16))) then
          mixSample1 <= Resize((not (Resize(((not sample1) + X"0001"), 32) - ((((not sample1) + X"0001") srl 6) * (X"0040" - Resize(modulationValue, 16))))) + X"00000001", 16);
        else
          mixSample1 <= X"0000";
        end if;
      end if;
    else
      if Resize(modulationValue, 32) >= X"00000040" then
        if Resize(sample1, 32) > ((sample1 srl 6) * (Resize(modulationValue, 16) - X"0040")) then
          mixSample1 <= Resize(Resize(sample1, 32) - ((sample1 srl 6) * (Resize(modulationValue, 16) - X"0040")), 16);
        else
          mixSample1 <= X"0000";
        end if;
      else
        if Resize(sample1, 32) > ((sample1 srl 6) * (X"0040" - Resize(modulationValue, 16))) then
          mixSample1 <= Resize(Resize(sample1, 32) - ((sample1 srl 6) * (X"0040" - Resize(modulationValue, 16))), 16);
        else
          mixSample1 <= X"0000";
        end if;
      end if;
    end if;
    if sample2(15) = '1' then
      if Resize(((not sample2) + X"0001"), 32) > ((((not sample2) + X"0001") srl 6) * (X"007f" - Resize(modulationValue, 16))) then
        mixSample2 <= Resize((not (Resize(((not sample2) + X"0001"), 32) - ((((not sample2) + X"0001") srl 6) * (X"007f" - Resize(modulationValue, 16))))) + X"00000001", 16);
      else
        mixSample2 <= X"0000";
      end if;
    else
      if Resize(sample2, 32) > ((sample2 srl 6) * (X"007f" - Resize(modulationValue, 16))) then
        mixSample2 <= Resize(Resize(sample2, 32) - ((sample2 srl 6) * (X"007f" - Resize(modulationValue, 16))), 16);
      else
        mixSample2 <= X"0000";
      end if;
    end if;
  end process;
end architecture;

