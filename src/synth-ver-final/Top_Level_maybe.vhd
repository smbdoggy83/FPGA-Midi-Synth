-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module Top_Level_ver (Top_Level_ver.v:1)
entity Top_Level_ver is
  port (
    AUD_ADCDAT : in std_logic;
    AUD_DACDAT : out std_logic;
    AUD_XCK : out std_logic;
    CLOCK_50 : in std_logic;
    FPGA_I2C_SCLK : out std_logic;
    FPGA_I2C_SDAT : inout std_logic;
    HEX0 : out unsigned(6 downto 0);
    HEX1 : out unsigned(6 downto 0);
    KEY : in unsigned(3 downto 0);
    LEDR : out unsigned(9 downto 0);
    MIDI_RX : in std_logic;
    SW : in unsigned(9 downto 0)
  );
end entity; 

-- Generated from Verilog module Top_Level_ver (Top_Level_ver.v:1)
architecture from_verilog of Top_Level_ver is
  signal AUD_DACDAT_Reg : std_logic;
  signal AUD_XCK_Reg : std_logic;
  signal FPGA_I2C_SCLK_Reg : std_logic;
  signal HEX0_Reg : unsigned(6 downto 0);
  signal HEX1_Reg : unsigned(6 downto 0);
  signal LEDR_Reg : unsigned(9 downto 0);
  signal aud_dacdat_1 : std_logic;  -- Declared at Top_Level_ver.v:35
  signal aud_xck_1 : std_logic;  -- Declared at Top_Level_ver.v:36
  signal filter_in : std_logic;  -- Declared at Top_Level_ver.v:38
  signal fpga_i2c_sclk_1 : std_logic;  -- Declared at Top_Level_ver.v:40
  signal hex0_1 : unsigned(6 downto 0);  -- Declared at Top_Level_ver.v:33
  signal hex1_1 : unsigned(6 downto 0);  -- Declared at Top_Level_ver.v:34
  signal i2s_sound_data : std_logic;  -- Declared at Top_Level_ver.v:41
  signal ledr_1 : unsigned(9 downto 0);  -- Declared at Top_Level_ver.v:32
begin
  AUD_DACDAT <= AUD_DACDAT_Reg;
  AUD_XCK <= AUD_XCK_Reg;
  FPGA_I2C_SCLK <= FPGA_I2C_SCLK_Reg;
  HEX0 <= HEX0_Reg;
  HEX1 <= HEX1_Reg;
  LEDR <= LEDR_Reg;
  FPGA_I2C_SDAT <= 'Z';
  aud_dacdat_1 <= 'Z';
  aud_xck_1 <= 'Z';
  fpga_i2c_sclk_1 <= 'Z';
  hex0_1 <= (others => 'Z');
  hex1_1 <= (others => 'Z');
  i2s_sound_data <= 'Z';
  ledr_1 <= (others => 'Z');
  
  -- Generated from always process in Top_Level_ver (Top_Level_ver.v:48)
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      LEDR_Reg <= ledr_1;
      HEX0_Reg <= hex0_1;
      HEX1_Reg <= hex1_1;
      AUD_DACDAT_Reg <= aud_dacdat_1;
      AUD_XCK_Reg <= aud_xck_1;
      FPGA_I2C_SCLK_Reg <= fpga_i2c_sclk_1;
      if SW(0) = '1' then
        filter_in <= i2s_sound_data;
      else
        filter_in <= AUD_ADCDAT;
      end if;
    end if;
  end process;
end architecture;

