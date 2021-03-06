-- This VHDL was converted from Verilog using the
-- Icarus Verilog VHDL Code Generator 12.0 (devel) (s20150603-1110-g18392a46)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Generated from Verilog module i2c (i2c.v:43)
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

-- Generated from Verilog module i2c (i2c.v:43)
architecture from_verilog of i2c is
  signal END_sig_Reg : std_logic;
  signal SDO_Reg : std_logic;
  signal SD_COUNTER_Reg : unsigned(5 downto 0);
  signal ACK1 : std_logic;  -- Declared at i2c.v:88
  signal ACK2 : std_logic;  -- Declared at i2c.v:88
  signal ACK3 : std_logic;  -- Declared at i2c.v:88
  signal SCLK : std_logic;  -- Declared at i2c.v:80
  signal SD : unsigned(23 downto 0);  -- Declared at i2c.v:82
  signal tmp_ivl_0 : unsigned(31 downto 0);  -- Temporary created at i2c.v:85
  signal tmp_ivl_11 : unsigned(25 downto 0);  -- Temporary created at i2c.v:85
  signal tmp_ivl_12 : unsigned(31 downto 0);  -- Temporary created at i2c.v:85
  signal tmp_ivl_14 : std_logic;  -- Temporary created at i2c.v:85
  signal tmp_ivl_16 : std_logic;  -- Temporary created at i2c.v:85
  signal tmp_ivl_18 : std_logic;  -- Temporary created at i2c.v:85
  signal tmp_ivl_20 : std_logic;  -- Temporary created at i2c.v:85
  signal tmp_ivl_22 : std_logic;  -- Temporary created at i2c.v:85
  signal tmp_ivl_26 : std_logic;  -- Temporary created at i2c.v:86
  signal tmp_ivl_28 : std_logic;  -- Temporary created at i2c.v:86
  signal tmp_ivl_3 : unsigned(25 downto 0);  -- Temporary created at i2c.v:85
  signal tmp_ivl_32 : std_logic;  -- Temporary created at i2c.v:89
  signal tmp_ivl_4 : unsigned(31 downto 0);  -- Temporary created at i2c.v:85
  signal tmp_ivl_6 : std_logic;  -- Temporary created at i2c.v:85
  signal tmp_ivl_8 : unsigned(31 downto 0);  -- Temporary created at i2c.v:85
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
  
  -- Generated from always process in i2c (i2c.v:96)
  process is
  begin
    if (falling_edge(RESET) or rising_edge(CLOCK)) then--    wait until falling_edge(RESET) or rising_edge(CLOCK);
    if (not RESET) = '1' then
      SD_COUNTER_Reg <= "111111";
    else
      if (unsigned'("0000000000000000000000000000000") & GO) = X"00000000" then
        SD_COUNTER_Reg <= "000000";
      else
--        wait for 0 ns;  -- Read target of blocking assignment (i2c.v:108)
        if SD_COUNTER_Reg < "111111" then
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:110)
          SD_COUNTER_Reg <= SD_COUNTER_Reg + "000001";
        end if;
      end if;
    end if;
	 
	 end if; -- falling edge or rising edge
  end process;
  
  -- Generated from always process in i2c (i2c.v:117)
  process is
  begin
	if (falling_edge(RESET) or rising_edge(CLOCK)) then
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
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:146)
          SDO_Reg <= SD(23);
        when "000100" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:147)
          SDO_Reg <= SD(22);
        when "000101" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:148)
          SDO_Reg <= SD(21);
        when "000110" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:149)
          SDO_Reg <= SD(20);
        when "000111" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:150)
          SDO_Reg <= SD(19);
        when "001000" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:151)
          SDO_Reg <= SD(18);
        when "001001" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:152)
          SDO_Reg <= SD(17);
        when "001010" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:153)
          SDO_Reg <= SD(16);
        when "001011" =>
          SDO_Reg <= '1';
        when "001100" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:158)
          SDO_Reg <= SD(15);
          ACK1 <= I2C_SDAT;
        when "001101" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:161)
          SDO_Reg <= SD(14);
        when "001110" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:162)
          SDO_Reg <= SD(13);
        when "001111" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:163)
          SDO_Reg <= SD(12);
        when "010000" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:164)
          SDO_Reg <= SD(11);
        when "010001" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:165)
          SDO_Reg <= SD(10);
        when "010010" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:166)
          SDO_Reg <= SD(9);
        when "010011" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:167)
          SDO_Reg <= SD(8);
        when "010100" =>
          SDO_Reg <= '1';
        when "010101" =>
--          wait for 0 ns;  -- Read target of blocking assignment (i2c.v:172)
          SDO_Reg <= SD(7);
          ACK2 <= I2C_SDAT;
        when "010110" =>
 --         wait for 0 ns;  -- Read target of blocking assignment (i2c.v:175)
          SDO_Reg <= SD(6);
        when "010111" =>
 --         wait for 0 ns;  -- Read target of blocking assignment (i2c.v:176)
          SDO_Reg <= SD(5);
        when "011000" =>
 --         wait for 0 ns;  -- Read target of blocking assignment (i2c.v:177)
          SDO_Reg <= SD(4);
        when "011001" =>
 --         wait for 0 ns;  -- Read target of blocking assignment (i2c.v:178)
          SDO_Reg <= SD(3);
        when "011010" =>
 --         wait for 0 ns;  -- Read target of blocking assignment (i2c.v:179)
          SDO_Reg <= SD(2);
        when "011011" =>
 --         wait for 0 ns;  -- Read target of blocking assignment (i2c.v:180)
          SDO_Reg <= SD(1);
        when "011100" =>
 --         wait for 0 ns;  -- Read target of blocking assignment (i2c.v:181)
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
	 
	 end if; --falling edge or rising edge
  end process;
  
  
end architecture;

