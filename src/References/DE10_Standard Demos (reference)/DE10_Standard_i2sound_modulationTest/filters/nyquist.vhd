-- -------------------------------------------------------------
--
-- Module: nyquist
-- Generated by MATLAB(R) 9.11 and Filter Design HDL Coder 3.1.10.
-- Generated on: 2022-04-26 01:11:43
-- -------------------------------------------------------------

-- -------------------------------------------------------------
-- HDL Code Generation Options:
--
-- TargetLanguage: VHDL
-- InputType: signed/unsigned
-- OptimizeForHDL: on
-- Name: nyquist
-- TestBenchName: nyquist_tb
-- TestBenchStimulus: impulse step ramp chirp noise 
-- ClockHighTime: 10
-- ClockLowTime: 10

-- -------------------------------------------------------------
-- HDL Implementation    : Fully parallel
-- Folding Factor        : 1
-- -------------------------------------------------------------
-- Filter Settings:
--
-- Discrete-Time FIR Filter (real)
-- -------------------------------
-- Filter Structure  : Direct-Form FIR
-- Filter Length     : 25
-- Stable            : Yes
-- Linear Phase      : Yes (Type 1)
-- Arithmetic        : fixed
-- Numerator         : s16,16 -> [-5.000000e-01 5.000000e-01)
-- Input             : s16,15 -> [-1 1)
-- Filter Internals  : Full Precision
--   Output          : s33,31 -> [-2 2)  (auto determined)
--   Product         : s31,31 -> [-5.000000e-01 5.000000e-01)  (auto determined)
--   Accumulator     : s33,31 -> [-2 2)  (auto determined)
--   Round Mode      : No rounding
--   Overflow Mode   : No overflow
-- -------------------------------------------------------------



LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;

ENTITY nyquist IS
   PORT( clk                             :   IN    std_logic; 
         clk_enable                      :   IN    std_logic; 
         reset                           :   IN    std_logic; 
         filter_in                       :   IN    signed(15 DOWNTO 0); -- sfix16_En15
         filter_out                      :   OUT   signed(32 DOWNTO 0)  -- sfix33_En31
         );

END nyquist;


