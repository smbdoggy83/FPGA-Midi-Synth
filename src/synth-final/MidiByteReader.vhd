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
        when X"00" => --The following will happen when the MIDI state is set to 0:
          isByteAvailable_Reg <= '0';--The byte availability register is deactivated when the MIDI is 0
          if MIDI_RX = '0' then --If the MIDI receiver is deactivated:
            debounceCountDown <= debounceCountDown - X"01";--The debouncing countdown is decremented
            if debounceCountDown = X"00" then --If the countdown reaches 0:
              debounceCountDown <= X"0a";--The counter is set to value X"0a"
              midiState <= X"01";--MIDI state is set to 1
              midiCount <= X"000";--MIDI count is set to 0
              bitNumber <= X"00";--The bit number is set to 0
              byteValue_Reg <= X"00";--The register for the byte value is set to 0
            end if;
          else --If the MIDI receiver is activated:
            debounceCountDown <= X"0a";--The debounce counter is set to X"0a"
          end if;
        when X"01" => --The following will happen when the MIDI state is set to 1:
          midiCount <= midiCount + X"001";--The MIDI counter is incremented
          if midiCount = X"640" then --If the MIDI counter reaches X"640":
            midiCount <= X"000";--The MIDI counter is reset
            bitNumber <= bitNumber + X"01";--The bit number is incremented
            if MIDI_RX = '1' then --If the MIDI receiver is activated:
              byteValue_Reg <= byteValue_Reg or (X"01" sll To_Integer(bitNumber)); --Logical OR of the bit value register and is shifted left 1 into the bit number and assigned to the byte value register
            end if;
            if bitNumber = X"07" then --If the Bit number is 7:
              midiState <= X"02"; --The MIDI state is set to 2
            end if;
          end if;
        when X"02" => --The following will happen when the MIDI state is set to 2:
          midiCount <= midiCount + X"001";--The MIDI counter is incremented
          if midiCount = X"640" then --If the MIDI counter reaches 640:
            isByteAvailable_Reg <= '1';--The byte availability register is activated
            midiState <= X"00";--The MIDI state is set to 0
          end if;
        when others =>
          null;--Any other values for the MIDI state is nullified
      end case;
    end if;
  end process;
end architecture;

