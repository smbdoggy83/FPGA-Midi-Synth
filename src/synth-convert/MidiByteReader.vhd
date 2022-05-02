-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- debounceTicks = 10
-- midiTicks = 1600
-- stateByteComplete = 2
-- stateSignalAvailable = 1
-- stateWaitingForSignal = 0

entity MidiByteReader is
  port (
    CLOCK_50 : in std_logic;
    MIDI_RX : in std_logic;
    byteValue : out unsigned(7 downto 0);
    isByteAvailable : out std_logic
  );
end entity; 

-- debounceTicks = 10
-- midiTicks = 1600
-- stateByteComplete = 2
-- stateSignalAvailable = 1
-- stateWaitingForSignal = 0

architecture from_verilog of MidiByteReader is
  signal byteValue_Reg : unsigned(7 downto 0) := X"00";
  signal isByteAvailable_Reg : std_logic := '0';
  signal bitNumber : unsigned(7 downto 0) := X"00";
  signal debounceCountDown : unsigned(7 downto 0) := X"0a";
  signal midiCount : unsigned(11 downto 0) := X"000";
  signal midiState : unsigned(7 downto 0) := X"00"; 
begin
  byteValue <= byteValue_Reg;
  isByteAvailable <= isByteAvailable_Reg;

-- process is
-- begin
-- isByteAvailable_Reg <= '0';
-- byteValue_Reg <= X"00";
-- wait;
-- end process;

-- A process is initiated with the clock
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then --The following will happen on the rising edge of the clock pulse:
      case midiState is --A case statement is initiated based on the MIDI state 
        when X"00" =>
          isByteAvailable_Reg <= '0';--
          if MIDI_RX = '0' then
            debounceCountDown <= debounceCountDown - X"01";
            if debounceCountDown = X"00" then
              debounceCountDown <= X"0a";
              midiState <= X"01";
              midiCount <= X"000";
              bitNumber <= X"00";
              byteValue_Reg <= X"00";
            end if;
          else
            debounceCountDown <= X"0a";
          end if;
        when X"01" =>
          midiCount <= midiCount + X"001";
          if midiCount = X"640" then
            midiCount <= X"000";
            bitNumber <= bitNumber + X"01";
            if MIDI_RX = '1' then
              byteValue_Reg <= byteValue_Reg or (X"01" sll To_Integer(bitNumber));
            end if;
            if bitNumber = X"07" then
              midiState <= X"02";
            end if;
          end if;
        when X"02" =>
          midiCount <= midiCount + X"001";
          if midiCount = X"640" then
            isByteAvailable_Reg <= '1';
            midiState <= X"00";
          end if;
        when others =>
          null;
      end case;
    end if;
  end process;
end architecture;