----------------------------------------------------------------
--Module Architecture: nyquist
----------------------------------------------------------------
ARCHITECTURE rtl OF nyquist IS
  -- Local Functions
  -- Type Definitions
  TYPE delay_pipeline_type IS ARRAY (NATURAL range <>) OF signed(15 DOWNTO 0); -- sfix16_En15
  -- Constants
  CONSTANT coeff1                         : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeff2                         : signed(15 DOWNTO 0) := to_signed(23, 16); -- sfix16_En16
  CONSTANT coeff3                         : signed(15 DOWNTO 0) := to_signed(140, 16); -- sfix16_En16
  CONSTANT coeff4                         : signed(15 DOWNTO 0) := to_signed(240, 16); -- sfix16_En16
  CONSTANT coeff5                         : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeff6                         : signed(15 DOWNTO 0) := to_signed(-781, 16); -- sfix16_En16
  CONSTANT coeff7                         : signed(15 DOWNTO 0) := to_signed(-1738, 16); -- sfix16_En16
  CONSTANT coeff8                         : signed(15 DOWNTO 0) := to_signed(-1857, 16); -- sfix16_En16
  CONSTANT coeff9                         : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeff10                        : signed(15 DOWNTO 0) := to_signed(4197, 16); -- sfix16_En16
  CONSTANT coeff11                        : signed(15 DOWNTO 0) := to_signed(9732, 16); -- sfix16_En16
  CONSTANT coeff12                        : signed(15 DOWNTO 0) := to_signed(14499, 16); -- sfix16_En16
  CONSTANT coeff13                        : signed(15 DOWNTO 0) := to_signed(16384, 16); -- sfix16_En16
  CONSTANT coeff14                        : signed(15 DOWNTO 0) := to_signed(14499, 16); -- sfix16_En16
  CONSTANT coeff15                        : signed(15 DOWNTO 0) := to_signed(9732, 16); -- sfix16_En16
  CONSTANT coeff16                        : signed(15 DOWNTO 0) := to_signed(4197, 16); -- sfix16_En16
  CONSTANT coeff17                        : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeff18                        : signed(15 DOWNTO 0) := to_signed(-1857, 16); -- sfix16_En16
  CONSTANT coeff19                        : signed(15 DOWNTO 0) := to_signed(-1738, 16); -- sfix16_En16
  CONSTANT coeff20                        : signed(15 DOWNTO 0) := to_signed(-781, 16); -- sfix16_En16
  CONSTANT coeff21                        : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeff22                        : signed(15 DOWNTO 0) := to_signed(240, 16); -- sfix16_En16
  CONSTANT coeff23                        : signed(15 DOWNTO 0) := to_signed(140, 16); -- sfix16_En16
  CONSTANT coeff24                        : signed(15 DOWNTO 0) := to_signed(23, 16); -- sfix16_En16
  CONSTANT coeff25                        : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16

  -- Signals
  SIGNAL delay_pipeline                   : delay_pipeline_type(0 TO 24); -- sfix16_En15
  SIGNAL product24                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp                         : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product23                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_1                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product22                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_2                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product20                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_3                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product19                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_4                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product18                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_5                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product16                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_6                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product15                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_7                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product14                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_8                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product13                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL product12                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_9                       : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product11                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_10                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product10                        : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_11                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product8                         : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_12                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product7                         : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_13                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product6                         : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_14                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product4                         : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_15                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product3                         : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_16                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL product2                         : signed(30 DOWNTO 0); -- sfix31_En31
  SIGNAL mul_temp_17                      : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL sum1                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp                         : signed(31 DOWNTO 0); -- sfix32_En31
  SIGNAL sum2                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_1                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum3                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_2                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum4                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_3                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum5                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_4                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum6                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_5                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum7                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_6                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum8                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_7                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum9                             : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_8                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum10                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_9                       : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum11                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_10                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum12                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_11                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum13                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_12                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum14                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_13                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum15                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_14                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum16                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_15                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum17                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_16                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL sum18                            : signed(32 DOWNTO 0); -- sfix33_En31
  SIGNAL add_temp_17                      : signed(33 DOWNTO 0); -- sfix34_En31
  SIGNAL output_register                  : signed(32 DOWNTO 0); -- sfix33_En31


