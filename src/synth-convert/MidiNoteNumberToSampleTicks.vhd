-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module MidiNoteNumberToSampleTicks (MidiNoteNumberToSampleTicks.v:1)
entity MidiNoteNumberToSampleTicks is
  port (
    midiNoteNumber : in unsigned(7 downto 0);
    noteSampleTicks : out unsigned(23 downto 0)
  );
end entity; 

-- Generated from Verilog module MidiNoteNumberToSampleTicks (MidiNoteNumberToSampleTicks.v:1)
architecture from_verilog of MidiNoteNumberToSampleTicks is
  signal noteSampleTicks_Reg : unsigned(23 downto 0);
begin
  noteSampleTicks <= noteSampleTicks_Reg;
  
  -- Generated from always process in MidiNoteNumberToSampleTicks (MidiNoteNumberToSampleTicks.v:6)
  process (midiNoteNumber) is
  begin
    case midiNoteNumber is
      when X"00" =>
        noteSampleTicks_Reg <= X"005d51";
      when X"01" =>
        noteSampleTicks_Reg <= X"005814";
      when X"02" =>
        noteSampleTicks_Reg <= X"005322";
      when X"03" =>
        noteSampleTicks_Reg <= X"004e78";
      when X"04" =>
        noteSampleTicks_Reg <= X"004a10";
      when X"05" =>
        noteSampleTicks_Reg <= X"0045e8";
      when X"06" =>
        noteSampleTicks_Reg <= X"0041fc";
      when X"07" =>
        noteSampleTicks_Reg <= X"003e48";
      when X"08" =>
        noteSampleTicks_Reg <= X"003ac9";
      when X"09" =>
        noteSampleTicks_Reg <= X"00377c";
      when X"0a" =>
        noteSampleTicks_Reg <= X"00345f";
      when X"0b" =>
        noteSampleTicks_Reg <= X"00316e";
      when X"0c" =>
        noteSampleTicks_Reg <= X"002ea8";
      when X"0d" =>
        noteSampleTicks_Reg <= X"002c0a";
      when X"0e" =>
        noteSampleTicks_Reg <= X"002991";
      when X"0f" =>
        noteSampleTicks_Reg <= X"00273c";
      when X"10" =>
        noteSampleTicks_Reg <= X"002508";
      when X"11" =>
        noteSampleTicks_Reg <= X"0022f4";
      when X"12" =>
        noteSampleTicks_Reg <= X"0020fe";
      when X"13" =>
        noteSampleTicks_Reg <= X"001f24";
      when X"14" =>
        noteSampleTicks_Reg <= X"001d64";
      when X"15" =>
        noteSampleTicks_Reg <= X"001bbe";
      when X"16" =>
        noteSampleTicks_Reg <= X"001a2f";
      when X"17" =>
        noteSampleTicks_Reg <= X"0018b7";
      when X"18" =>
        noteSampleTicks_Reg <= X"001754";
      when X"19" =>
        noteSampleTicks_Reg <= X"001605";
      when X"1a" =>
        noteSampleTicks_Reg <= X"0014c8";
      when X"1b" =>
        noteSampleTicks_Reg <= X"00139e";
      when X"1c" =>
        noteSampleTicks_Reg <= X"001284";
      when X"1d" =>
        noteSampleTicks_Reg <= X"00117a";
      when X"1e" =>
        noteSampleTicks_Reg <= X"00107f";
      when X"1f" =>
        noteSampleTicks_Reg <= X"000f92";
      when X"20" =>
        noteSampleTicks_Reg <= X"000eb2";
      when X"21" =>
        noteSampleTicks_Reg <= X"000ddf";
      when X"22" =>
        noteSampleTicks_Reg <= X"000d17";
      when X"23" =>
        noteSampleTicks_Reg <= X"000c5b";
      when X"24" =>
        noteSampleTicks_Reg <= X"000baa";
      when X"25" =>
        noteSampleTicks_Reg <= X"000b02";
      when X"26" =>
        noteSampleTicks_Reg <= X"000a64";
      when X"27" =>
        noteSampleTicks_Reg <= X"0009cf";
      when X"28" =>
        noteSampleTicks_Reg <= X"000942";
      when X"29" =>
        noteSampleTicks_Reg <= X"0008bd";
      when X"2a" =>
        noteSampleTicks_Reg <= X"00083f";
      when X"2b" =>
        noteSampleTicks_Reg <= X"0007c9";
      when X"2c" =>
        noteSampleTicks_Reg <= X"000759";
      when X"2d" =>
        noteSampleTicks_Reg <= X"0006ef";
      when X"2e" =>
        noteSampleTicks_Reg <= X"00068b";
      when X"2f" =>
        noteSampleTicks_Reg <= X"00062d";
      when X"30" =>
        noteSampleTicks_Reg <= X"0005d5";
      when X"31" =>
        noteSampleTicks_Reg <= X"000581";
      when X"32" =>
        noteSampleTicks_Reg <= X"000532";
      when X"33" =>
        noteSampleTicks_Reg <= X"0004e7";
      when X"34" =>
        noteSampleTicks_Reg <= X"0004a1";
      when X"35" =>
        noteSampleTicks_Reg <= X"00045e";
      when X"36" =>
        noteSampleTicks_Reg <= X"00041f";
      when X"37" =>
        noteSampleTicks_Reg <= X"0003e4";
      when X"38" =>
        noteSampleTicks_Reg <= X"0003ac";
      when X"39" =>
        noteSampleTicks_Reg <= X"000377";
      when X"3a" =>
        noteSampleTicks_Reg <= X"000345";
      when X"3b" =>
        noteSampleTicks_Reg <= X"000316";
      when X"3c" =>
        noteSampleTicks_Reg <= X"0002ea";
      when X"3d" =>
        noteSampleTicks_Reg <= X"0002c0";
      when X"3e" =>
        noteSampleTicks_Reg <= X"000299";
      when X"3f" =>
        noteSampleTicks_Reg <= X"000273";
      when X"40" =>
        noteSampleTicks_Reg <= X"000250";
      when X"41" =>
        noteSampleTicks_Reg <= X"00022f";
      when X"42" =>
        noteSampleTicks_Reg <= X"00020f";
      when X"43" =>
        noteSampleTicks_Reg <= X"0001f2";
      when X"44" =>
        noteSampleTicks_Reg <= X"0001d6";
      when X"45" =>
        noteSampleTicks_Reg <= X"0001bb";
      when X"46" =>
        noteSampleTicks_Reg <= X"0001a2";
      when X"47" =>
        noteSampleTicks_Reg <= X"00018b";
      when X"48" =>
        noteSampleTicks_Reg <= X"000175";
      when X"49" =>
        noteSampleTicks_Reg <= X"000160";
      when X"4a" =>
        noteSampleTicks_Reg <= X"00014c";
      when X"4b" =>
        noteSampleTicks_Reg <= X"000139";
      when X"4c" =>
        noteSampleTicks_Reg <= X"000128";
      when X"4d" =>
        noteSampleTicks_Reg <= X"000117";
      when X"4e" =>
        noteSampleTicks_Reg <= X"000107";
      when X"4f" =>
        noteSampleTicks_Reg <= X"0000f9";
      when X"50" =>
        noteSampleTicks_Reg <= X"0000eb";
      when X"51" =>
        noteSampleTicks_Reg <= X"0000dd";
      when X"52" =>
        noteSampleTicks_Reg <= X"0000d1";
      when X"53" =>
        noteSampleTicks_Reg <= X"0000c5";
      when X"54" =>
        noteSampleTicks_Reg <= X"0000ba";
      when X"55" =>
        noteSampleTicks_Reg <= X"0000b0";
      when X"56" =>
        noteSampleTicks_Reg <= X"0000a6";
      when X"57" =>
        noteSampleTicks_Reg <= X"00009c";
      when X"58" =>
        noteSampleTicks_Reg <= X"000094";
      when X"59" =>
        noteSampleTicks_Reg <= X"00008b";
      when X"5a" =>
        noteSampleTicks_Reg <= X"000083";
      when X"5b" =>
        noteSampleTicks_Reg <= X"00007c";
      when X"5c" =>
        noteSampleTicks_Reg <= X"000075";
      when X"5d" =>
        noteSampleTicks_Reg <= X"00006e";
      when X"5e" =>
        noteSampleTicks_Reg <= X"000068";
      when X"5f" =>
        noteSampleTicks_Reg <= X"000062";
      when X"60" =>
        noteSampleTicks_Reg <= X"00005d";
      when X"61" =>
        noteSampleTicks_Reg <= X"000058";
      when X"62" =>
        noteSampleTicks_Reg <= X"000053";
      when X"63" =>
        noteSampleTicks_Reg <= X"00004e";
      when X"64" =>
        noteSampleTicks_Reg <= X"00004a";
      when X"65" =>
        noteSampleTicks_Reg <= X"000045";
      when X"66" =>
        noteSampleTicks_Reg <= X"000041";
      when X"67" =>
        noteSampleTicks_Reg <= X"00003e";
      when X"68" =>
        noteSampleTicks_Reg <= X"00003a";
      when X"69" =>
        noteSampleTicks_Reg <= X"000037";
      when X"6a" =>
        noteSampleTicks_Reg <= X"000034";
      when X"6b" =>
        noteSampleTicks_Reg <= X"000031";
      when X"6c" =>
        noteSampleTicks_Reg <= X"00002e";
      when X"6d" =>
        noteSampleTicks_Reg <= X"00002c";
      when X"6e" =>
        noteSampleTicks_Reg <= X"000029";
      when X"6f" =>
        noteSampleTicks_Reg <= X"000027";
      when X"70" =>
        noteSampleTicks_Reg <= X"000025";
      when X"71" =>
        noteSampleTicks_Reg <= X"000022";
      when X"72" =>
        noteSampleTicks_Reg <= X"000020";
      when X"73" =>
        noteSampleTicks_Reg <= X"00001f";
      when X"74" =>
        noteSampleTicks_Reg <= X"00001d";
      when X"75" =>
        noteSampleTicks_Reg <= X"00001b";
      when X"76" =>
        noteSampleTicks_Reg <= X"00001a";
      when X"77" =>
        noteSampleTicks_Reg <= X"000018";
      when X"78" =>
        noteSampleTicks_Reg <= X"000017";
      when X"79" =>
        noteSampleTicks_Reg <= X"000016";
      when X"7a" =>
        noteSampleTicks_Reg <= X"000014";
      when X"7b" =>
        noteSampleTicks_Reg <= X"000013";
      when X"7c" =>
        noteSampleTicks_Reg <= X"000012";
      when X"7d" =>
        noteSampleTicks_Reg <= X"000011";
      when X"7e" =>
        noteSampleTicks_Reg <= X"000010";
      when X"7f" =>
        noteSampleTicks_Reg <= X"00000f";
      when others =>
        noteSampleTicks_Reg <= X"000000";
    end case;
  end process;
end architecture;
