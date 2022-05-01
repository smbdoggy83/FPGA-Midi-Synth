-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module DE10_Standard_i2sound_all (DE10_Standard_i2sound_all.v:6)
entity DE10_Standard_i2sound_all_vhdl is
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
architecture from_verilog of DE10_Standard_i2sound_all_vhdl is
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module CLOCK_500 (DE10_Standard_i2sound_all.v:159)
entity CLOCK_500 is
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
end entity; 

-- Generated from Verilog module CLOCK_500 (DE10_Standard_i2sound_all.v:159)
architecture from_verilog of CLOCK_500 is
  signal COUNTER_500 : unsigned(10 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:186
  signal DATA_A : unsigned(15 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:188
  type ROM_Type is array (8 downto 0) of unsigned(15 downto 0);
  signal ROM : ROM_Type;  -- Declared at DE10_Standard_i2sound_all.v:187
  signal tmp_ivl_10 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_12 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_15 : unsigned(30 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_16 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_18 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_21 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_23 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_24 : unsigned(1 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_27 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_28 : unsigned(1 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_30 : unsigned(1 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal tmp_ivl_34 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:236
  signal tmp_ivl_37 : unsigned(26 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:236
  signal tmp_ivl_38 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:236
  signal tmp_ivl_4 : unsigned(7 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:197
  signal tmp_ivl_40 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:236
  signal tmp_ivl_42 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:236
  signal tmp_ivl_44 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:236
  signal tmp_ivl_48 : unsigned(7 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:237
  signal tmp_ivl_51 : unsigned(2 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:237
  signal tmp_ivl_52 : unsigned(7 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:237
  signal tmp_ivl_54 : unsigned(7 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:237
  signal tmp_ivl_8 : unsigned(5 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:198
  signal address : unsigned(5 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:189
  signal vol : unsigned(4 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:221
  signal volume : unsigned(6 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:222
begin
  tmp_ivl_21 <= tmp_ivl_10 and tmp_ivl_18;
  CLOCK_500_sig <= COUNTER_500(9);
  CLOCK_2 <= COUNTER_500(1);
  DATA <= tmp_ivl_4 & DATA_A;
  tmp_ivl_10 <= '1' when tmp_ivl_8 >= address else '0';
  tmp_ivl_12 <= tmp_ivl_15 & END_sig;
  tmp_ivl_18 <= '1' when tmp_ivl_12 = tmp_ivl_16 else '0';
  tmp_ivl_23 <= COUNTER_500(10);
  tmp_ivl_24 <= tmp_ivl_27 & tmp_ivl_23;
  tmp_ivl_30 <= tmp_ivl_24 when tmp_ivl_21 = '1' else tmp_ivl_28;
  GO <= tmp_ivl_30(0);
  tmp_ivl_34 <= tmp_ivl_37 & vol;
  tmp_ivl_40 <= tmp_ivl_34 - tmp_ivl_38;
  tmp_ivl_44 <= tmp_ivl_40 / tmp_ivl_42;
  level_vol <= tmp_ivl_44(0 + 3 downto 0);
  tmp_ivl_48 <= tmp_ivl_51 & vol;
  tmp_ivl_54 <= tmp_ivl_48 + tmp_ivl_52;
  volume <= tmp_ivl_54(0 + 6 downto 0);
  tmp_ivl_15 <= "0000000000000000000000000000000";
  tmp_ivl_16 <= X"00000001";
  tmp_ivl_27 <= '0';
  tmp_ivl_28 <= "01";
  tmp_ivl_37 <= "000000000000000000000000000";
  tmp_ivl_38 <= X"00000004";
  tmp_ivl_4 <= X"34";
  tmp_ivl_42 <= X"00000003";
  tmp_ivl_51 <= "000";
  tmp_ivl_52 <= X"60";
  tmp_ivl_8 <= "001000";
  
  -- Generated from always process in CLOCK_500 (DE10_Standard_i2sound_all.v:203)
  process (CLOCK) is
  begin
    if rising_edge(CLOCK) then
      COUNTER_500 <= COUNTER_500 + "00000000001";
    end if;
  end process;
  
  -- Generated from always process in CLOCK_500 (DE10_Standard_i2sound_all.v:209)
  process is
  begin
    wait until falling_edgee(KEY0_EDGE) or rising_edge(END_sig);
    if (not KEY0_EDGE) = '1' then
      address <= "000000";
    else
      wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:215)
      if address <= "001000" then
        wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:217)
        address <= address + "000001";
      end if;
    end if;
  end process;
  
  -- Generated from always process in CLOCK_500 (DE10_Standard_i2sound_all.v:224)
  process is
  begin
    wait until falling_edgee(rst_n) or falling_edgee(KEY0_EDGE);
    if (not rst_n) = '1' then
      vol <= "11111";
    else
      wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:228)
      if vol = "00100" then
        vol <= "11111";
      else
        if (not KEY0_EDGE) = '1' then
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:231)
          vol <= vol - "00011";
        end if;
      end if;
    end if;
  end process;
  
  -- Generated from always process in CLOCK_500 (DE10_Standard_i2sound_all.v:240)
  process is
  begin
    wait until rising_edge(END_sig);
    ROM(0) <= X"0c00";
    ROM(1) <= X"0ec2";
    ROM(2) <= X"0838";
    ROM(3) <= X"1000";
    ROM(4) <= X"0017";
    ROM(5) <= X"0217";
    ROM(6) <= X"04" & '0' & volume;
    ROM(7) <= X"06" & '0' & volume;
    ROM(8) <= X"1201";
    wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:255)
    DATA_A <= ROM(To_Integer(address));
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module i2c (DE10_Standard_i2sound_all.v:281)
entity i2c is
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
end entity; 

-- Generated from Verilog module i2c (DE10_Standard_i2sound_all.v:281)
architecture from_verilog of i2c is
  signal END_sig_Reg : std_logic;
  signal SDO_Reg : std_logic;
  signal SD_COUNTER_Reg : unsigned(5 downto 0);
  signal ACK1 : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:326
  signal ACK2 : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:326
  signal ACK3 : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:326
  signal SCLK : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:318
  signal SD : unsigned(23 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:320
  signal tmp_ivl_0 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_11 : unsigned(25 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_12 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_14 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_16 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_18 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_20 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_22 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_26 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:324
  signal tmp_ivl_28 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:324
  signal tmp_ivl_3 : unsigned(25 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_32 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:327
  signal tmp_ivl_4 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_6 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:323
  signal tmp_ivl_8 : unsigned(31 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:323
begin
  END_sig <= END_sig_Reg;
  SDO <= SDO_Reg;
  SD_COUNTER <= SD_COUNTER_Reg;
  tmp_ivl_16 <= tmp_ivl_6 and tmp_ivl_14;
  tmp_ivl_18 <= not CLOCK;
  I2C_SCLK <= SCLK or tmp_ivl_22;
  tmp_ivl_32 <= ACK1 or ACK2;
  ACK <= tmp_ivl_32 or ACK3;
  tmp_ivl_0 <= tmp_ivl_3 & SD_COUNTER_Reg;
  tmp_ivl_6 <= '1' when tmp_ivl_0 >= tmp_ivl_4 else '0';
  tmp_ivl_8 <= tmp_ivl_11 & SD_COUNTER_Reg;
  tmp_ivl_14 <= '1' when tmp_ivl_12 >= tmp_ivl_8 else '0';
  tmp_ivl_22 <= tmp_ivl_18 when tmp_ivl_16 = '1' else tmp_ivl_20;
  I2C_SDAT <= tmp_ivl_26 when SDO_Reg = '1' else tmp_ivl_28;
  tmp_ivl_11 <= "00000000000000000000000000";
  tmp_ivl_12 <= X"0000001e";
  tmp_ivl_20 <= '0';
  tmp_ivl_26 <= 'Z';
  tmp_ivl_28 <= '0';
  tmp_ivl_3 <= "00000000000000000000000000";
  tmp_ivl_4 <= X"00000004";
  
  -- Generated from always process in i2c (DE10_Standard_i2sound_all.v:334)
  process is
  begin
    wait until falling_edgee(RESET) or rising_edge(CLOCK);
    if (not RESET) = '1' then
      SD_COUNTER_Reg <= "111111";
    else
      if (unsigned'("0000000000000000000000000000000") & GO) = X"00000000" then
        SD_COUNTER_Reg <= "000000";
      else
        wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:346)
        if SD_COUNTER_Reg < "111111" then
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:348)
          SD_COUNTER_Reg <= SD_COUNTER_Reg + "000001";
        end if;
      end if;
    end if;
  end process;
  
  -- Generated from always process in i2c (DE10_Standard_i2sound_all.v:355)
  process is
  begin
    wait until falling_edgee(RESET) or rising_edge(CLOCK);
    if (not RESET) = '1' then
      SCLK <= '1';
      SDO_Reg <= '1';
      ACK1 <= '0';
      ACK2 <= '0';
      ACK3 <= '0';
      END_sig_Reg <= '1';
    else
      case SD_COUNTER_Reg is
        when "000000" =>
          ACK1 <= '0';
          ACK2 <= '0';
          ACK3 <= '0';
          END_sig_Reg <= '0';
          SDO_Reg <= '1';
          SCLK <= '1';
        when "000001" =>
          SD <= I2C_DATA;
          SDO_Reg <= '0';
        when "000010" =>
          SCLK <= '0';
        when "000011" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:384)
          SDO_Reg <= SD(23);
        when "000100" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:385)
          SDO_Reg <= SD(22);
        when "000101" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:386)
          SDO_Reg <= SD(21);
        when "000110" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:387)
          SDO_Reg <= SD(20);
        when "000111" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:388)
          SDO_Reg <= SD(19);
        when "001000" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:389)
          SDO_Reg <= SD(18);
        when "001001" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:390)
          SDO_Reg <= SD(17);
        when "001010" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:391)
          SDO_Reg <= SD(16);
        when "001011" =>
          SDO_Reg <= '1';
        when "001100" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:396)
          SDO_Reg <= SD(15);
          ACK1 <= I2C_SDAT;
        when "001101" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:399)
          SDO_Reg <= SD(14);
        when "001110" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:400)
          SDO_Reg <= SD(13);
        when "001111" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:401)
          SDO_Reg <= SD(12);
        when "010000" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:402)
          SDO_Reg <= SD(11);
        when "010001" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:403)
          SDO_Reg <= SD(10);
        when "010010" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:404)
          SDO_Reg <= SD(9);
        when "010011" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:405)
          SDO_Reg <= SD(8);
        when "010100" =>
          SDO_Reg <= '1';
        when "010101" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:410)
          SDO_Reg <= SD(7);
          ACK2 <= I2C_SDAT;
        when "010110" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:413)
          SDO_Reg <= SD(6);
        when "010111" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:414)
          SDO_Reg <= SD(5);
        when "011000" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:415)
          SDO_Reg <= SD(4);
        when "011001" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:416)
          SDO_Reg <= SD(3);
        when "011010" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:417)
          SDO_Reg <= SD(2);
        when "011011" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:418)
          SDO_Reg <= SD(1);
        when "011100" =>
          wait for 0 ns;  -- Read target of blocking assignment (DE10_Standard_i2sound_all.v:419)
          SDO_Reg <= SD(0);
        when "011101" =>
          SDO_Reg <= '1';
        when "011110" =>
          SDO_Reg <= '0';
          SCLK <= '0';
          ACK3 <= I2C_SDAT;
        when "011111" =>
          SCLK <= '1';
        when "100000" =>
          SDO_Reg <= '1';
          END_sig_Reg <= '1';
        when others =>
          null;
      end case;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module keytr (DE10_Standard_i2sound_all.v:443)
