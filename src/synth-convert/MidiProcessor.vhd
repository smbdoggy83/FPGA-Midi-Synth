-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MidiProcessor is
  port (
    CLOCK_50 : in std_logic;
    MIDI_RX : in std_logic;
    isNoteOn : out std_logic;
    modulationValue : out unsigned(7 downto 0);
    noteSampleTicks : out unsigned(23 downto 0)
  );
end entity; 

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
  signal byteValue : unsigned(7 downto 0); 
  signal channel : unsigned(3 downto 0) := X"0";
  signal controllerNumber : unsigned(7 downto 0) := X"00"; 
  signal dataByte0 : unsigned(7 downto 0) := X"00";
  signal dataByte1 : unsigned(7 downto 0) := X"00";
  signal dataByte2 : unsigned(7 downto 0) := X"00"; 
  signal dataBytesReceivedCount : unsigned(7 downto 0) := X"00"; 
  signal isByteAvailable : std_logic; 
  signal isDataByteAvailable : std_logic := '0'; 
  signal midiNoteNumber : unsigned(7 downto 0) := X"00"; 
  signal sampleTicks : unsigned(23 downto 0); 
  signal status : unsigned(3 downto 0) := X"0";
  
  begin
  isNoteOn <= isNoteOn_Reg;
  modulationValue <= modulationValue_Reg;
  noteSampleTicks <= noteSampleTicks_Reg;
  byteValue <= (others => 'Z');
  isByteAvailable <= 'Z';
  sampleTicks <= (others => 'Z');
  -- Removed one empty process
  
  -- Instantiation of the MIDI byte reader and the MIDI note to sample tick assigner
  MidiByteReader_inst : midiByteReader
  port map(CLOCK_50, MIDI_RX, isByteAvailable, byteValue);
  
  midiNoteNumberToSampleTicks_inst : midiNoteNumberToSampleTicks
  port map(midiNoteNumber, sampleTicks);
  
  -- A process is initiated with the clock
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then --The following happens on the rising edge of the clock pulse:
      if isByteAvailable = '1' then --If the byte is available:
        if byteValue < X"80" then --If the value of the byte is less than 80:
          case dataBytesReceivedCount is --A case statement is initiated with the count of the data bytes received
            when X"00" =>
              dataByte0 <= byteValue; --The byte value at this bit is assigned to data byte 0 when the count is 0
              dataBytesReceivedCount <= X"01";--The data byte count is incremented
              isDataByteAvailable <= '1';--The byte is available 
            when X"01" =>
              dataByte1 <= byteValue; --The byte value at this bit is assigned to data byte 1 when the count is 1
              dataBytesReceivedCount <= X"02";--The data byte count is incremented
              isDataByteAvailable <= '1';--The byte is available
            when X"02" =>
              dataByte2 <= byteValue; --The byte value at this bit is assigned to data byte 2 when the count is 2
              dataBytesReceivedCount <= X"03";--The data byte count is incremented
              isDataByteAvailable <= '1';--The byte is available
            when others =>
              null;--Any other values for the count is nullified
          end case;
        else --When the byte value is greater than or equal to X"80"
          status <= byteValue(4 + 3 downto 4);--The status bits are assigned
          channel <= byteValue(0 + 3 downto 0);--The channel bits are assigned
          dataBytesReceivedCount <= X"00";--The count for the case statement is reset
        end if;
      else --If the byte is not available:
        if isDataByteAvailable = '1' then --If the data byte is enabled:
          isDataByteAvailable <= '0';--The data byte is not available
          case status is --A case statement is initiated based on the value of the status bits
            when X"8" =>
              if Resize(dataBytesReceivedCount, 32) = X"00000002" then --When status is set to 8 (MIDI OFF) and the resized string is 2 
                if midiNoteNumber = dataByte0 then --If the MIDI note number is equal to data byte 0:
                  dataBytesReceivedCount <= X"00";--The count for the data bytes received is reset
                  isNoteOn_Reg <= '0';--The register for determining if a note is on is deactivated
                end if;
              end if;
            when X"9" =>
              case dataBytesReceivedCount is --A case statement is initiated with the count of the data bytes received when the status is set to 9 (MIDI ON)
                when X"01" =>
                  midiNoteNumber <= dataByte0;--Data byte 0 is assigned to the MIDI note number when the count is 1
                when X"02" =>
                  dataBytesReceivedCount <= X"00";--The count is reset when the count is 2
                  if Resize(dataByte1, 32) = X"00000000" then
                    isNoteOn_Reg <= '0';--The register for determining if a note is on is deactivated when the resized string is 0
                  else --When the resized string is not 0
                    isNoteOn_Reg <= '1'; --The register for determing if a note is on is activated
                    noteSampleTicks_Reg <= sampleTicks;--The sample tick is assigned to the note sample tick register
                  end if;
                when others =>
                  null;--Any other count values are nullified 
              end case;
            when X"b" =>
              case dataBytesReceivedCount is --A case statement is initialized with the count of the data bytes recieved when the status is set to X"b"
                when X"01" =>
                  controllerNumber <= dataByte0;--Data byte 0 is assigned to the controller number when the count is 1
                when X"02" =>
                  if controllerNumber = X"01" then --If the controller number is 1 and the count is 2:
                    dataBytesReceivedCount <= X"00"; --The count is reset
                    modulationValue_Reg <= dataByte1; --Data byte 1 is assigned to the modulation value register
                  end if;
                when others =>
                  null;--Any other count values are nullified
              end case;
            when others =>
              null;--Any other status values are nullified
          end case;
        end if;
      end if;
    end if;
  end process;
end architecture;

