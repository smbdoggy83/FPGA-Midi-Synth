-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module Top_Level_ver (Top_Level_ver - Copy.v:1)
entity Top_Level is
  port (
    AUD_ADCDAT : in std_logic; 			-- Audio In (Physical)
    AUD_DACDAT : out std_logic; 			-- Audio Out
    AUD_XCK : out std_logic; 				-- Related to internal i2c clock sync
	 -- I2S_BIT_CLOCK : out std_logic; 	-- Not used
	 -- I2S_SOUND_DATA : out std_logic; -- Goes to i2sound instead of direct output
	 -- I2S_LEFT_RIGHT_SELECT : out std_logic; -- Not used
    CLOCK_50 : in std_logic;				-- On-Board 50 MHz Clock
    FPGA_I2C_SCLK : out std_logic; 		-- Alternative Signal Out 
    FPGA_I2C_SDAT : inout std_logic; 	-- Alternative Signal In (Audio, Video)
    HEX0 : out unsigned(6 downto 0);
    HEX1 : out unsigned(6 downto 0);
    KEY : in unsigned(3 downto 0);
    LEDR : out unsigned(9 downto 0);
    MIDI_RX : in std_logic; 				-- Serial Midi Stream, 24-bit words at a time
    SW : in unsigned(9 downto 0)
  );
end entity; 

-- Generated from Verilog module Top_Level_ver (Top_Level_ver - Copy.v:1)
architecture from_verilog of Top_Level is
  signal AUD_DACDAT_Reg : std_logic;
  signal AUD_XCK_Reg : std_logic;
  signal FPGA_I2C_SCLK_Reg : std_logic;
  signal HEX0_Reg : unsigned(6 downto 0);
  signal HEX1_Reg : unsigned(6 downto 0);
  signal LEDR_Reg : unsigned(9 downto 0);
  signal tmp_ivl_3 : unsigned(1 downto 0);  -- Temporary created at Top_Level_ver - Copy.v:37
  signal aud_dacdat_1 : std_logic;  -- Declared at Top_Level_ver - Copy.v:31
  signal aud_xck_1 : std_logic;  -- Declared at Top_Level_ver - Copy.v:32
  signal audio_in : std_logic;  -- Declared at Top_Level_ver - Copy.v:35
  signal fpga_i2c_sclk_1 : std_logic;  -- Declared at Top_Level_ver - Copy.v:39
  signal hex0_1 : unsigned(6 downto 0);  -- Declared at Top_Level_ver - Copy.v:29
  signal hex1_1 : unsigned(6 downto 0);  -- Declared at Top_Level_ver - Copy.v:30
  signal i2s_bit_clock : std_logic;  -- Declared at Top_Level_ver - Copy.v:37
  signal i2s_left_right_select : std_logic;  -- Declared at Top_Level_ver - Copy.v:37
  signal i2s_sound_data : std_logic;  -- Declared at Top_Level_ver - Copy.v:37
  signal ledr_1 : unsigned(9 downto 0);  -- Declared at Top_Level_ver - Copy.v:28
  signal LPM_d0_ivl_1 : unsigned(7 downto 0);
  signal f_out : signed(23 downto 0);
  
  component DE10_Standard_i2sound is -- Audio In / Out
    port (
      AUD_ADCDAT : in std_logic;
      AUD_DACDAT : out std_logic;
      AUD_XCK : out std_logic;
      CLOCK_50 : in std_logic;
      FPGA_I2C_SCLK : out std_logic;
      FPGA_I2C_SDAT : inout std_logic;
      HEX0 : out unsigned(6 downto 0);
      HEX1 : out unsigned(6 downto 0);
      KEY : in unsigned(3 downto 0)
    );
  end component;
  
  component bandpass_leastPth is -- Bandpass Filter
    port (
      clk : in std_logic;
      clk_enable : in std_logic;
      filter_in : in signed(23 downto 0);
      filter_out : out signed(23 downto 0);
      reset : in std_logic
    );
  end component;
  
  component SoundModule is -- Synthesizer itself
    port (
      CLOCK_50 : in std_logic;
      I2S_BIT_CLOCK : out std_logic;
      I2S_LEFT_RIGHT_SELECT : out std_logic;
      I2S_SOUND_DATA : out std_logic;
      LEDR : out unsigned(7 downto 0);
      MIDI_RX : in std_logic
    );
  end component;
begin
	-- Declare registers
  AUD_DACDAT <= AUD_DACDAT_Reg;
  AUD_XCK <= AUD_XCK_Reg;
  FPGA_I2C_SCLK <= FPGA_I2C_SCLK_Reg;
  HEX0 <= HEX0_Reg;
  HEX1 <= HEX1_Reg;
  LEDR <= LEDR_Reg;
  ledr_1 <= tmp_ivl_3 & LPM_d0_ivl_1;
  
  -- Generated from instantiation at Top_Level_ver - Copy.v:39
  i2sound: DE10_Standard_i2sound
    port map (
      AUD_ADCDAT => audio_in,
      AUD_DACDAT => aud_dacdat_1,
      AUD_XCK => aud_xck_1,
      CLOCK_50 => CLOCK_50,
      FPGA_I2C_SCLK => fpga_i2c_sclk_1,
      FPGA_I2C_SDAT => FPGA_I2C_SDAT,
      HEX0 => hex0_1,
      HEX1 => hex1_1,
      KEY => KEY
    );
	 
	 -- Bandpass Filter, Bypassed for now
	bandpass_inst : bandpass_leastPth
		port map (
			clk => CLOCK_50,
			clk_enable => '1',
			filter_in => "000000000000000000000000",
			filter_out => f_out,
			reset => '0'
		);
  
  -- Generated from instantiation at Top_Level_ver - Copy.v:37
  soundmodule_inst: SoundModule
    port map (
      CLOCK_50 => CLOCK_50,
      I2S_BIT_CLOCK => i2s_bit_clock,
      I2S_LEFT_RIGHT_SELECT => i2s_left_right_select,
      I2S_SOUND_DATA => i2s_sound_data,
      LEDR => LPM_d0_ivl_1,
      MIDI_RX => MIDI_RX
    );
  tmp_ivl_3 <= "00";
  
  -- Generated from always process in Top_Level_ver (Top_Level_ver - Copy.v:42)
  process (CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
	 
      LEDR_Reg <= ledr_1;
      HEX0_Reg <= hex0_1;
      HEX1_Reg <= hex1_1;
      AUD_DACDAT_Reg <= aud_dacdat_1;
      AUD_XCK_Reg <= aud_xck_1;
      FPGA_I2C_SCLK_Reg <= fpga_i2c_sclk_1;
      if SW(0) = '1' then -- Switch 0 Controls if audio is from synth or from physical jack
        audio_in <= i2s_sound_data;
      else
        audio_in <= AUD_ADCDAT;
      end if;
		
-- Previous Implementation (Disabled due to filter I/O issue in VHDL)

--    if SW(0) = '1' then -- Switch 0 Controls if audio is from synth or from physical jack
--        filter_in <= i2s_sound_data;
--      else
--        filter_in <= AUD_ADCDAT;
--      end if;
--		if SW(1) = '1' then -- Switch 1 Controls if filter is enabled 
--        audio_in <= filter_out; -- if enabled, audio is from above switch, but then passed through filter
--      else
--        audio_in <= filter_in; -- if disabled, audio is just the one from the above switch
--      end if;
		
    end if;
  end process;
end architecture;

