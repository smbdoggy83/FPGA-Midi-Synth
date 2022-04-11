-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module MidiProcessor (MidiProcessor-Copy.v:1)
entity MidiProcessor is
  port (
    CLOCK_50 : in std_logic;
    MIDI_RX : in std_logic;
    isNoteOn : out std_logic;
    modulationValue : out unsigned(7 downto 0);
    noteSampleTicks : out unsigned(23 downto 0)
  );
end entity; 

-- Generated from Verilog module MidiProcessor (MidiProcessor-Copy.v:1)
architecture from_verilog of MidiProcessor is

  component midiByteReader
	port(
		CLOCK_50 : in std_logic;
		MIDI_RX : in std_logic;
		isByteAvailable : out std_logic;
		byteValue : out unsigned(7 downto 0)
	);
	end component;	
  
  component midiNoteNumberToSampleTicks
	port(
		midiNoteNumber : in unsigned(7 downto 0);
		noteSampleTicks : out unsigned(23 downto 0)
	);
	end component;

  signal isNoteOn_Reg : std_logic;
  signal modulationValue_Reg : unsigned(7 downto 0);
  signal noteSampleTicks_Reg : unsigned(23 downto 0);
  signal byteValue : unsigned(7 downto 0);  -- Declared at MidiProcessor-Copy.v:20
  signal channel : unsigned(3 downto 0) := X"0";  -- Declared at MidiProcessor-Copy.v:10
  signal controllerNumber : unsigned(7 downto 0) := X"00";  -- Declared at MidiProcessor-Copy.v:17
  signal dataByte0 : unsigned(7 downto 0) := X"00";  -- Declared at MidiProcessor-Copy.v:11
  signal dataByte1 : unsigned(7 downto 0) := X"00";  -- Declared at MidiProcessor-Copy.v:12
  signal dataByte2 : unsigned(7 downto 0) := X"00";  -- Declared at MidiProcessor-Copy.v:13
  signal dataBytesReceivedCount : unsigned(7 downto 0) := X"00";  -- Declared at MidiProcessor-Copy.v:14
  signal isByteAvailable : std_logic;  -- Declared at MidiProcessor-Copy.v:19
  signal isDataByteAvailable : std_logic := '0';  -- Declared at MidiProcessor-Copy.v:15
  signal midiNoteNumber : unsigned(7 downto 0) := X"00";  -- Declared at MidiProcessor-Copy.v:16
  signal sampleTicks : unsigned(23 downto 0);  -- Declared at MidiProcessor-Copy.v:21
  signal status : unsigned(3 downto 0) := X"0";  -- Declared at MidiProcessor-Copy.v:9
  
  begin
  isNoteOn <= isNoteOn_Reg;
  modulationValue <= modulationValue_Reg;
  noteSampleTicks <= noteSampleTicks_Reg;
  byteValue <= (others => 'Z');
  isByteAvailable <= 'Z';
  sampleTicks <= (others => 'Z');
  -- Removed one empty process
  
  MidiByteReader_inst : midiByteReader
  port map(CLOCK_50, MIDI_RX, isByteAvailable, byteValue);
  
  midiNoteNumberToSampleTicks_inst : midiNoteNumberToSampleTicks
  port map(midiNoteNumber, sampleTicks);
  
  -- Generated from always process in MidiProcessor (MidiProcessor-Copy.v:26)
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if isByteAvailable = '1' then
        if byteValue < X"80" then
          case dataBytesReceivedCount is
            when X"00" =>
              dataByte0 <= byteValue;
              dataBytesReceivedCount <= X"01";
              isDataByteAvailable <= '1';
            when X"01" =>
              dataByte1 <= byteValue;
              dataBytesReceivedCount <= X"02";
              isDataByteAvailable <= '1';
            when X"02" =>
              dataByte2 <= byteValue;
              dataBytesReceivedCount <= X"03";
              isDataByteAvailable <= '1';
            when others =>
              null;
          end case;
        else
          status <= byteValue(4 + 3 downto 4);
          channel <= byteValue(0 + 3 downto 0);
          dataBytesReceivedCount <= X"00";
        end if;
      else
        if isDataByteAvailable = '1' then
          isDataByteAvailable <= '0';
          case status is
            when X"8" =>
              if Resize(dataBytesReceivedCount, 32) = X"00000002" then
                if midiNoteNumber = dataByte0 then
                  dataBytesReceivedCount <= X"00";
                  isNoteOn_Reg <= '0';
                end if;
              end if;
            when X"9" =>
              case dataBytesReceivedCount is
                when X"01" =>
                  midiNoteNumber <= dataByte0;
                when X"02" =>
                  dataBytesReceivedCount <= X"00";
                  if Resize(dataByte1, 32) = X"00000000" then
                    isNoteOn_Reg <= '0';
                  else
                    isNoteOn_Reg <= '1';
                    noteSampleTicks_Reg <= sampleTicks;
                  end if;
                when others =>
                  null;
              end case;
            when X"b" =>
              case dataBytesReceivedCount is
                when X"01" =>
                  controllerNumber <= dataByte0;
                when X"02" =>
                  if controllerNumber = X"01" then
                    dataBytesReceivedCount <= X"00";
                    modulationValue_Reg <= dataByte1;
                  end if;
                when others =>
                  null;
              end case;
            when others =>
              null;
          end case;
        end if;
      end if;
    end if;
  end process;
end architecture;