BEGIN

  -- Block Statements
  Delay_Pipeline_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delay_pipeline(0 TO 24) <= (OTHERS => (OTHERS => '0'));
    ELSIF clk'event AND clk = '1' THEN
      IF clk_enable = '1' THEN
        delay_pipeline(0) <= filter_in;
        delay_pipeline(1 TO 24) <= delay_pipeline(0 TO 23);
      END IF;
    END IF; 
  END PROCESS Delay_Pipeline_process;

  mul_temp <= delay_pipeline(23) * coeff24;
  product24 <= mul_temp(30 DOWNTO 0);

  mul_temp_1 <= delay_pipeline(22) * coeff23;
  product23 <= mul_temp_1(30 DOWNTO 0);

  mul_temp_2 <= delay_pipeline(21) * coeff22;
  product22 <= mul_temp_2(30 DOWNTO 0);

  mul_temp_3 <= delay_pipeline(19) * coeff20;
  product20 <= mul_temp_3(30 DOWNTO 0);

  mul_temp_4 <= delay_pipeline(18) * coeff19;
  product19 <= mul_temp_4(30 DOWNTO 0);

  mul_temp_5 <= delay_pipeline(17) * coeff18;
  product18 <= mul_temp_5(30 DOWNTO 0);

  mul_temp_6 <= delay_pipeline(15) * coeff16;
  product16 <= mul_temp_6(30 DOWNTO 0);

  mul_temp_7 <= delay_pipeline(14) * coeff15;
  product15 <= mul_temp_7(30 DOWNTO 0);

  mul_temp_8 <= delay_pipeline(13) * coeff14;
  product14 <= mul_temp_8(30 DOWNTO 0);

  product13 <= resize(delay_pipeline(12)(15 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 31);

  mul_temp_9 <= delay_pipeline(11) * coeff12;
  product12 <= mul_temp_9(30 DOWNTO 0);

  mul_temp_10 <= delay_pipeline(10) * coeff11;
  product11 <= mul_temp_10(30 DOWNTO 0);

  mul_temp_11 <= delay_pipeline(9) * coeff10;
  product10 <= mul_temp_11(30 DOWNTO 0);

  mul_temp_12 <= delay_pipeline(7) * coeff8;
  product8 <= mul_temp_12(30 DOWNTO 0);

  mul_temp_13 <= delay_pipeline(6) * coeff7;
  product7 <= mul_temp_13(30 DOWNTO 0);

  mul_temp_14 <= delay_pipeline(5) * coeff6;
  product6 <= mul_temp_14(30 DOWNTO 0);

  mul_temp_15 <= delay_pipeline(3) * coeff4;
  product4 <= mul_temp_15(30 DOWNTO 0);

  mul_temp_16 <= delay_pipeline(2) * coeff3;
  product3 <= mul_temp_16(30 DOWNTO 0);

  mul_temp_17 <= delay_pipeline(1) * coeff2;
  product2 <= mul_temp_17(30 DOWNTO 0);

  add_temp <= resize(product2, 32) + resize(product3, 32);
  sum1 <= resize(add_temp, 33);

  add_temp_1 <= resize(sum1, 34) + resize(product4, 34);
  sum2 <= add_temp_1(32 DOWNTO 0);

  add_temp_2 <= resize(sum2, 34) + resize(product6, 34);
  sum3 <= add_temp_2(32 DOWNTO 0);

  add_temp_3 <= resize(sum3, 34) + resize(product7, 34);
  sum4 <= add_temp_3(32 DOWNTO 0);

  add_temp_4 <= resize(sum4, 34) + resize(product8, 34);
  sum5 <= add_temp_4(32 DOWNTO 0);

  add_temp_5 <= resize(sum5, 34) + resize(product10, 34);
  sum6 <= add_temp_5(32 DOWNTO 0);

  add_temp_6 <= resize(sum6, 34) + resize(product11, 34);
  sum7 <= add_temp_6(32 DOWNTO 0);

  add_temp_7 <= resize(sum7, 34) + resize(product12, 34);
  sum8 <= add_temp_7(32 DOWNTO 0);

  add_temp_8 <= resize(sum8, 34) + resize(product13, 34);
  sum9 <= add_temp_8(32 DOWNTO 0);

  add_temp_9 <= resize(sum9, 34) + resize(product14, 34);
  sum10 <= add_temp_9(32 DOWNTO 0);

  add_temp_10 <= resize(sum10, 34) + resize(product15, 34);
  sum11 <= add_temp_10(32 DOWNTO 0);

  add_temp_11 <= resize(sum11, 34) + resize(product16, 34);
  sum12 <= add_temp_11(32 DOWNTO 0);

  add_temp_12 <= resize(sum12, 34) + resize(product18, 34);
  sum13 <= add_temp_12(32 DOWNTO 0);

  add_temp_13 <= resize(sum13, 34) + resize(product19, 34);
  sum14 <= add_temp_13(32 DOWNTO 0);

  add_temp_14 <= resize(sum14, 34) + resize(product20, 34);
  sum15 <= add_temp_14(32 DOWNTO 0);

  add_temp_15 <= resize(sum15, 34) + resize(product22, 34);
  sum16 <= add_temp_15(32 DOWNTO 0);

  add_temp_16 <= resize(sum16, 34) + resize(product23, 34);
  sum17 <= add_temp_16(32 DOWNTO 0);

  add_temp_17 <= resize(sum17, 34) + resize(product24, 34);
  sum18 <= add_temp_17(32 DOWNTO 0);

  Output_Register_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      output_register <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      IF clk_enable = '1' THEN
        output_register <= sum18;
      END IF;
    END IF; 
  END PROCESS Output_Register_process;

  -- Assignment Statements
  filter_out <= output_register;
END rtl;
