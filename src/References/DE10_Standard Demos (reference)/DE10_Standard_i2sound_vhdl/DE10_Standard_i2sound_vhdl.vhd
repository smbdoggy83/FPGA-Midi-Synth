-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module DE10_Standard_i2sound_all (DE10_Standard_i2sound_all.v:6)
entity DE10_Standard_i2sound_vhdl is
  port (
    ADC_CONVST : out std_logic;
    ADC_DIN : out std_logic;
    ADC_DOUT : in std_logic;
    ADC_SCLK : out std_logic;
    AUD_ADCDAT : in std_logic;
    AUD_ADCLRCK : inout std_logic;
    AUD_BCLK : inout std_logic;
    AUD_DACDAT : out std_logic;
    AUD_DACLRCK : inout std_logic;
    AUD_XCK : out std_logic;
    CLOCK2_50 : in std_logic;
    CLOCK3_50 : in std_logic;
    CLOCK4_50 : in std_logic;
    CLOCK_50 : in std_logic;
    DRAM_ADDR : out unsigned(12 downto 0);
    DRAM_BA : out unsigned(1 downto 0);
    DRAM_CAS_N : out std_logic;
    DRAM_CKE : out std_logic;
    DRAM_CLK : out std_logic;
    DRAM_CS_N : out std_logic;
    DRAM_DQ : inout unsigned(15 downto 0);
    DRAM_LDQM : out std_logic;
    DRAM_RAS_N : out std_logic;
    DRAM_UDQM : out std_logic;
    DRAM_WE_N : out std_logic;
    FPGA_I2C_SCLK : out std_logic;
    FPGA_I2C_SDAT : inout std_logic;
    HEX0 : out unsigned(6 downto 0);
    HEX1 : out unsigned(6 downto 0);
    HEX2 : out unsigned(6 downto 0);
    HEX3 : out unsigned(6 downto 0);
    HEX4 : out unsigned(6 downto 0);
    HEX5 : out unsigned(6 downto 0);
    IRDA_RXD : in std_logic;
    IRDA_TXD : out std_logic;
    KEY : in unsigned(3 downto 0);
    LEDR : out unsigned(9 downto 0);
    PS2_CLK : inout std_logic;
    PS2_CLK2 : inout std_logic;
    PS2_DAT : inout std_logic;
    PS2_DAT2 : inout std_logic;
    SW : in unsigned(9 downto 0);
    TD_CLK27 : in std_logic;
    TD_DATA : in unsigned(7 downto 0);
    TD_HS : in std_logic;
    TD_RESET_N : out std_logic;
    TD_VS : in std_logic;
    VGA_B : out unsigned(7 downto 0);
    VGA_BLANK_N : out std_logic;
    VGA_CLK : out std_logic;
    VGA_G : out unsigned(7 downto 0);
    VGA_HS : out std_logic;
    VGA_R : out unsigned(7 downto 0);
    VGA_SYNC_N : out std_logic;
    VGA_VS : out std_logic
  );
end entity; 