entity keytr is
  port (
    KEY0_EDGE : out std_logic;
    ON_sig : out std_logic;
    clock : in std_logic;
    counter : out unsigned(9 downto 0);
    key0 : in std_logic;
    rst_n : in std_logic
  );
end entity; 

-- Generated from Verilog module keytr (DE10_Standard_i2sound_all.v:443)
architecture from_verilog of keytr is
  signal counter_Reg : unsigned(9 downto 0);
  signal D1 : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:498
  signal D2 : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:499
  signal tmp_ivl_0 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:511
  signal tmp_ivl_11 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:546
  signal tmp_ivl_2 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:511
  signal tmp_ivl_4 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:511
  signal tmp_ivl_6 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:511
  signal delay : unsigned(15 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:497
  signal falling_edgee : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:500
  signal flag : std_logic;  -- Declared at DE10_Standard_i2sound_all.v:496
  signal flag_temp : unsigned(3 downto 0);  -- Declared at DE10_Standard_i2sound_all.v:495
begin
  counter <= counter_Reg;
  KEY0_EDGE <= D1 or tmp_ivl_11;
  tmp_ivl_2 <= '1' when flag_temp = tmp_ivl_0 else '0';
  falling_edgee <= tmp_ivl_4 when tmp_ivl_2 = '1' else tmp_ivl_6;
  tmp_ivl_11 <= not D2;
  ON_sig <= 'Z';
  tmp_ivl_0 <= X"3";
  tmp_ivl_4 <= '1';
  tmp_ivl_6 <= '0';
  
  -- Generated from always process in keytr (DE10_Standard_i2sound_all.v:504)
  process (clock) is
  begin
    if falling_edgee(clock) then
      if flag = '1' then
        flag_temp <= key0 & flag_temp(1 + 2 downto 1);
      end if;
    end if;
  end process;
  
  -- Generated from always process in keytr (DE10_Standard_i2sound_all.v:515)
  process (clock, rst_n) is
  begin
    if (not rst_n) = '1' then
      flag <= '1';
    elsif rising_edge(clock) then
      if delay = X"1000" then
        flag <= '1';
      else
        if falling_edgee = '1' then
          flag <= '0';
        end if;
      end if;
    end if;
  end process;
  
  -- Generated from always process in keytr (DE10_Standard_i2sound_all.v:528)
  process (clock) is
  begin
    if rising_edge(clock) then
      if (not key0) = '1' then
        delay <= delay + X"0001";
      else
        delay <= X"0000";
      end if;
    end if;
  end process;
  
  -- Generated from always process in keytr (DE10_Standard_i2sound_all.v:541)
  process (clock) is
  begin
    if falling_edgee(clock) then
      D1 <= flag;
      D2 <= D1;
    end if;
  end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module HEX (DE10_Standard_i2sound_all.v:261)
entity HEX is
  port (
    hex : in unsigned(3 downto 0);
    hex_fps : out unsigned(6 downto 0)
  );
end entity; 

-- Generated from Verilog module HEX (DE10_Standard_i2sound_all.v:261)
architecture from_verilog of HEX is
  signal tmp_ivl_0 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:267
  signal tmp_ivl_10 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:268
  signal tmp_ivl_12 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:269
  signal tmp_ivl_14 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:269
  signal tmp_ivl_16 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:269
  signal tmp_ivl_18 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:270
  signal tmp_ivl_2 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:267
  signal tmp_ivl_20 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:270
  signal tmp_ivl_22 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:270
  signal tmp_ivl_24 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:271
  signal tmp_ivl_26 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:271
  signal tmp_ivl_28 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:271
  signal tmp_ivl_30 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:272
  signal tmp_ivl_32 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:272
  signal tmp_ivl_34 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:272
  signal tmp_ivl_36 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:273
  signal tmp_ivl_38 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:273
  signal tmp_ivl_4 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:267
  signal tmp_ivl_40 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:273
  signal tmp_ivl_42 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:274
  signal tmp_ivl_44 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:274
  signal tmp_ivl_46 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:274
  signal tmp_ivl_48 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:275
  signal tmp_ivl_50 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:275
  signal tmp_ivl_52 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:275
  signal tmp_ivl_54 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:276
  signal tmp_ivl_56 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:275
  signal tmp_ivl_58 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:274
  signal tmp_ivl_6 : unsigned(3 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:268
  signal tmp_ivl_60 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:273
  signal tmp_ivl_62 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:272
  signal tmp_ivl_64 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:271
  signal tmp_ivl_66 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:270
  signal tmp_ivl_68 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:269
  signal tmp_ivl_70 : unsigned(6 downto 0);  -- Temporary created at DE10_Standard_i2sound_all.v:268
  signal tmp_ivl_8 : std_logic;  -- Temporary created at DE10_Standard_i2sound_all.v:268
begin
  tmp_ivl_2 <= '1' when hex = tmp_ivl_0 else '0';
  tmp_ivl_8 <= '1' when hex = tmp_ivl_6 else '0';
  tmp_ivl_14 <= '1' when hex = tmp_ivl_12 else '0';
  tmp_ivl_20 <= '1' when hex = tmp_ivl_18 else '0';
  tmp_ivl_26 <= '1' when hex = tmp_ivl_24 else '0';
  tmp_ivl_32 <= '1' when hex = tmp_ivl_30 else '0';
  tmp_ivl_38 <= '1' when hex = tmp_ivl_36 else '0';
  tmp_ivl_44 <= '1' when hex = tmp_ivl_42 else '0';
  tmp_ivl_50 <= '1' when hex = tmp_ivl_48 else '0';
  tmp_ivl_56 <= tmp_ivl_52 when tmp_ivl_50 = '1' else tmp_ivl_54;
  tmp_ivl_58 <= tmp_ivl_46 when tmp_ivl_44 = '1' else tmp_ivl_56;
  tmp_ivl_60 <= tmp_ivl_40 when tmp_ivl_38 = '1' else tmp_ivl_58;
  tmp_ivl_62 <= tmp_ivl_34 when tmp_ivl_32 = '1' else tmp_ivl_60;
  tmp_ivl_64 <= tmp_ivl_28 when tmp_ivl_26 = '1' else tmp_ivl_62;
  tmp_ivl_66 <= tmp_ivl_22 when tmp_ivl_20 = '1' else tmp_ivl_64;
  tmp_ivl_68 <= tmp_ivl_16 when tmp_ivl_14 = '1' else tmp_ivl_66;
  tmp_ivl_70 <= tmp_ivl_10 when tmp_ivl_8 = '1' else tmp_ivl_68;
  hex_fps <= tmp_ivl_4 when tmp_ivl_2 = '1' else tmp_ivl_70;
  tmp_ivl_0 <= X"0";
  tmp_ivl_10 <= "1111001";
  tmp_ivl_12 <= X"2";
  tmp_ivl_16 <= "0100100";
  tmp_ivl_18 <= X"3";
  tmp_ivl_22 <= "0110000";
  tmp_ivl_24 <= X"4";
  tmp_ivl_28 <= "0011001";
  tmp_ivl_30 <= X"5";
  tmp_ivl_34 <= "0010010";
  tmp_ivl_36 <= X"6";
  tmp_ivl_4 <= "1000000";
  tmp_ivl_40 <= "0000010";
  tmp_ivl_42 <= X"7";
  tmp_ivl_46 <= "1111000";
  tmp_ivl_48 <= X"8";
  tmp_ivl_52 <= "0000000";
  tmp_ivl_54 <= "0010000";
  tmp_ivl_6 <= X"1";
end architecture;

