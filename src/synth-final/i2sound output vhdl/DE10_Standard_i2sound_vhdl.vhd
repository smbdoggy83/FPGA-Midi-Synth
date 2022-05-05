-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DE10_Standard_i2sound_vhdl is
  port (
	 -- ADC
--    ADC_CONVST : out std_logic;
--    ADC_DIN : out std_logic;
--    ADC_DOUT : in std_logic;
--    ADC_SCLK : out std_logic;

	 -- Audio
    AUD_ADCDAT : in std_logic;
--    AUD_ADCLRCK : inout std_logic;
--    AUD_BCLK : inout std_logic;
    AUD_DACDAT : out std_logic;
--    AUD_DACLRCK : inout std_logic;
    AUD_XCK : out std_logic;

	 -- Clock
    CLOCK_50 : in std_logic;

	 -- I2C for Audio and Video-In
    FPGA_I2C_SCLK : out std_logic;
    FPGA_I2C_SDAT : inout std_logic;
	 
	 -- Hex
    HEX0 : out unsigned(6 downto 0);
    HEX1 : out unsigned(6 downto 0);

	 -- Key
    KEY : in unsigned(3 downto 0);
	 
	 -- LED
    LEDR : out unsigned(9 downto 0)
  );
end entity; 

architecture from_verilog of DE10_Standard_i2sound_vhdl is
  signal AUD_I2C_DATA : unsigned(23 downto 0);
  signal CLK_1M : std_logic;
  signal END_sig : std_logic;
  signal GO : std_logic;
  signal KEY0_EDGE : std_logic;
  signal level_vol : unsigned(3 downto 0); 
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
  
  component keytr is --KEY trigger - Takes in the button (key) and uses the clock to debounce it, returns a signal that just represents the negative edge
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
  
  u1: CLOCK_500 -- I2C output data
    port map (
      CLOCK => CLOCK_50, 				-- The Outputting Clock Signal is Connected to the CLOCK_50 Signal on the DE-10
      CLOCK_2 => CLOCK_2_Readable, 	-- The Clock_2 Signal Outputting from the I2C is Connected to the Audio XCK Signal on the I2S in the DE-10		
      CLOCK_500_sig => CLK_1M,		-- The Clock_500 Signal Outputting from the I2C is Connected to a 1MHz on the DE-10
      DATA => AUD_I2C_DATA, 			-- The Data Signal Outputting from the I2C is Connected to the Audio I2C Data Signal on the I2S in the DE-10
      END_sig => END_sig,				-- Stopping the Process of Outputting the I2C Data to the I2S on the DE-10
      GO => GO,							-- Process of Moving the I2C Serial Data
      KEY0_EDGE => KEY0_EDGE,			-- The Edge Signal for KEY0 is Connected to the Edge Signal for KEY0 on the DE-10
      level_vol => level_vol,			-- The Outputting Volume Level is Mapped to the I2C Volume Level on the DE-10
      rst_n => LPM_q_ivl_10			-- The Reset Signal is Connected to KEY1 on the DE-10	
    );
  FPGA_I2C_SCLK <= I2C_SCLK_Readable;
  
  u2: i2c -- i2c input controller
    port map (
      CLOCK => CLK_1M, 						-- The Overall Clock Signal from the Controller is Connected to a 1MHz Clock on the DE-10
      END_sig => END_sig, 					-- Stopping the Process of Moving I2C Serial Data
      GO => GO, 								-- Process of Moving the I2C Serial Data
      I2C_DATA => AUD_I2C_DATA,			-- The 24 Bit I2C Serial Data from the Controller is Connected to the 24 Bit Audio I2C Data Signal for the I2S on the DE-10
      I2C_SCLK => I2C_SCLK_Readable, 	-- The I2C Clock Signal from the Controller is Connected to the FPGA I2C Clock Signal for the Audio In of the I2S on the DE-10
      I2C_SDAT => FPGA_I2C_SDAT, 		-- The I2C Data Signal from the Controller is Connected to the FPGA I2C Data Signal for the Audio In of the I2S on the DE-10
      RESET => '1',							-- The Reset Signal from the Controller is Connected to the Value 1'b1 on the DE-10
      W_R => 'Z'
    );
  
  u3: keytr -- KEY trigger - Takes in the button (key) and uses the clock to debounce it, returns a signal that just represents the negative edge
    port map (
      KEY0_EDGE => KEY0_EDGE, -- Key debounced edge
      clock => CLK_1M,
      key0 => LPM_q_ivl_6,
      rst_n => LPM_q_ivl_8
    );
  HEX0 <= hex_fps_Readable;
  
  u4: HEX
    port map (
      hex => level_vol,
      hex_fps => hex_fps_Readable
    );


  HEX1 <= "1000000";

  LEDR <= "0000000000";

end architecture;