-- Generated from Verilog module DE10_Standard_i2sound_all (DE10_Standard_i2sound_all.v:6)
architecture from_verilog of DE10_Standard_i2sound_vhdl is
  signal AUD_I2C_DATA : unsigned(23 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:98
  signal CLK_1M : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:95
  signal END_sig : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:96
  signal GO : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:99
  signal KEY0_EDGE : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:97
  signal level_vol : unsigned(3 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:100
  signal LPM_q_ivl_6 : std_logic;
  signal LPM_q_ivl_8 : std_logic;
  signal LPM_q_ivl_10 : std_logic;
  
  component CLOCK_500 is
    port (
      CLOCK : in std_logic;
      CLOCK_2 : out std_logic;
      CLOCK_500_sig : out std_logic;
      DATA : out unsigned(23 downto 0);
      END_sig : in std_logic;
      GO : out std_logic;
      KEY0_EDGE : in std_logic;
      level_vol : out unsigned(3 downto 0);
      rst_n : in std_logic
    );
  end component;
  signal CLOCK_2_Readable : std_logic;  -- Needed to connect outputs
  
  component i2c is
    port (
      ACK : out std_logic;
      CLOCK : in std_logic;
      END_sig : out std_logic;
      GO : in std_logic;
      I2C_DATA : in unsigned(23 downto 0);
      I2C_SCLK : out std_logic;
      I2C_SDAT : inout std_logic;
      RESET : in std_logic;
      SDO : out std_logic;
      SD_COUNTER : out unsigned(5 downto 0);
      W_R : in std_logic
    );
  end component;
  signal I2C_SCLK_Readable : std_logic;  -- Needed to connect outputs
  
  component keytr is
    port (
      KEY0_EDGE : out std_logic;
      ON_sig : out std_logic;
      clock : in std_logic;
      counter : out unsigned(9 downto 0);
      key0 : in std_logic;
      rst_n : in std_logic
    );
  end component;
  
  component HEX is
    port (
      hex : in unsigned(3 downto 0);
      hex_fps : out unsigned(6 downto 0)
    );
  end component;
  signal hex_fps_Readable : unsigned(6 downto 0);  -- Needed to connect outputs
begin
  AUD_DACDAT <= AUD_ADCDAT;
  LPM_q_ivl_6 <= KEY(0);
  LPM_q_ivl_8 <= KEY(1);
  LPM_q_ivl_10 <= KEY(1);
  AUD_XCK <= CLOCK_2_Readable;
  
  -- Generated from instantiation at DE10_Standard_i2sound_all.v:120
  u1: CLOCK_500
    port map (
      CLOCK => CLOCK_50,
      CLOCK_2 => CLOCK_2_Readable,
      CLOCK_500_sig => CLK_1M,
      DATA => AUD_I2C_DATA,
      END_sig => END_sig,
      GO => GO,
      KEY0_EDGE => KEY0_EDGE,
      level_vol => level_vol,
      rst_n => LPM_q_ivl_10
    );
  FPGA_I2C_SCLK <= I2C_SCLK_Readable;
  
  -- Generated from instantiation at DE10_Standard_i2sound_all.v:134
  u2: i2c
    port map (
      CLOCK => CLK_1M,
      END_sig => END_sig,
      GO => GO,
      I2C_DATA => AUD_I2C_DATA,
      I2C_SCLK => I2C_SCLK_Readable,
      I2C_SDAT => FPGA_I2C_SDAT,
      RESET => '1',
      W_R => 'Z'
    );
  
  -- Generated from instantiation at DE10_Standard_i2sound_all.v:111
  u3: keytr
    port map (
      KEY0_EDGE => KEY0_EDGE,
      clock => CLK_1M,
      key0 => LPM_q_ivl_6,
      rst_n => LPM_q_ivl_8
    );
  HEX0 <= hex_fps_Readable;
  
  -- Generated from instantiation at DE10_Standard_i2sound_all.v:147
  u4: HEX
    port map (
      hex => level_vol,
      hex_fps => hex_fps_Readable
    );
  ADC_CONVST <= 'Z';
  ADC_DIN <= 'Z';
  ADC_SCLK <= 'Z';
  AUD_ADCLRCK <= 'Z';
  AUD_BCLK <= 'Z';
  AUD_DACLRCK <= 'Z';
  DRAM_ADDR <= (others => 'Z');
  DRAM_BA <= (others => 'Z');
  DRAM_CAS_N <= 'Z';
  DRAM_CKE <= 'Z';
  DRAM_CLK <= 'Z';
  DRAM_CS_N <= 'Z';
  DRAM_DQ <= (others => 'Z');
  DRAM_LDQM <= 'Z';
  DRAM_RAS_N <= 'Z';
  DRAM_UDQM <= 'Z';
  DRAM_WE_N <= 'Z';
  HEX1 <= "1000000";
  HEX2 <= (others => 'Z');
  HEX3 <= (others => 'Z');
  HEX4 <= (others => 'Z');
  HEX5 <= (others => 'Z');
  IRDA_TXD <= 'Z';
  LEDR <= "0000000000";
  PS2_CLK <= 'Z';
  PS2_CLK2 <= 'Z';
  PS2_DAT <= 'Z';
  PS2_DAT2 <= 'Z';
  TD_RESET_N <= 'Z';
  VGA_B <= (others => 'Z');
  VGA_BLANK_N <= 'Z';
  VGA_CLK <= 'Z';
  VGA_G <= (others => 'Z');
  VGA_HS <= 'Z';
  VGA_R <= (others => 'Z');
  VGA_SYNC_N <= 'Z';
  VGA_VS <= 'Z';
end architecture;
