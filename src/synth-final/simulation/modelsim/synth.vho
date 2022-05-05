-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/05/2022 01:14:07"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Level IS
    PORT (
	AUD_ADCDAT : IN std_logic;
	AUD_DACDAT : BUFFER std_logic;
	AUD_XCK : BUFFER std_logic;
	CLOCK_50 : IN std_logic;
	FPGA_I2C_SCLK : BUFFER std_logic;
	FPGA_I2C_SDAT : BUFFER std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	MIDI_RX : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END Top_Level;

-- Design Ports Information
-- AUD_DACDAT	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- AUD_XCK	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- FPGA_I2C_SCLK	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[2]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SDAT	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MIDI_RX	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Top_Level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_FPGA_I2C_SCLK : std_logic;
SIGNAL ww_FPGA_I2C_SDAT : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_MIDI_RX : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i2sound|u1|COUNTER_500[0]~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Add0~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~2\ : std_logic;
SIGNAL \i2sound|u1|Add0~37_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~38\ : std_logic;
SIGNAL \i2sound|u1|Add0~33_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~34\ : std_logic;
SIGNAL \i2sound|u1|Add0~29_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~30\ : std_logic;
SIGNAL \i2sound|u1|Add0~25_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~26\ : std_logic;
SIGNAL \i2sound|u1|Add0~21_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~22\ : std_logic;
SIGNAL \i2sound|u1|Add0~17_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~18\ : std_logic;
SIGNAL \i2sound|u1|Add0~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~10\ : std_logic;
SIGNAL \i2sound|u1|Add0~5_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add0~6\ : std_logic;
SIGNAL \i2sound|u1|Add0~13_sumout\ : std_logic;
SIGNAL \i2sound|u1|address[1]~2_combout\ : std_logic;
SIGNAL \i2sound|u3|Add0~17_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \i2sound|u3|Add0~18\ : std_logic;
SIGNAL \i2sound|u3|Add0~13_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~14\ : std_logic;
SIGNAL \i2sound|u3|Add0~5_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~6\ : std_logic;
SIGNAL \i2sound|u3|Add0~21_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~22\ : std_logic;
SIGNAL \i2sound|u3|Add0~9_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~10\ : std_logic;
SIGNAL \i2sound|u3|Add0~25_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~26\ : std_logic;
SIGNAL \i2sound|u3|Add0~29_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~30\ : std_logic;
SIGNAL \i2sound|u3|Add0~33_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~34\ : std_logic;
SIGNAL \i2sound|u3|Add0~37_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~38\ : std_logic;
SIGNAL \i2sound|u3|Add0~45_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~46\ : std_logic;
SIGNAL \i2sound|u3|Add0~49_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~50\ : std_logic;
SIGNAL \i2sound|u3|Add0~53_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~54\ : std_logic;
SIGNAL \i2sound|u3|Add0~57_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~58\ : std_logic;
SIGNAL \i2sound|u3|Add0~1_sumout\ : std_logic;
SIGNAL \i2sound|u3|Add0~2\ : std_logic;
SIGNAL \i2sound|u3|Add0~61_sumout\ : std_logic;
SIGNAL \i2sound|u3|Equal1~2_combout\ : std_logic;
SIGNAL \i2sound|u3|Add0~62\ : std_logic;
SIGNAL \i2sound|u3|Add0~41_sumout\ : std_logic;
SIGNAL \i2sound|u3|Equal1~1_combout\ : std_logic;
SIGNAL \i2sound|u3|Equal1~0_combout\ : std_logic;
SIGNAL \i2sound|u3|flag~0_combout\ : std_logic;
SIGNAL \i2sound|u3|flag~1_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \i2sound|u3|flag~q\ : std_logic;
SIGNAL \i2sound|u3|D1~0_combout\ : std_logic;
SIGNAL \i2sound|u3|D1~q\ : std_logic;
SIGNAL \i2sound|u3|D2~q\ : std_logic;
SIGNAL \i2sound|u3|KEY0_EDGE~combout\ : std_logic;
SIGNAL \i2sound|u1|address[2]~1_combout\ : std_logic;
SIGNAL \i2sound|u1|address[3]~0_combout\ : std_logic;
SIGNAL \i2sound|u1|address[0]~3_combout\ : std_logic;
SIGNAL \i2sound|u1|LessThan0~0_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[1]~7_combout\ : std_logic;
SIGNAL \i2sound|u2|LessThan1~0_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[2]~6_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[5]~0_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[5]~1_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[4]~2_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[5]~4_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[0]~8_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sound|u2|Decoder0~0_combout\ : std_logic;
SIGNAL \i2sound|u2|Selector0~0_combout\ : std_logic;
SIGNAL \i2sound|u2|END~0_combout\ : std_logic;
SIGNAL \i2sound|u2|END~q\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[5]~3_combout\ : std_logic;
SIGNAL \i2sound|u2|SD_COUNTER[3]~5_combout\ : std_logic;
SIGNAL \i2sound|u2|Mux0~0_combout\ : std_logic;
SIGNAL \i2sound|u1|WideOr0~0_combout\ : std_logic;
SIGNAL \i2sound|u2|Decoder0~1_combout\ : std_logic;
SIGNAL \i2sound|u2|SDO~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Mux1~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Mux0~0_combout\ : std_logic;
SIGNAL \i2sound|u2|Mux0~4_combout\ : std_logic;
SIGNAL \i2sound|u1|vol[0]~8_combout\ : std_logic;
SIGNAL \i2sound|u1|Mux6~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Decoder2~0_combout\ : std_logic;
SIGNAL \i2sound|u2|Mux0~3_combout\ : std_logic;
SIGNAL \i2sound|u1|WideOr5~0_combout\ : std_logic;
SIGNAL \i2sound|u1|vol~0_combout\ : std_logic;
SIGNAL \i2sound|u1|vol~1_combout\ : std_logic;
SIGNAL \i2sound|u1|vol~3_combout\ : std_logic;
SIGNAL \i2sound|u1|vol~2_combout\ : std_logic;
SIGNAL \i2sound|u1|Mux4~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Mux5~0_combout\ : std_logic;
SIGNAL \i2sound|u2|Mux0~2_combout\ : std_logic;
SIGNAL \i2sound|u1|WideOr2~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Mux2~0_combout\ : std_logic;
SIGNAL \i2sound|u1|DATA_A~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Mux3~0_combout\ : std_logic;
SIGNAL \i2sound|u2|Mux0~1_combout\ : std_logic;
SIGNAL \i2sound|u2|Mux0~5_combout\ : std_logic;
SIGNAL \i2sound|u2|SDO~1_combout\ : std_logic;
SIGNAL \i2sound|u2|SDO~q\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \audio_in~0_combout\ : std_logic;
SIGNAL \audio_in~q\ : std_logic;
SIGNAL \AUD_DACDAT_Reg~q\ : std_logic;
SIGNAL \AUD_XCK_Reg~feeder_combout\ : std_logic;
SIGNAL \AUD_XCK_Reg~q\ : std_logic;
SIGNAL \i2sound|u2|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \i2sound|u2|SCLK~0_combout\ : std_logic;
SIGNAL \i2sound|u2|Selector1~0_combout\ : std_logic;
SIGNAL \i2sound|u2|SCLK~1_combout\ : std_logic;
SIGNAL \i2sound|u2|SCLK~q\ : std_logic;
SIGNAL \i2sound|u2|I2C_SCLK~1_combout\ : std_logic;
SIGNAL \FPGA_I2C_SCLK_Reg~q\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_21~10\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_21~6\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add3~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_21~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Add3~1_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_22~14\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_22~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~0_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_21~5_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_22~10\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_22~6_cout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~1_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_22~13_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_23~14\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_23~10\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_23~6_cout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~2_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_23~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~3_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_23~13_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_25~14\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_25~10\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_25~6_cout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_25~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~4_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~5_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_25~13_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[90]~6_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_26~10_cout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_26~6_cout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\ : std_logic;
SIGNAL \i2sound|u4|hex_fps[0]~0_combout\ : std_logic;
SIGNAL \i2sound|u4|hex_fps[1]~1_combout\ : std_logic;
SIGNAL \i2sound|u4|hex_fps[2]~2_combout\ : std_logic;
SIGNAL \i2sound|u4|hex_fps[3]~3_combout\ : std_logic;
SIGNAL \i2sound|u4|hex_fps[4]~4_combout\ : std_logic;
SIGNAL \i2sound|u4|hex_fps[5]~5_combout\ : std_logic;
SIGNAL \i2sound|u4|hex_fps[6]~6_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~5_sumout\ : std_logic;
SIGNAL \MIDI_RX~input_o\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~1_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~26\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~29_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~37_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~38\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~41_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~42\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~45_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~46\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~33_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~34\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~5_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~6\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~9_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~10\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~13_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~14\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~17_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~18\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~21_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~22\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~25_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~26\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~29_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~30\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~1_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[1]~3_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux8~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~2\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~5_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux7~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~6\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~9_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux6~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~10\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~13_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux5~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~14\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~17_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux4~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~18\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~21_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux3~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~22\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~25_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux2~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~4_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~8_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~6\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~1_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~2\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~9_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~10\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~17_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~18\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~13_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~14\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~29_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~30\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~25_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~26\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~21_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~11_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~3_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux0~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte0[5]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~4_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|status[3]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~6_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte0[0]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~9_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~7_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~10_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~8_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte0[1]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~4_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte0[4]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~5_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~6_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~7_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~8_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~3_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte1[2]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|Equal2~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|LEDR_Reg[0]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|Mux98~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\ : std_logic;
SIGNAL \LEDR_Reg[0]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|LEDR_Reg[1]~feeder_combout\ : std_logic;
SIGNAL \LEDR_Reg[1]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~2_combout\ : std_logic;
SIGNAL \LEDR_Reg[2]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|LEDR_Reg[3]~feeder_combout\ : std_logic;
SIGNAL \LEDR_Reg[3]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|LEDR_Reg[4]~feeder_combout\ : std_logic;
SIGNAL \LEDR_Reg[4]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~2_combout\ : std_logic;
SIGNAL \LEDR_Reg[5]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~2_combout\ : std_logic;
SIGNAL \LEDR_Reg[6]~feeder_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|LEDR_Reg[7]~feeder_combout\ : std_logic;
SIGNAL \i2sound|u3|delay\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|status\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|LEDR_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2sound|u2|SD\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \i2sound|u1|DATA_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL HEX0_Reg : std_logic_vector(6 DOWNTO 0);
SIGNAL LEDR_Reg : std_logic_vector(9 DOWNTO 0);
SIGNAL \i2sound|u1|COUNTER_500\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2sound|u2|SD_COUNTER\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i2sound|u1|address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \i2sound|u1|vol\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|dataByte0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|controllerNumber\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2sound|u3|flag_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~7_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~5_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_flag~q\ : std_logic;
SIGNAL \i2sound|u1|ALT_INV_COUNTER_500\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~6_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~5_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~4_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~6_combout\ : std_logic;
SIGNAL \i2sound|u1|ALT_INV_vol\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i2sound|u3|ALT_INV_KEY0_EDGE~combout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_D2~q\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_D1~q\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SDO~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SD\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \i2sound|u2|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux98~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux98~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~2_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg[0]~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_isDataByteAvailable~q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~5_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~4_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~3_combout\ : std_logic;
SIGNAL \i2sound|u1|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~2_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~1_combout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~0_combout\ : std_logic;
SIGNAL \i2sound|u1|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SDO~q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SD_COUNTER[5]~4_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SD_COUNTER[5]~3_combout\ : std_logic;
SIGNAL \i2sound|u1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i2sound|u1|ALT_INV_address\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2sound|u2|ALT_INV_END~q\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SD_COUNTER[5]~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SCLK~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_I2C_SCLK~0_combout\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SD_COUNTER\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i2sound|u2|ALT_INV_SCLK~q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState[0]~4_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_delay\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~5_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\ : std_logic;
SIGNAL \soundmodule_inst|ALT_INV_LEDR_Reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ : std_logic;
SIGNAL \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0[5]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[1]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[0]~DUPLICATE_q\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MIDI_RX~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_flag~0_combout\ : std_logic;
SIGNAL \i2sound|u3|ALT_INV_flag_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~2_combout\ : std_logic;

BEGIN

ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_XCK <= ww_AUD_XCK;
ww_CLOCK_50 <= CLOCK_50;
FPGA_I2C_SCLK <= ww_FPGA_I2C_SCLK;
FPGA_I2C_SDAT <= ww_FPGA_I2C_SDAT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_MIDI_RX <= MIDI_RX;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~7_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~7_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~5_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~1_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(7) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(7);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(6);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(5) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(5);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(4);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(3);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(2);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(1);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(0);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\;
\i2sound|u3|ALT_INV_flag~q\ <= NOT \i2sound|u3|flag~q\;
\i2sound|u1|ALT_INV_COUNTER_500\(7) <= NOT \i2sound|u1|COUNTER_500\(7);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~6_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~6_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~5_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~5_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~4_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~4_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|controllerNumber\(3);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|controllerNumber\(2);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|controllerNumber\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|controllerNumber\(0);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|controllerNumber\(6);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(5) <= NOT \soundmodule_inst|MidiProcessor_inst|controllerNumber\(5);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|controllerNumber\(4);
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~6_combout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[90]~6_combout\;
\i2sound|u1|ALT_INV_vol\(0) <= NOT \i2sound|u1|vol\(0);
\i2sound|u1|ALT_INV_vol\(1) <= NOT \i2sound|u1|vol\(1);
\i2sound|u3|ALT_INV_KEY0_EDGE~combout\ <= NOT \i2sound|u3|KEY0_EDGE~combout\;
\i2sound|u3|ALT_INV_D2~q\ <= NOT \i2sound|u3|D2~q\;
\i2sound|u3|ALT_INV_D1~q\ <= NOT \i2sound|u3|D1~q\;
\i2sound|u1|ALT_INV_COUNTER_500\(8) <= NOT \i2sound|u1|COUNTER_500\(8);
\i2sound|u2|ALT_INV_SDO~0_combout\ <= NOT \i2sound|u2|SDO~0_combout\;
\i2sound|u2|ALT_INV_SD\(12) <= NOT \i2sound|u2|SD\(12);
\i2sound|u2|ALT_INV_Mux0~5_combout\ <= NOT \i2sound|u2|Mux0~5_combout\;
\i2sound|u2|ALT_INV_Mux0~4_combout\ <= NOT \i2sound|u2|Mux0~4_combout\;
\i2sound|u2|ALT_INV_SD\(6) <= NOT \i2sound|u2|SD\(6);
\i2sound|u2|ALT_INV_SD\(5) <= NOT \i2sound|u2|SD\(5);
\i2sound|u2|ALT_INV_Mux0~3_combout\ <= NOT \i2sound|u2|Mux0~3_combout\;
\i2sound|u2|ALT_INV_SD\(7) <= NOT \i2sound|u2|SD\(7);
\i2sound|u2|ALT_INV_SD\(0) <= NOT \i2sound|u2|SD\(0);
\i2sound|u2|ALT_INV_Mux0~2_combout\ <= NOT \i2sound|u2|Mux0~2_combout\;
\i2sound|u2|ALT_INV_SD\(2) <= NOT \i2sound|u2|SD\(2);
\i2sound|u2|ALT_INV_SD\(9) <= NOT \i2sound|u2|SD\(9);
\i2sound|u2|ALT_INV_SD\(1) <= NOT \i2sound|u2|SD\(1);
\i2sound|u2|ALT_INV_Mux0~1_combout\ <= NOT \i2sound|u2|Mux0~1_combout\;
\i2sound|u2|ALT_INV_SD\(3) <= NOT \i2sound|u2|SD\(3);
\i2sound|u2|ALT_INV_SD\(4) <= NOT \i2sound|u2|SD\(4);
\i2sound|u2|ALT_INV_SD\(10) <= NOT \i2sound|u2|SD\(10);
\i2sound|u2|ALT_INV_SD\(11) <= NOT \i2sound|u2|SD\(11);
\i2sound|u2|ALT_INV_Mux0~0_combout\ <= NOT \i2sound|u2|Mux0~0_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux98~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|Mux98~1_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux98~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~2_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~2_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte0\(3);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte0\(2);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~1_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte0\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte0\(0);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte0\(6);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte0\(4);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg[0]~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|status\(3);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|status\(2);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_isDataByteAvailable~q\ <= NOT \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|status\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_Equal2~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|Equal2~0_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(5) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte1\(5);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte1\(4);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte1\(3);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte1\(2);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte1\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte1\(0);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux62~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte1\(6);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|status\(0);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5) <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3);
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~5_combout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~5_combout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~4_combout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~4_combout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~3_combout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~3_combout\;
\i2sound|u1|ALT_INV_Add3~1_combout\ <= NOT \i2sound|u1|Add3~1_combout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~2_combout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~2_combout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~1_combout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~1_combout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~0_combout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~0_combout\;
\i2sound|u1|ALT_INV_Add3~0_combout\ <= NOT \i2sound|u1|Add3~0_combout\;
\i2sound|u1|ALT_INV_vol\(2) <= NOT \i2sound|u1|vol\(2);
\i2sound|u1|ALT_INV_vol\(3) <= NOT \i2sound|u1|vol\(3);
\i2sound|u1|ALT_INV_vol\(4) <= NOT \i2sound|u1|vol\(4);
\i2sound|u2|ALT_INV_Decoder0~0_combout\ <= NOT \i2sound|u2|Decoder0~0_combout\;
\i2sound|u2|ALT_INV_Selector0~0_combout\ <= NOT \i2sound|u2|Selector0~0_combout\;
\i2sound|u1|ALT_INV_COUNTER_500\(0) <= NOT \i2sound|u1|COUNTER_500\(0);
\i2sound|u2|ALT_INV_SDO~q\ <= NOT \i2sound|u2|SDO~q\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(7) <= NOT \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(7);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(4);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(3);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(1);
\soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\ <= NOT \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(0);
\i2sound|u2|ALT_INV_LessThan1~0_combout\ <= NOT \i2sound|u2|LessThan1~0_combout\;
\i2sound|u2|ALT_INV_SD_COUNTER[5]~4_combout\ <= NOT \i2sound|u2|SD_COUNTER[5]~4_combout\;
\i2sound|u2|ALT_INV_SD_COUNTER[5]~3_combout\ <= NOT \i2sound|u2|SD_COUNTER[5]~3_combout\;
\i2sound|u1|ALT_INV_LessThan0~0_combout\ <= NOT \i2sound|u1|LessThan0~0_combout\;
\i2sound|u1|ALT_INV_address\(0) <= NOT \i2sound|u1|address\(0);
\i2sound|u1|ALT_INV_address\(1) <= NOT \i2sound|u1|address\(1);
\i2sound|u1|ALT_INV_address\(2) <= NOT \i2sound|u1|address\(2);
\i2sound|u1|ALT_INV_address\(3) <= NOT \i2sound|u1|address\(3);
\i2sound|u2|ALT_INV_END~q\ <= NOT \i2sound|u2|END~q\;
\i2sound|u1|ALT_INV_COUNTER_500\(10) <= NOT \i2sound|u1|COUNTER_500\(10);
\i2sound|u2|ALT_INV_SD_COUNTER[5]~0_combout\ <= NOT \i2sound|u2|SD_COUNTER[5]~0_combout\;
\i2sound|u2|ALT_INV_SCLK~0_combout\ <= NOT \i2sound|u2|SCLK~0_combout\;
\i2sound|u2|ALT_INV_Selector1~0_combout\ <= NOT \i2sound|u2|Selector1~0_combout\;
\i2sound|u2|ALT_INV_I2C_SCLK~0_combout\ <= NOT \i2sound|u2|I2C_SCLK~0_combout\;
\i2sound|u2|ALT_INV_SD_COUNTER\(0) <= NOT \i2sound|u2|SD_COUNTER\(0);
\i2sound|u2|ALT_INV_SD_COUNTER\(1) <= NOT \i2sound|u2|SD_COUNTER\(1);
\i2sound|u2|ALT_INV_SD_COUNTER\(2) <= NOT \i2sound|u2|SD_COUNTER\(2);
\i2sound|u2|ALT_INV_SD_COUNTER\(3) <= NOT \i2sound|u2|SD_COUNTER\(3);
\i2sound|u2|ALT_INV_SD_COUNTER\(4) <= NOT \i2sound|u2|SD_COUNTER\(4);
\i2sound|u2|ALT_INV_SD_COUNTER\(5) <= NOT \i2sound|u2|SD_COUNTER\(5);
\i2sound|u1|ALT_INV_COUNTER_500\(9) <= NOT \i2sound|u1|COUNTER_500\(9);
\i2sound|u2|ALT_INV_SCLK~q\ <= NOT \i2sound|u2|SCLK~q\;
\i2sound|u1|ALT_INV_COUNTER_500\(1) <= NOT \i2sound|u1|COUNTER_500\(1);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState[0]~4_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~4_combout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~29_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~29_sumout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~25_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~25_sumout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~21_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~21_sumout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~17_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~17_sumout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~13_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~13_sumout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~9_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~9_sumout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~5_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~5_sumout\;
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~1_sumout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~1_sumout\;
\i2sound|u3|ALT_INV_delay\(14) <= NOT \i2sound|u3|delay\(14);
\i2sound|u3|ALT_INV_delay\(12) <= NOT \i2sound|u3|delay\(12);
\i2sound|u3|ALT_INV_delay\(11) <= NOT \i2sound|u3|delay\(11);
\i2sound|u3|ALT_INV_delay\(10) <= NOT \i2sound|u3|delay\(10);
\i2sound|u3|ALT_INV_delay\(9) <= NOT \i2sound|u3|delay\(9);
\i2sound|u3|ALT_INV_delay\(15) <= NOT \i2sound|u3|delay\(15);
\i2sound|u3|ALT_INV_delay\(8) <= NOT \i2sound|u3|delay\(8);
\i2sound|u3|ALT_INV_delay\(7) <= NOT \i2sound|u3|delay\(7);
\i2sound|u3|ALT_INV_delay\(6) <= NOT \i2sound|u3|delay\(6);
\i2sound|u3|ALT_INV_delay\(5) <= NOT \i2sound|u3|delay\(5);
\i2sound|u3|ALT_INV_delay\(3) <= NOT \i2sound|u3|delay\(3);
\i2sound|u3|ALT_INV_delay\(0) <= NOT \i2sound|u3|delay\(0);
\i2sound|u3|ALT_INV_delay\(1) <= NOT \i2sound|u3|delay\(1);
\i2sound|u3|ALT_INV_delay\(4) <= NOT \i2sound|u3|delay\(4);
\i2sound|u3|ALT_INV_delay\(2) <= NOT \i2sound|u3|delay\(2);
\i2sound|u3|ALT_INV_delay\(13) <= NOT \i2sound|u3|delay\(13);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(5) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(5);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(6);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(7) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(7);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(3);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(4);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(2);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(1);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(0);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(3);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(10) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(10);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(9) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(9);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(8) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(8);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(7) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(7);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(6);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(5) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(5);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(4);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(11) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(11);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(5) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(3) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(3);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(2) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(2);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(1) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(1);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(0) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(0);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(6) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(6);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(4) <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4);
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_25~13_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_23~13_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_25~9_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_22~13_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_23~9_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_21~9_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_22~9_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~5_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_21~5_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\;
\soundmodule_inst|ALT_INV_LEDR_Reg\(6) <= NOT \soundmodule_inst|LEDR_Reg\(6);
\soundmodule_inst|ALT_INV_LEDR_Reg\(5) <= NOT \soundmodule_inst|LEDR_Reg\(5);
\soundmodule_inst|ALT_INV_LEDR_Reg\(4) <= NOT \soundmodule_inst|LEDR_Reg\(4);
\soundmodule_inst|ALT_INV_LEDR_Reg\(3) <= NOT \soundmodule_inst|LEDR_Reg\(3);
\soundmodule_inst|ALT_INV_LEDR_Reg\(2) <= NOT \soundmodule_inst|LEDR_Reg\(2);
\soundmodule_inst|ALT_INV_LEDR_Reg\(1) <= NOT \soundmodule_inst|LEDR_Reg\(1);
\soundmodule_inst|ALT_INV_LEDR_Reg\(0) <= NOT \soundmodule_inst|LEDR_Reg\(0);
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\;
\i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ <= NOT \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0[5]~DUPLICATE_q\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataByte0[5]~DUPLICATE_q\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_status[1]~DUPLICATE_q\ <= NOT \soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[1]~DUPLICATE_q\ <= NOT \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_status[0]~DUPLICATE_q\ <= NOT \soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\;
\soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\;
\i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\ <= NOT \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\;
\i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\ <= NOT \i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\;
\ALT_INV_MIDI_RX~input_o\ <= NOT \MIDI_RX~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_AUD_ADCDAT~input_o\ <= NOT \AUD_ADCDAT~input_o\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux14~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux14~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~0_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux13~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux13~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~0_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux12~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux12~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~0_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux11~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux11~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~0_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux10~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux10~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~0_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux9~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux9~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~0_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux8~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux8~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~0_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux7~1_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~1_combout\;
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux7~0_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~0_combout\;
\i2sound|u1|ALT_INV_COUNTER_500\(2) <= NOT \i2sound|u1|COUNTER_500\(2);
\i2sound|u1|ALT_INV_COUNTER_500\(3) <= NOT \i2sound|u1|COUNTER_500\(3);
\i2sound|u1|ALT_INV_COUNTER_500\(4) <= NOT \i2sound|u1|COUNTER_500\(4);
\i2sound|u1|ALT_INV_COUNTER_500\(5) <= NOT \i2sound|u1|COUNTER_500\(5);
\i2sound|u3|ALT_INV_Equal1~2_combout\ <= NOT \i2sound|u3|Equal1~2_combout\;
\i2sound|u3|ALT_INV_Equal1~1_combout\ <= NOT \i2sound|u3|Equal1~1_combout\;
\i2sound|u3|ALT_INV_Equal1~0_combout\ <= NOT \i2sound|u3|Equal1~0_combout\;
\i2sound|u3|ALT_INV_flag~0_combout\ <= NOT \i2sound|u3|flag~0_combout\;
\i2sound|u3|ALT_INV_flag_temp\(3) <= NOT \i2sound|u3|flag_temp\(3);
\i2sound|u3|ALT_INV_flag_temp\(2) <= NOT \i2sound|u3|flag_temp\(2);
\i2sound|u3|ALT_INV_flag_temp\(1) <= NOT \i2sound|u3|flag_temp\(1);
\i2sound|u3|ALT_INV_flag_temp\(0) <= NOT \i2sound|u3|flag_temp\(0);
\i2sound|u1|ALT_INV_COUNTER_500\(6) <= NOT \i2sound|u1|COUNTER_500\(6);
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~2_combout\ <= NOT \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~2_combout\;

-- Location: IOOBUF_X89_Y15_N39
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AUD_DACDAT_Reg~q\,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X89_Y16_N39
\AUD_XCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AUD_XCK_Reg~q\,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X89_Y13_N22
\FPGA_I2C_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_I2C_SCLK_Reg~q\,
	devoe => ww_devoe,
	o => ww_FPGA_I2C_SCLK);

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_Reg(0),
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X80_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_Reg(1),
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X50_Y0_N93
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_Reg(2),
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N76
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_Reg(3),
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X56_Y0_N36
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_Reg(4),
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X58_Y0_N76
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_Reg(5),
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X56_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => HEX0_Reg(6),
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N53
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X52_Y0_N2
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X52_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X64_Y0_N19
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X66_Y0_N42
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X50_Y0_N42
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X60_Y0_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y11_N45
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X89_Y9_N22
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X86_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X88_Y0_N37
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X78_Y0_N36
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X86_Y0_N36
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X88_Y0_N54
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X74_Y0_N59
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_Reg(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y9_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X86_Y0_N2
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y13_N5
\FPGA_I2C_SDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i2sound|u2|SDO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_FPGA_I2C_SDAT);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X51_Y2_N30
\i2sound|u1|COUNTER_500[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|COUNTER_500[0]~0_combout\ = !\i2sound|u1|COUNTER_500\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(0),
	combout => \i2sound|u1|COUNTER_500[0]~0_combout\);

-- Location: FF_X51_Y2_N31
\i2sound|u1|COUNTER_500[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|COUNTER_500[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(0));

-- Location: LABCELL_X51_Y2_N0
\i2sound|u1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~1_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(1) ) + ( \i2sound|u1|COUNTER_500\(0) ) + ( !VCC ))
-- \i2sound|u1|Add0~2\ = CARRY(( \i2sound|u1|COUNTER_500\(1) ) + ( \i2sound|u1|COUNTER_500\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|ALT_INV_COUNTER_500\(0),
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(1),
	cin => GND,
	sumout => \i2sound|u1|Add0~1_sumout\,
	cout => \i2sound|u1|Add0~2\);

-- Location: FF_X51_Y2_N2
\i2sound|u1|COUNTER_500[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(1));

-- Location: LABCELL_X51_Y2_N3
\i2sound|u1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~37_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(2) ) + ( GND ) + ( \i2sound|u1|Add0~2\ ))
-- \i2sound|u1|Add0~38\ = CARRY(( \i2sound|u1|COUNTER_500\(2) ) + ( GND ) + ( \i2sound|u1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(2),
	cin => \i2sound|u1|Add0~2\,
	sumout => \i2sound|u1|Add0~37_sumout\,
	cout => \i2sound|u1|Add0~38\);

-- Location: FF_X51_Y2_N5
\i2sound|u1|COUNTER_500[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(2));

-- Location: LABCELL_X51_Y2_N6
\i2sound|u1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~33_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(3) ) + ( GND ) + ( \i2sound|u1|Add0~38\ ))
-- \i2sound|u1|Add0~34\ = CARRY(( \i2sound|u1|COUNTER_500\(3) ) + ( GND ) + ( \i2sound|u1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(3),
	cin => \i2sound|u1|Add0~38\,
	sumout => \i2sound|u1|Add0~33_sumout\,
	cout => \i2sound|u1|Add0~34\);

-- Location: FF_X51_Y2_N8
\i2sound|u1|COUNTER_500[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(3));

-- Location: LABCELL_X51_Y2_N9
\i2sound|u1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~29_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(4) ) + ( GND ) + ( \i2sound|u1|Add0~34\ ))
-- \i2sound|u1|Add0~30\ = CARRY(( \i2sound|u1|COUNTER_500\(4) ) + ( GND ) + ( \i2sound|u1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(4),
	cin => \i2sound|u1|Add0~34\,
	sumout => \i2sound|u1|Add0~29_sumout\,
	cout => \i2sound|u1|Add0~30\);

-- Location: FF_X51_Y2_N11
\i2sound|u1|COUNTER_500[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(4));

-- Location: LABCELL_X51_Y2_N12
\i2sound|u1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~25_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(5) ) + ( GND ) + ( \i2sound|u1|Add0~30\ ))
-- \i2sound|u1|Add0~26\ = CARRY(( \i2sound|u1|COUNTER_500\(5) ) + ( GND ) + ( \i2sound|u1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(5),
	cin => \i2sound|u1|Add0~30\,
	sumout => \i2sound|u1|Add0~25_sumout\,
	cout => \i2sound|u1|Add0~26\);

-- Location: FF_X51_Y2_N14
\i2sound|u1|COUNTER_500[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(5));

-- Location: LABCELL_X51_Y2_N15
\i2sound|u1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~21_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(6) ) + ( GND ) + ( \i2sound|u1|Add0~26\ ))
-- \i2sound|u1|Add0~22\ = CARRY(( \i2sound|u1|COUNTER_500\(6) ) + ( GND ) + ( \i2sound|u1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(6),
	cin => \i2sound|u1|Add0~26\,
	sumout => \i2sound|u1|Add0~21_sumout\,
	cout => \i2sound|u1|Add0~22\);

-- Location: FF_X51_Y2_N17
\i2sound|u1|COUNTER_500[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(6));

-- Location: LABCELL_X51_Y2_N18
\i2sound|u1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~17_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(7) ) + ( GND ) + ( \i2sound|u1|Add0~22\ ))
-- \i2sound|u1|Add0~18\ = CARRY(( \i2sound|u1|COUNTER_500\(7) ) + ( GND ) + ( \i2sound|u1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(7),
	cin => \i2sound|u1|Add0~22\,
	sumout => \i2sound|u1|Add0~17_sumout\,
	cout => \i2sound|u1|Add0~18\);

-- Location: FF_X51_Y2_N20
\i2sound|u1|COUNTER_500[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(7));

-- Location: LABCELL_X51_Y2_N21
\i2sound|u1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~9_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(8) ) + ( GND ) + ( \i2sound|u1|Add0~18\ ))
-- \i2sound|u1|Add0~10\ = CARRY(( \i2sound|u1|COUNTER_500\(8) ) + ( GND ) + ( \i2sound|u1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(8),
	cin => \i2sound|u1|Add0~18\,
	sumout => \i2sound|u1|Add0~9_sumout\,
	cout => \i2sound|u1|Add0~10\);

-- Location: FF_X51_Y2_N23
\i2sound|u1|COUNTER_500[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(8));

-- Location: LABCELL_X51_Y2_N24
\i2sound|u1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~5_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(9) ) + ( GND ) + ( \i2sound|u1|Add0~10\ ))
-- \i2sound|u1|Add0~6\ = CARRY(( \i2sound|u1|COUNTER_500\(9) ) + ( GND ) + ( \i2sound|u1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	cin => \i2sound|u1|Add0~10\,
	sumout => \i2sound|u1|Add0~5_sumout\,
	cout => \i2sound|u1|Add0~6\);

-- Location: FF_X51_Y2_N38
\i2sound|u1|COUNTER_500[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \i2sound|u1|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(9));

-- Location: LABCELL_X51_Y2_N27
\i2sound|u1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add0~13_sumout\ = SUM(( \i2sound|u1|COUNTER_500\(10) ) + ( GND ) + ( \i2sound|u1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(10),
	cin => \i2sound|u1|Add0~6\,
	sumout => \i2sound|u1|Add0~13_sumout\);

-- Location: FF_X51_Y2_N29
\i2sound|u1|COUNTER_500[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|COUNTER_500\(10));

-- Location: MLABCELL_X52_Y2_N57
\i2sound|u1|address[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|address[1]~2_combout\ = !\i2sound|u1|address\(1) $ (((!\i2sound|u1|address\(0)) # (\i2sound|u1|address\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110011001010101011001100101010101100110010101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(1),
	datab => \i2sound|u1|ALT_INV_address\(3),
	datad => \i2sound|u1|ALT_INV_address\(0),
	combout => \i2sound|u1|address[1]~2_combout\);

-- Location: LABCELL_X48_Y2_N0
\i2sound|u3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~17_sumout\ = SUM(( \i2sound|u3|delay\(0) ) + ( VCC ) + ( !VCC ))
-- \i2sound|u3|Add0~18\ = CARRY(( \i2sound|u3|delay\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(0),
	cin => GND,
	sumout => \i2sound|u3|Add0~17_sumout\,
	cout => \i2sound|u3|Add0~18\);

-- Location: IOIBUF_X22_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X48_Y2_N2
\i2sound|u3|delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~17_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(0));

-- Location: LABCELL_X48_Y2_N3
\i2sound|u3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~13_sumout\ = SUM(( \i2sound|u3|delay\(1) ) + ( GND ) + ( \i2sound|u3|Add0~18\ ))
-- \i2sound|u3|Add0~14\ = CARRY(( \i2sound|u3|delay\(1) ) + ( GND ) + ( \i2sound|u3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_delay\(1),
	cin => \i2sound|u3|Add0~18\,
	sumout => \i2sound|u3|Add0~13_sumout\,
	cout => \i2sound|u3|Add0~14\);

-- Location: FF_X48_Y2_N5
\i2sound|u3|delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~13_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(1));

-- Location: LABCELL_X48_Y2_N6
\i2sound|u3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~5_sumout\ = SUM(( \i2sound|u3|delay\(2) ) + ( GND ) + ( \i2sound|u3|Add0~14\ ))
-- \i2sound|u3|Add0~6\ = CARRY(( \i2sound|u3|delay\(2) ) + ( GND ) + ( \i2sound|u3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u3|ALT_INV_delay\(2),
	cin => \i2sound|u3|Add0~14\,
	sumout => \i2sound|u3|Add0~5_sumout\,
	cout => \i2sound|u3|Add0~6\);

-- Location: FF_X48_Y2_N8
\i2sound|u3|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~5_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(2));

-- Location: LABCELL_X48_Y2_N9
\i2sound|u3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~21_sumout\ = SUM(( \i2sound|u3|delay\(3) ) + ( GND ) + ( \i2sound|u3|Add0~6\ ))
-- \i2sound|u3|Add0~22\ = CARRY(( \i2sound|u3|delay\(3) ) + ( GND ) + ( \i2sound|u3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(3),
	cin => \i2sound|u3|Add0~6\,
	sumout => \i2sound|u3|Add0~21_sumout\,
	cout => \i2sound|u3|Add0~22\);

-- Location: FF_X48_Y2_N11
\i2sound|u3|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~21_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(3));

-- Location: LABCELL_X48_Y2_N12
\i2sound|u3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~9_sumout\ = SUM(( \i2sound|u3|delay\(4) ) + ( GND ) + ( \i2sound|u3|Add0~22\ ))
-- \i2sound|u3|Add0~10\ = CARRY(( \i2sound|u3|delay\(4) ) + ( GND ) + ( \i2sound|u3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u3|ALT_INV_delay\(4),
	cin => \i2sound|u3|Add0~22\,
	sumout => \i2sound|u3|Add0~9_sumout\,
	cout => \i2sound|u3|Add0~10\);

-- Location: FF_X48_Y2_N14
\i2sound|u3|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~9_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(4));

-- Location: LABCELL_X48_Y2_N15
\i2sound|u3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~25_sumout\ = SUM(( \i2sound|u3|delay\(5) ) + ( GND ) + ( \i2sound|u3|Add0~10\ ))
-- \i2sound|u3|Add0~26\ = CARRY(( \i2sound|u3|delay\(5) ) + ( GND ) + ( \i2sound|u3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(5),
	cin => \i2sound|u3|Add0~10\,
	sumout => \i2sound|u3|Add0~25_sumout\,
	cout => \i2sound|u3|Add0~26\);

-- Location: FF_X48_Y2_N17
\i2sound|u3|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~25_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(5));

-- Location: LABCELL_X48_Y2_N18
\i2sound|u3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~29_sumout\ = SUM(( \i2sound|u3|delay\(6) ) + ( GND ) + ( \i2sound|u3|Add0~26\ ))
-- \i2sound|u3|Add0~30\ = CARRY(( \i2sound|u3|delay\(6) ) + ( GND ) + ( \i2sound|u3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(6),
	cin => \i2sound|u3|Add0~26\,
	sumout => \i2sound|u3|Add0~29_sumout\,
	cout => \i2sound|u3|Add0~30\);

-- Location: FF_X48_Y2_N20
\i2sound|u3|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~29_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(6));

-- Location: LABCELL_X48_Y2_N21
\i2sound|u3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~33_sumout\ = SUM(( \i2sound|u3|delay\(7) ) + ( GND ) + ( \i2sound|u3|Add0~30\ ))
-- \i2sound|u3|Add0~34\ = CARRY(( \i2sound|u3|delay\(7) ) + ( GND ) + ( \i2sound|u3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_delay\(7),
	cin => \i2sound|u3|Add0~30\,
	sumout => \i2sound|u3|Add0~33_sumout\,
	cout => \i2sound|u3|Add0~34\);

-- Location: FF_X48_Y2_N23
\i2sound|u3|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~33_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(7));

-- Location: LABCELL_X48_Y2_N24
\i2sound|u3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~37_sumout\ = SUM(( \i2sound|u3|delay\(8) ) + ( GND ) + ( \i2sound|u3|Add0~34\ ))
-- \i2sound|u3|Add0~38\ = CARRY(( \i2sound|u3|delay\(8) ) + ( GND ) + ( \i2sound|u3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(8),
	cin => \i2sound|u3|Add0~34\,
	sumout => \i2sound|u3|Add0~37_sumout\,
	cout => \i2sound|u3|Add0~38\);

-- Location: FF_X48_Y2_N26
\i2sound|u3|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~37_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(8));

-- Location: LABCELL_X48_Y2_N27
\i2sound|u3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~45_sumout\ = SUM(( \i2sound|u3|delay\(9) ) + ( GND ) + ( \i2sound|u3|Add0~38\ ))
-- \i2sound|u3|Add0~46\ = CARRY(( \i2sound|u3|delay\(9) ) + ( GND ) + ( \i2sound|u3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_delay\(9),
	cin => \i2sound|u3|Add0~38\,
	sumout => \i2sound|u3|Add0~45_sumout\,
	cout => \i2sound|u3|Add0~46\);

-- Location: FF_X48_Y2_N29
\i2sound|u3|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~45_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(9));

-- Location: LABCELL_X48_Y2_N30
\i2sound|u3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~49_sumout\ = SUM(( \i2sound|u3|delay\(10) ) + ( GND ) + ( \i2sound|u3|Add0~46\ ))
-- \i2sound|u3|Add0~50\ = CARRY(( \i2sound|u3|delay\(10) ) + ( GND ) + ( \i2sound|u3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u3|ALT_INV_delay\(10),
	cin => \i2sound|u3|Add0~46\,
	sumout => \i2sound|u3|Add0~49_sumout\,
	cout => \i2sound|u3|Add0~50\);

-- Location: FF_X48_Y2_N32
\i2sound|u3|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~49_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(10));

-- Location: LABCELL_X48_Y2_N33
\i2sound|u3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~53_sumout\ = SUM(( \i2sound|u3|delay\(11) ) + ( GND ) + ( \i2sound|u3|Add0~50\ ))
-- \i2sound|u3|Add0~54\ = CARRY(( \i2sound|u3|delay\(11) ) + ( GND ) + ( \i2sound|u3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_delay\(11),
	cin => \i2sound|u3|Add0~50\,
	sumout => \i2sound|u3|Add0~53_sumout\,
	cout => \i2sound|u3|Add0~54\);

-- Location: FF_X48_Y2_N35
\i2sound|u3|delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~53_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(11));

-- Location: LABCELL_X48_Y2_N36
\i2sound|u3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~57_sumout\ = SUM(( \i2sound|u3|delay\(12) ) + ( GND ) + ( \i2sound|u3|Add0~54\ ))
-- \i2sound|u3|Add0~58\ = CARRY(( \i2sound|u3|delay\(12) ) + ( GND ) + ( \i2sound|u3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(12),
	cin => \i2sound|u3|Add0~54\,
	sumout => \i2sound|u3|Add0~57_sumout\,
	cout => \i2sound|u3|Add0~58\);

-- Location: FF_X48_Y2_N38
\i2sound|u3|delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~57_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(12));

-- Location: LABCELL_X48_Y2_N39
\i2sound|u3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~1_sumout\ = SUM(( \i2sound|u3|delay\(13) ) + ( GND ) + ( \i2sound|u3|Add0~58\ ))
-- \i2sound|u3|Add0~2\ = CARRY(( \i2sound|u3|delay\(13) ) + ( GND ) + ( \i2sound|u3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(13),
	cin => \i2sound|u3|Add0~58\,
	sumout => \i2sound|u3|Add0~1_sumout\,
	cout => \i2sound|u3|Add0~2\);

-- Location: FF_X48_Y2_N41
\i2sound|u3|delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~1_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(13));

-- Location: LABCELL_X48_Y2_N42
\i2sound|u3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~61_sumout\ = SUM(( \i2sound|u3|delay\(14) ) + ( GND ) + ( \i2sound|u3|Add0~2\ ))
-- \i2sound|u3|Add0~62\ = CARRY(( \i2sound|u3|delay\(14) ) + ( GND ) + ( \i2sound|u3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u3|ALT_INV_delay\(14),
	cin => \i2sound|u3|Add0~2\,
	sumout => \i2sound|u3|Add0~61_sumout\,
	cout => \i2sound|u3|Add0~62\);

-- Location: FF_X48_Y2_N44
\i2sound|u3|delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~61_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(14));

-- Location: LABCELL_X48_Y2_N54
\i2sound|u3|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Equal1~2_combout\ = ( \i2sound|u3|delay\(12) & ( !\i2sound|u3|delay\(10) & ( (!\i2sound|u3|delay\(11) & (!\i2sound|u3|delay\(14) & !\i2sound|u3|delay\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_delay\(11),
	datab => \i2sound|u3|ALT_INV_delay\(14),
	datac => \i2sound|u3|ALT_INV_delay\(9),
	datae => \i2sound|u3|ALT_INV_delay\(12),
	dataf => \i2sound|u3|ALT_INV_delay\(10),
	combout => \i2sound|u3|Equal1~2_combout\);

-- Location: LABCELL_X48_Y2_N45
\i2sound|u3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Add0~41_sumout\ = SUM(( \i2sound|u3|delay\(15) ) + ( GND ) + ( \i2sound|u3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_delay\(15),
	cin => \i2sound|u3|Add0~62\,
	sumout => \i2sound|u3|Add0~41_sumout\);

-- Location: FF_X48_Y2_N47
\i2sound|u3|delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	d => \i2sound|u3|Add0~41_sumout\,
	sclr => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|delay\(15));

-- Location: LABCELL_X48_Y2_N48
\i2sound|u3|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Equal1~1_combout\ = ( !\i2sound|u3|delay\(7) & ( !\i2sound|u3|delay\(3) & ( (!\i2sound|u3|delay\(8) & (!\i2sound|u3|delay\(15) & (!\i2sound|u3|delay\(6) & !\i2sound|u3|delay\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_delay\(8),
	datab => \i2sound|u3|ALT_INV_delay\(15),
	datac => \i2sound|u3|ALT_INV_delay\(6),
	datad => \i2sound|u3|ALT_INV_delay\(5),
	datae => \i2sound|u3|ALT_INV_delay\(7),
	dataf => \i2sound|u3|ALT_INV_delay\(3),
	combout => \i2sound|u3|Equal1~1_combout\);

-- Location: MLABCELL_X52_Y2_N6
\i2sound|u3|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|Equal1~0_combout\ = ( !\i2sound|u3|delay\(4) & ( (!\i2sound|u3|delay\(1) & (!\i2sound|u3|delay\(0) & !\i2sound|u3|delay\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_delay\(1),
	datab => \i2sound|u3|ALT_INV_delay\(0),
	datac => \i2sound|u3|ALT_INV_delay\(2),
	datae => \i2sound|u3|ALT_INV_delay\(4),
	combout => \i2sound|u3|Equal1~0_combout\);

-- Location: FF_X48_Y2_N53
\i2sound|u3|flag_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	ena => \i2sound|u3|ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|flag_temp\(3));

-- Location: FF_X55_Y2_N41
\i2sound|u3|flag_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	asdata => \i2sound|u3|flag_temp\(3),
	sload => VCC,
	ena => \i2sound|u3|ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|flag_temp\(2));

-- Location: FF_X55_Y2_N29
\i2sound|u3|flag_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	asdata => \i2sound|u3|flag_temp\(2),
	sload => VCC,
	ena => \i2sound|u3|ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|flag_temp\(1));

-- Location: FF_X55_Y2_N25
\i2sound|u3|flag_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	asdata => \i2sound|u3|flag_temp\(1),
	sload => VCC,
	ena => \i2sound|u3|ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|flag_temp\(0));

-- Location: LABCELL_X55_Y2_N24
\i2sound|u3|flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|flag~0_combout\ = ( \i2sound|u3|flag_temp\(1) & ( !\i2sound|u3|flag_temp\(2) & ( (\i2sound|u3|flag_temp\(0) & !\i2sound|u3|flag_temp\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u3|ALT_INV_flag_temp\(0),
	datac => \i2sound|u3|ALT_INV_flag_temp\(3),
	datae => \i2sound|u3|ALT_INV_flag_temp\(1),
	dataf => \i2sound|u3|ALT_INV_flag_temp\(2),
	combout => \i2sound|u3|flag~0_combout\);

-- Location: LABCELL_X55_Y2_N0
\i2sound|u3|flag~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|flag~1_combout\ = ( \i2sound|u3|flag~q\ & ( \i2sound|u3|flag~0_combout\ & ( (!\i2sound|u3|Equal1~2_combout\) # ((!\i2sound|u3|Equal1~1_combout\) # ((!\i2sound|u3|Equal1~0_combout\) # (\i2sound|u3|delay\(13)))) ) ) ) # ( !\i2sound|u3|flag~q\ & 
-- ( \i2sound|u3|flag~0_combout\ & ( (!\i2sound|u3|Equal1~2_combout\) # ((!\i2sound|u3|Equal1~1_combout\) # ((!\i2sound|u3|Equal1~0_combout\) # (\i2sound|u3|delay\(13)))) ) ) ) # ( \i2sound|u3|flag~q\ & ( !\i2sound|u3|flag~0_combout\ & ( 
-- (!\i2sound|u3|Equal1~2_combout\) # ((!\i2sound|u3|Equal1~1_combout\) # ((!\i2sound|u3|Equal1~0_combout\) # (\i2sound|u3|delay\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111111111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u3|ALT_INV_Equal1~2_combout\,
	datab => \i2sound|u3|ALT_INV_Equal1~1_combout\,
	datac => \i2sound|u3|ALT_INV_Equal1~0_combout\,
	datad => \i2sound|u3|ALT_INV_delay\(13),
	datae => \i2sound|u3|ALT_INV_flag~q\,
	dataf => \i2sound|u3|ALT_INV_flag~0_combout\,
	combout => \i2sound|u3|flag~1_combout\);

-- Location: IOIBUF_X22_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X55_Y2_N5
\i2sound|u3|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u3|flag~1_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|flag~q\);

-- Location: LABCELL_X55_Y2_N42
\i2sound|u3|D1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|D1~0_combout\ = !\i2sound|u3|flag~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u3|ALT_INV_flag~q\,
	combout => \i2sound|u3|D1~0_combout\);

-- Location: FF_X55_Y2_N44
\i2sound|u3|D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	d => \i2sound|u3|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|D1~q\);

-- Location: FF_X56_Y2_N26
\i2sound|u3|D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	asdata => \i2sound|u3|D1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u3|D2~q\);

-- Location: LABCELL_X56_Y2_N42
\i2sound|u3|KEY0_EDGE\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u3|KEY0_EDGE~combout\ = LCELL(( \i2sound|u3|D2~q\ & ( !\i2sound|u3|D1~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2sound|u3|ALT_INV_D1~q\,
	dataf => \i2sound|u3|ALT_INV_D2~q\,
	combout => \i2sound|u3|KEY0_EDGE~combout\);

-- Location: FF_X52_Y2_N56
\i2sound|u1|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	asdata => \i2sound|u1|address[1]~2_combout\,
	clrn => \i2sound|u3|ALT_INV_KEY0_EDGE~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|address\(1));

-- Location: MLABCELL_X52_Y2_N39
\i2sound|u1|address[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|address[2]~1_combout\ = ( \i2sound|u1|address\(2) & ( (!\i2sound|u1|address\(1)) # ((!\i2sound|u1|address\(0)) # (\i2sound|u1|address\(3))) ) ) # ( !\i2sound|u1|address\(2) & ( (\i2sound|u1|address\(1) & (\i2sound|u1|address\(0) & 
-- !\i2sound|u1|address\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000011101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(1),
	datab => \i2sound|u1|ALT_INV_address\(0),
	datad => \i2sound|u1|ALT_INV_address\(3),
	dataf => \i2sound|u1|ALT_INV_address\(2),
	combout => \i2sound|u1|address[2]~1_combout\);

-- Location: FF_X52_Y2_N38
\i2sound|u1|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	asdata => \i2sound|u1|address[2]~1_combout\,
	clrn => \i2sound|u3|ALT_INV_KEY0_EDGE~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|address\(2));

-- Location: MLABCELL_X52_Y2_N36
\i2sound|u1|address[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|address[3]~0_combout\ = ( \i2sound|u1|address\(3) ) # ( !\i2sound|u1|address\(3) & ( (\i2sound|u1|address\(1) & (\i2sound|u1|address\(0) & \i2sound|u1|address\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(1),
	datab => \i2sound|u1|ALT_INV_address\(0),
	datad => \i2sound|u1|ALT_INV_address\(2),
	dataf => \i2sound|u1|ALT_INV_address\(3),
	combout => \i2sound|u1|address[3]~0_combout\);

-- Location: FF_X52_Y2_N41
\i2sound|u1|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	asdata => \i2sound|u1|address[3]~0_combout\,
	clrn => \i2sound|u3|ALT_INV_KEY0_EDGE~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|address\(3));

-- Location: MLABCELL_X52_Y2_N54
\i2sound|u1|address[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|address[0]~3_combout\ = ( \i2sound|u1|address\(2) & ( !\i2sound|u1|address\(3) $ (\i2sound|u1|address\(0)) ) ) # ( !\i2sound|u1|address\(2) & ( (!\i2sound|u1|address\(3) & (!\i2sound|u1|address\(0))) # (\i2sound|u1|address\(3) & 
-- ((!\i2sound|u1|address\(1)) # (\i2sound|u1|address\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111000011111100111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u1|ALT_INV_address\(3),
	datac => \i2sound|u1|ALT_INV_address\(0),
	datad => \i2sound|u1|ALT_INV_address\(1),
	dataf => \i2sound|u1|ALT_INV_address\(2),
	combout => \i2sound|u1|address[0]~3_combout\);

-- Location: FF_X52_Y2_N59
\i2sound|u1|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	asdata => \i2sound|u1|address[0]~3_combout\,
	clrn => \i2sound|u3|ALT_INV_KEY0_EDGE~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|address\(0));

-- Location: LABCELL_X53_Y2_N15
\i2sound|u1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|LessThan0~0_combout\ = ( \i2sound|u1|address\(1) & ( \i2sound|u1|address\(3) ) ) # ( !\i2sound|u1|address\(1) & ( (\i2sound|u1|address\(3) & ((\i2sound|u1|address\(2)) # (\i2sound|u1|address\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(0),
	datac => \i2sound|u1|ALT_INV_address\(2),
	datad => \i2sound|u1|ALT_INV_address\(3),
	dataf => \i2sound|u1|ALT_INV_address\(1),
	combout => \i2sound|u1|LessThan0~0_combout\);

-- Location: FF_X50_Y2_N41
\i2sound|u2|SD_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[0]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER\(0));

-- Location: LABCELL_X51_Y2_N51
\i2sound|u2|SD_COUNTER[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[1]~7_combout\ = ( \i2sound|u2|SD_COUNTER\(1) & ( \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & ( (\i2sound|u2|SD_COUNTER[5]~4_combout\ & ((!\i2sound|u2|END~q\) # ((\i2sound|u1|COUNTER_500\(10)) # (\i2sound|u1|LessThan0~0_combout\)))) ) ) 
-- ) # ( !\i2sound|u2|SD_COUNTER\(1) & ( \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & ( (!\i2sound|u2|SD_COUNTER[5]~4_combout\ & ((!\i2sound|u2|END~q\) # ((\i2sound|u1|COUNTER_500\(10)) # (\i2sound|u1|LessThan0~0_combout\)))) ) ) ) # ( \i2sound|u2|SD_COUNTER\(1) 
-- & ( !\i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & ( (!\i2sound|u2|END~q\) # ((\i2sound|u1|COUNTER_500\(10)) # (\i2sound|u1|LessThan0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111110001100110011000010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_END~q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER[5]~4_combout\,
	datac => \i2sound|u1|ALT_INV_LessThan0~0_combout\,
	datad => \i2sound|u1|ALT_INV_COUNTER_500\(10),
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	combout => \i2sound|u2|SD_COUNTER[1]~7_combout\);

-- Location: FF_X50_Y2_N20
\i2sound|u2|SD_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[1]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER\(1));

-- Location: LABCELL_X55_Y2_N54
\i2sound|u2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|LessThan1~0_combout\ = ( \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & ( \i2sound|u2|SD_COUNTER\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	combout => \i2sound|u2|LessThan1~0_combout\);

-- Location: LABCELL_X51_Y2_N54
\i2sound|u2|SD_COUNTER[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[2]~6_combout\ = ( \i2sound|u1|LessThan0~0_combout\ & ( \i2sound|u2|LessThan1~0_combout\ & ( !\i2sound|u2|SD_COUNTER[5]~4_combout\ $ (\i2sound|u2|SD_COUNTER\(2)) ) ) ) # ( !\i2sound|u1|LessThan0~0_combout\ & ( 
-- \i2sound|u2|LessThan1~0_combout\ & ( (!\i2sound|u1|COUNTER_500\(10) & (!\i2sound|u2|END~q\ & (!\i2sound|u2|SD_COUNTER[5]~4_combout\ $ (\i2sound|u2|SD_COUNTER\(2))))) # (\i2sound|u1|COUNTER_500\(10) & (!\i2sound|u2|SD_COUNTER[5]~4_combout\ $ 
-- (((\i2sound|u2|SD_COUNTER\(2)))))) ) ) ) # ( \i2sound|u1|LessThan0~0_combout\ & ( !\i2sound|u2|LessThan1~0_combout\ & ( \i2sound|u2|SD_COUNTER\(2) ) ) ) # ( !\i2sound|u1|LessThan0~0_combout\ & ( !\i2sound|u2|LessThan1~0_combout\ & ( 
-- (\i2sound|u2|SD_COUNTER\(2) & ((!\i2sound|u2|END~q\) # (\i2sound|u1|COUNTER_500\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111111111000100001100011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_COUNTER_500\(10),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER[5]~4_combout\,
	datac => \i2sound|u2|ALT_INV_END~q\,
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(2),
	datae => \i2sound|u1|ALT_INV_LessThan0~0_combout\,
	dataf => \i2sound|u2|ALT_INV_LessThan1~0_combout\,
	combout => \i2sound|u2|SD_COUNTER[2]~6_combout\);

-- Location: FF_X50_Y2_N47
\i2sound|u2|SD_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[2]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER\(2));

-- Location: LABCELL_X50_Y2_N27
\i2sound|u2|SD_COUNTER[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[5]~0_combout\ = (\i2sound|u2|SD_COUNTER\(3) & (\i2sound|u2|SD_COUNTER\(0) & (\i2sound|u2|SD_COUNTER\(2) & \i2sound|u2|SD_COUNTER\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(2),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	combout => \i2sound|u2|SD_COUNTER[5]~0_combout\);

-- Location: LABCELL_X51_Y2_N39
\i2sound|u2|SD_COUNTER[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[5]~1_combout\ = ( \i2sound|u2|END~q\ & ( \i2sound|u2|SD_COUNTER[5]~0_combout\ & ( (!\i2sound|u1|COUNTER_500\(10) & (\i2sound|u1|LessThan0~0_combout\ & ((\i2sound|u2|SD_COUNTER\(4)) # (\i2sound|u2|SD_COUNTER\(5))))) # 
-- (\i2sound|u1|COUNTER_500\(10) & (((\i2sound|u2|SD_COUNTER\(4))) # (\i2sound|u2|SD_COUNTER\(5)))) ) ) ) # ( !\i2sound|u2|END~q\ & ( \i2sound|u2|SD_COUNTER[5]~0_combout\ & ( (\i2sound|u2|SD_COUNTER\(4)) # (\i2sound|u2|SD_COUNTER\(5)) ) ) ) # ( 
-- \i2sound|u2|END~q\ & ( !\i2sound|u2|SD_COUNTER[5]~0_combout\ & ( (\i2sound|u2|SD_COUNTER\(5) & ((\i2sound|u1|LessThan0~0_combout\) # (\i2sound|u1|COUNTER_500\(10)))) ) ) ) # ( !\i2sound|u2|END~q\ & ( !\i2sound|u2|SD_COUNTER[5]~0_combout\ & ( 
-- \i2sound|u2|SD_COUNTER\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000100110001001100110011111111110001001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_COUNTER_500\(10),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	datac => \i2sound|u1|ALT_INV_LessThan0~0_combout\,
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	datae => \i2sound|u2|ALT_INV_END~q\,
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[5]~0_combout\,
	combout => \i2sound|u2|SD_COUNTER[5]~1_combout\);

-- Location: FF_X52_Y2_N2
\i2sound|u2|SD_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[5]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER\(5));

-- Location: LABCELL_X51_Y2_N42
\i2sound|u2|SD_COUNTER[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[4]~2_combout\ = ( \i2sound|u1|COUNTER_500\(10) & ( \i2sound|u2|SD_COUNTER[5]~0_combout\ & ( (!\i2sound|u2|SD_COUNTER\(4)) # (\i2sound|u2|SD_COUNTER\(5)) ) ) ) # ( !\i2sound|u1|COUNTER_500\(10) & ( 
-- \i2sound|u2|SD_COUNTER[5]~0_combout\ & ( (!\i2sound|u2|END~q\ & (((!\i2sound|u2|SD_COUNTER\(4)) # (\i2sound|u2|SD_COUNTER\(5))))) # (\i2sound|u2|END~q\ & (\i2sound|u1|LessThan0~0_combout\ & ((!\i2sound|u2|SD_COUNTER\(4)) # (\i2sound|u2|SD_COUNTER\(5))))) 
-- ) ) ) # ( \i2sound|u1|COUNTER_500\(10) & ( !\i2sound|u2|SD_COUNTER[5]~0_combout\ & ( \i2sound|u2|SD_COUNTER\(4) ) ) ) # ( !\i2sound|u1|COUNTER_500\(10) & ( !\i2sound|u2|SD_COUNTER[5]~0_combout\ & ( (\i2sound|u2|SD_COUNTER\(4) & ((!\i2sound|u2|END~q\) # 
-- (\i2sound|u1|LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000011110000111110110000101110111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_END~q\,
	datab => \i2sound|u1|ALT_INV_LessThan0~0_combout\,
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	datae => \i2sound|u1|ALT_INV_COUNTER_500\(10),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[5]~0_combout\,
	combout => \i2sound|u2|SD_COUNTER[4]~2_combout\);

-- Location: FF_X50_Y2_N31
\i2sound|u2|SD_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[4]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER\(4));

-- Location: LABCELL_X50_Y2_N0
\i2sound|u2|SD_COUNTER[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[5]~4_combout\ = ( \i2sound|u2|SD_COUNTER\(1) & ( \i2sound|u2|SD_COUNTER\(5) & ( (\i2sound|u2|SD_COUNTER\(4) & (\i2sound|u2|SD_COUNTER\(2) & (\i2sound|u2|SD_COUNTER\(3) & \i2sound|u2|SD_COUNTER\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(2),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	combout => \i2sound|u2|SD_COUNTER[5]~4_combout\);

-- Location: LABCELL_X51_Y2_N33
\i2sound|u2|SD_COUNTER[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[0]~8_combout\ = ( \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & ( (\i2sound|u2|SD_COUNTER[5]~4_combout\ & (((!\i2sound|u2|END~q\) # (\i2sound|u1|LessThan0~0_combout\)) # (\i2sound|u1|COUNTER_500\(10)))) ) ) # ( 
-- !\i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & ( ((!\i2sound|u2|END~q\) # (\i2sound|u1|LessThan0~0_combout\)) # (\i2sound|u1|COUNTER_500\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111110111011100001111000001110000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_COUNTER_500\(10),
	datab => \i2sound|u1|ALT_INV_LessThan0~0_combout\,
	datac => \i2sound|u2|ALT_INV_SD_COUNTER[5]~4_combout\,
	datad => \i2sound|u2|ALT_INV_END~q\,
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	combout => \i2sound|u2|SD_COUNTER[0]~8_combout\);

-- Location: FF_X50_Y2_N40
\i2sound|u2|SD_COUNTER[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[0]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\);

-- Location: FF_X50_Y2_N46
\i2sound|u2|SD_COUNTER[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[2]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y2_N42
\i2sound|u2|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Decoder0~0_combout\ = ( !\i2sound|u2|SD_COUNTER\(4) & ( (!\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & (!\i2sound|u2|SD_COUNTER\(1) & !\i2sound|u2|SD_COUNTER\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	combout => \i2sound|u2|Decoder0~0_combout\);

-- Location: MLABCELL_X52_Y2_N51
\i2sound|u2|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Selector0~0_combout\ = ( !\i2sound|u2|SD_COUNTER\(4) & ( (!\i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & (!\i2sound|u2|SD_COUNTER\(1) & (!\i2sound|u2|SD_COUNTER\(3) & !\i2sound|u2|SD_COUNTER\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(2),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	combout => \i2sound|u2|Selector0~0_combout\);

-- Location: MLABCELL_X52_Y2_N0
\i2sound|u2|END~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|END~0_combout\ = ( \i2sound|u2|SD_COUNTER\(5) & ( \i2sound|u2|Selector0~0_combout\ & ( (!\i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & \i2sound|u2|Decoder0~0_combout\) ) ) ) # ( \i2sound|u2|SD_COUNTER\(5) & ( !\i2sound|u2|Selector0~0_combout\ & ( 
-- \i2sound|u2|END~q\ ) ) ) # ( !\i2sound|u2|SD_COUNTER\(5) & ( !\i2sound|u2|Selector0~0_combout\ & ( \i2sound|u2|END~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u2|ALT_INV_END~q\,
	datac => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datad => \i2sound|u2|ALT_INV_Decoder0~0_combout\,
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	dataf => \i2sound|u2|ALT_INV_Selector0~0_combout\,
	combout => \i2sound|u2|END~0_combout\);

-- Location: FF_X52_Y2_N11
\i2sound|u2|END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|END~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|END~q\);

-- Location: MLABCELL_X52_Y2_N45
\i2sound|u2|SD_COUNTER[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[5]~3_combout\ = ( \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & ( (\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & \i2sound|u2|SD_COUNTER\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	combout => \i2sound|u2|SD_COUNTER[5]~3_combout\);

-- Location: LABCELL_X51_Y2_N48
\i2sound|u2|SD_COUNTER[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SD_COUNTER[3]~5_combout\ = ( \i2sound|u2|SD_COUNTER\(3) & ( \i2sound|u2|SD_COUNTER[5]~3_combout\ & ( (\i2sound|u2|SD_COUNTER[5]~4_combout\ & ((!\i2sound|u2|END~q\) # ((\i2sound|u1|LessThan0~0_combout\) # (\i2sound|u1|COUNTER_500\(10))))) ) ) ) 
-- # ( !\i2sound|u2|SD_COUNTER\(3) & ( \i2sound|u2|SD_COUNTER[5]~3_combout\ & ( (!\i2sound|u2|SD_COUNTER[5]~4_combout\ & ((!\i2sound|u2|END~q\) # ((\i2sound|u1|LessThan0~0_combout\) # (\i2sound|u1|COUNTER_500\(10))))) ) ) ) # ( \i2sound|u2|SD_COUNTER\(3) & ( 
-- !\i2sound|u2|SD_COUNTER[5]~3_combout\ & ( (!\i2sound|u2|END~q\) # ((\i2sound|u1|LessThan0~0_combout\) # (\i2sound|u1|COUNTER_500\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111110001100110011000010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_END~q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER[5]~4_combout\,
	datac => \i2sound|u1|ALT_INV_COUNTER_500\(10),
	datad => \i2sound|u1|ALT_INV_LessThan0~0_combout\,
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[5]~3_combout\,
	combout => \i2sound|u2|SD_COUNTER[3]~5_combout\);

-- Location: FF_X50_Y2_N38
\i2sound|u2|SD_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SD_COUNTER[3]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD_COUNTER\(3));

-- Location: LABCELL_X50_Y2_N33
\i2sound|u2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Mux0~0_combout\ = ( !\i2sound|u2|SD_COUNTER\(1) & ( \i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|SD_COUNTER\(3) & (!\i2sound|u2|SD_COUNTER\(0) & (!\i2sound|u2|SD_COUNTER\(2) & !\i2sound|u2|SD_COUNTER\(4)))) ) ) ) # ( \i2sound|u2|SD_COUNTER\(1) 
-- & ( !\i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|SD_COUNTER\(3) & (((\i2sound|u2|SD_COUNTER\(4)) # (\i2sound|u2|SD_COUNTER\(2))) # (\i2sound|u2|SD_COUNTER\(0)))) # (\i2sound|u2|SD_COUNTER\(3) & ((!\i2sound|u2|SD_COUNTER\(0)) # 
-- ((!\i2sound|u2|SD_COUNTER\(2)) # (!\i2sound|u2|SD_COUNTER\(4))))) ) ) ) # ( !\i2sound|u2|SD_COUNTER\(1) & ( !\i2sound|u2|SD_COUNTER\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(2),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	combout => \i2sound|u2|Mux0~0_combout\);

-- Location: MLABCELL_X52_Y2_N15
\i2sound|u1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|WideOr0~0_combout\ = ( \i2sound|u1|address\(2) & ( \i2sound|u1|address\(3) ) ) # ( !\i2sound|u1|address\(2) & ( ((\i2sound|u1|address\(0) & \i2sound|u1|address\(1))) # (\i2sound|u1|address\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(0),
	datab => \i2sound|u1|ALT_INV_address\(3),
	datad => \i2sound|u1|ALT_INV_address\(1),
	dataf => \i2sound|u1|ALT_INV_address\(2),
	combout => \i2sound|u1|WideOr0~0_combout\);

-- Location: FF_X52_Y2_N16
\i2sound|u1|DATA_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(12));

-- Location: LABCELL_X50_Y2_N42
\i2sound|u2|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Decoder0~1_combout\ = ( !\i2sound|u2|SD_COUNTER\(1) & ( !\i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|SD_COUNTER\(4) & (!\i2sound|u2|SD_COUNTER\(2) & (!\i2sound|u2|SD_COUNTER\(3) & \i2sound|u2|SD_COUNTER\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(2),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	combout => \i2sound|u2|Decoder0~1_combout\);

-- Location: FF_X50_Y2_N59
\i2sound|u2|SD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(12),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(12));

-- Location: LABCELL_X50_Y2_N57
\i2sound|u2|SDO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SDO~0_combout\ = ( \i2sound|u2|SD\(12) & ( \i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|SD_COUNTER\(3) & (!\i2sound|u2|SD_COUNTER\(0) & (!\i2sound|u2|SD_COUNTER\(2) & !\i2sound|u2|SD_COUNTER\(1)))) ) ) ) # ( !\i2sound|u2|SD\(12) & ( 
-- \i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|SD_COUNTER\(3) & (!\i2sound|u2|SD_COUNTER\(0) & (!\i2sound|u2|SD_COUNTER\(2) & !\i2sound|u2|SD_COUNTER\(1)))) ) ) ) # ( \i2sound|u2|SD\(12) & ( !\i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|SD_COUNTER\(0) & 
-- ((!\i2sound|u2|SD_COUNTER\(2) & ((!\i2sound|u2|SD_COUNTER\(1)))) # (\i2sound|u2|SD_COUNTER\(2) & (!\i2sound|u2|SD_COUNTER\(3) & \i2sound|u2|SD_COUNTER\(1))))) # (\i2sound|u2|SD_COUNTER\(0) & ((!\i2sound|u2|SD_COUNTER\(3) & (\i2sound|u2|SD_COUNTER\(2) & 
-- !\i2sound|u2|SD_COUNTER\(1))) # (\i2sound|u2|SD_COUNTER\(3) & ((\i2sound|u2|SD_COUNTER\(1)))))) ) ) ) # ( !\i2sound|u2|SD\(12) & ( !\i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|SD_COUNTER\(2) & ((!\i2sound|u2|SD_COUNTER\(0) & 
-- ((!\i2sound|u2|SD_COUNTER\(1)))) # (\i2sound|u2|SD_COUNTER\(0) & (\i2sound|u2|SD_COUNTER\(3) & \i2sound|u2|SD_COUNTER\(1))))) # (\i2sound|u2|SD_COUNTER\(2) & (!\i2sound|u2|SD_COUNTER\(3) & (!\i2sound|u2|SD_COUNTER\(0) $ (!\i2sound|u2|SD_COUNTER\(1))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000011000110000100001100110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(2),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	datae => \i2sound|u2|ALT_INV_SD\(12),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	combout => \i2sound|u2|SDO~0_combout\);

-- Location: MLABCELL_X52_Y2_N27
\i2sound|u1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Mux1~0_combout\ = (\i2sound|u1|address\(1) & ((!\i2sound|u1|address\(0)) # (\i2sound|u1|address\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(2),
	datab => \i2sound|u1|ALT_INV_address\(0),
	datad => \i2sound|u1|ALT_INV_address\(1),
	combout => \i2sound|u1|Mux1~0_combout\);

-- Location: FF_X52_Y2_N28
\i2sound|u1|DATA_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(5));

-- Location: FF_X50_Y2_N29
\i2sound|u2|SD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(5),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(5));

-- Location: MLABCELL_X52_Y2_N48
\i2sound|u1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Mux0~0_combout\ = ( \i2sound|u1|address\(2) & ( \i2sound|u1|address\(1) ) ) # ( !\i2sound|u1|address\(2) & ( (!\i2sound|u1|address\(1) & \i2sound|u1|address\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|ALT_INV_address\(1),
	datad => \i2sound|u1|ALT_INV_address\(0),
	dataf => \i2sound|u1|ALT_INV_address\(2),
	combout => \i2sound|u1|Mux0~0_combout\);

-- Location: FF_X52_Y2_N49
\i2sound|u1|DATA_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(6));

-- Location: FF_X50_Y2_N26
\i2sound|u2|SD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(6),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(6));

-- Location: LABCELL_X50_Y2_N24
\i2sound|u2|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Mux0~4_combout\ = (!\i2sound|u2|SD_COUNTER\(3) & ((!\i2sound|u2|SD_COUNTER\(0) & ((\i2sound|u2|SD\(6)))) # (\i2sound|u2|SD_COUNTER\(0) & (\i2sound|u2|SD\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datac => \i2sound|u2|ALT_INV_SD\(5),
	datad => \i2sound|u2|ALT_INV_SD\(6),
	combout => \i2sound|u2|Mux0~4_combout\);

-- Location: LABCELL_X56_Y2_N57
\i2sound|u1|vol[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|vol[0]~8_combout\ = ( !\i2sound|u1|vol\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sound|u1|ALT_INV_vol\(0),
	combout => \i2sound|u1|vol[0]~8_combout\);

-- Location: FF_X56_Y2_N53
\i2sound|u1|vol[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u3|KEY0_EDGE~combout\,
	asdata => \i2sound|u1|vol[0]~8_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|vol\(0));

-- Location: MLABCELL_X52_Y2_N21
\i2sound|u1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Mux6~0_combout\ = ( \i2sound|u1|vol\(0) & ( ((\i2sound|u1|address\(2) & !\i2sound|u1|address\(1))) # (\i2sound|u1|address\(3)) ) ) # ( !\i2sound|u1|vol\(0) & ( (\i2sound|u1|address\(3)) # (\i2sound|u1|address\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111001100110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(2),
	datab => \i2sound|u1|ALT_INV_address\(3),
	datad => \i2sound|u1|ALT_INV_address\(1),
	dataf => \i2sound|u1|ALT_INV_vol\(0),
	combout => \i2sound|u1|Mux6~0_combout\);

-- Location: FF_X52_Y2_N22
\i2sound|u1|DATA_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(0));

-- Location: FF_X50_Y2_N56
\i2sound|u2|SD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(0),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(0));

-- Location: MLABCELL_X52_Y2_N24
\i2sound|u1|Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Decoder2~0_combout\ = (!\i2sound|u1|address\(2) & (\i2sound|u1|address\(0) & !\i2sound|u1|address\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(2),
	datab => \i2sound|u1|ALT_INV_address\(0),
	datac => \i2sound|u1|ALT_INV_address\(1),
	combout => \i2sound|u1|Decoder2~0_combout\);

-- Location: FF_X52_Y2_N25
\i2sound|u1|DATA_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(7));

-- Location: FF_X50_Y2_N17
\i2sound|u2|SD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(7),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(7));

-- Location: LABCELL_X50_Y2_N15
\i2sound|u2|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Mux0~3_combout\ = ( !\i2sound|u2|SD\(7) & ( \i2sound|u2|SD_COUNTER\(0) & ( !\i2sound|u2|SD_COUNTER\(3) ) ) ) # ( \i2sound|u2|SD\(7) & ( !\i2sound|u2|SD_COUNTER\(0) & ( (!\i2sound|u2|SD\(0) & \i2sound|u2|SD_COUNTER\(3)) ) ) ) # ( 
-- !\i2sound|u2|SD\(7) & ( !\i2sound|u2|SD_COUNTER\(0) & ( (!\i2sound|u2|SD\(0) & \i2sound|u2|SD_COUNTER\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD\(0),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datae => \i2sound|u2|ALT_INV_SD\(7),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	combout => \i2sound|u2|Mux0~3_combout\);

-- Location: MLABCELL_X52_Y2_N12
\i2sound|u1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|WideOr5~0_combout\ = ( \i2sound|u1|address\(2) & ( (\i2sound|u1|address\(3)) # (\i2sound|u1|address\(0)) ) ) # ( !\i2sound|u1|address\(2) & ( ((\i2sound|u1|address\(0) & !\i2sound|u1|address\(1))) # (\i2sound|u1|address\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(0),
	datab => \i2sound|u1|ALT_INV_address\(3),
	datac => \i2sound|u1|ALT_INV_address\(1),
	dataf => \i2sound|u1|ALT_INV_address\(2),
	combout => \i2sound|u1|WideOr5~0_combout\);

-- Location: FF_X52_Y2_N13
\i2sound|u1|DATA_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(9));

-- Location: FF_X50_Y2_N53
\i2sound|u2|SD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(9),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(9));

-- Location: LABCELL_X56_Y2_N27
\i2sound|u1|vol~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|vol~0_combout\ = ( \i2sound|u1|vol\(0) & ( (!\i2sound|u1|vol\(2) & (\i2sound|u1|vol\(4) & ((!\i2sound|u1|vol\(1)) # (!\i2sound|u1|vol\(3))))) # (\i2sound|u1|vol\(2) & (!\i2sound|u1|vol\(4) $ (((!\i2sound|u1|vol\(3)))))) ) ) # ( 
-- !\i2sound|u1|vol\(0) & ( !\i2sound|u1|vol\(4) $ (((!\i2sound|u1|vol\(2)) # ((!\i2sound|u1|vol\(1)) # (!\i2sound|u1|vol\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100110011011000110011011001000011001101100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(2),
	datab => \i2sound|u1|ALT_INV_vol\(4),
	datac => \i2sound|u1|ALT_INV_vol\(1),
	datad => \i2sound|u1|ALT_INV_vol\(3),
	dataf => \i2sound|u1|ALT_INV_vol\(0),
	combout => \i2sound|u1|vol~0_combout\);

-- Location: FF_X56_Y2_N56
\i2sound|u1|vol[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u3|KEY0_EDGE~combout\,
	asdata => \i2sound|u1|vol~0_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|vol\(4));

-- Location: LABCELL_X56_Y2_N18
\i2sound|u1|vol~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|vol~1_combout\ = ( \i2sound|u1|vol\(4) & ( (!\i2sound|u1|vol\(2) & (\i2sound|u1|vol\(3) & ((!\i2sound|u1|vol\(0)) # (!\i2sound|u1|vol\(1))))) # (\i2sound|u1|vol\(2) & (!\i2sound|u1|vol\(3) $ (((!\i2sound|u1|vol\(0) & !\i2sound|u1|vol\(1)))))) 
-- ) ) # ( !\i2sound|u1|vol\(4) & ( !\i2sound|u1|vol\(3) $ (((!\i2sound|u1|vol\(2)) # ((!\i2sound|u1|vol\(0) & !\i2sound|u1|vol\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100000001110011110000000111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(0),
	datab => \i2sound|u1|ALT_INV_vol\(1),
	datac => \i2sound|u1|ALT_INV_vol\(3),
	datad => \i2sound|u1|ALT_INV_vol\(2),
	dataf => \i2sound|u1|ALT_INV_vol\(4),
	combout => \i2sound|u1|vol~1_combout\);

-- Location: FF_X56_Y2_N23
\i2sound|u1|vol[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u3|KEY0_EDGE~combout\,
	asdata => \i2sound|u1|vol~1_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|vol\(3));

-- Location: LABCELL_X56_Y2_N48
\i2sound|u1|vol~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|vol~3_combout\ = ( \i2sound|u1|vol\(4) & ( (!\i2sound|u1|vol\(0) & (!\i2sound|u1|vol\(1))) # (\i2sound|u1|vol\(0) & (\i2sound|u1|vol\(1) & ((!\i2sound|u1|vol\(3)) # (\i2sound|u1|vol\(2))))) ) ) # ( !\i2sound|u1|vol\(4) & ( !\i2sound|u1|vol\(0) 
-- $ (\i2sound|u1|vol\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100010011001100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(0),
	datab => \i2sound|u1|ALT_INV_vol\(1),
	datac => \i2sound|u1|ALT_INV_vol\(2),
	datad => \i2sound|u1|ALT_INV_vol\(3),
	dataf => \i2sound|u1|ALT_INV_vol\(4),
	combout => \i2sound|u1|vol~3_combout\);

-- Location: FF_X56_Y2_N49
\i2sound|u1|vol[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u3|KEY0_EDGE~combout\,
	d => \i2sound|u1|vol~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|vol\(1));

-- Location: LABCELL_X56_Y2_N21
\i2sound|u1|vol~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|vol~2_combout\ = ( \i2sound|u1|vol\(2) & ( (!\i2sound|u1|vol\(0) & !\i2sound|u1|vol\(1)) ) ) # ( !\i2sound|u1|vol\(2) & ( (!\i2sound|u1|vol\(0) & (\i2sound|u1|vol\(1))) # (\i2sound|u1|vol\(0) & ((!\i2sound|u1|vol\(1)) # ((!\i2sound|u1|vol\(4)) 
-- # (!\i2sound|u1|vol\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110110011101110111011010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(0),
	datab => \i2sound|u1|ALT_INV_vol\(1),
	datac => \i2sound|u1|ALT_INV_vol\(4),
	datad => \i2sound|u1|ALT_INV_vol\(3),
	dataf => \i2sound|u1|ALT_INV_vol\(2),
	combout => \i2sound|u1|vol~2_combout\);

-- Location: FF_X56_Y2_N20
\i2sound|u1|vol[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u3|KEY0_EDGE~combout\,
	asdata => \i2sound|u1|vol~2_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|vol\(2));

-- Location: LABCELL_X56_Y2_N24
\i2sound|u1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Mux4~0_combout\ = ( \i2sound|u1|address\(1) & ( !\i2sound|u1|vol\(2) ) ) # ( !\i2sound|u1|address\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(2),
	dataf => \i2sound|u1|ALT_INV_address\(1),
	combout => \i2sound|u1|Mux4~0_combout\);

-- Location: FF_X53_Y2_N41
\i2sound|u1|DATA_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	asdata => \i2sound|u1|Mux4~0_combout\,
	sclr => \i2sound|u1|ALT_INV_address\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(2));

-- Location: FF_X50_Y2_N50
\i2sound|u2|SD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(2),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(2));

-- Location: LABCELL_X53_Y2_N48
\i2sound|u1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Mux5~0_combout\ = ( \i2sound|u1|address\(1) & ( (!\i2sound|u1|vol\(1) & \i2sound|u1|address\(2)) ) ) # ( !\i2sound|u1|address\(1) & ( (\i2sound|u1|address\(2)) # (\i2sound|u1|address\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u1|ALT_INV_vol\(1),
	datac => \i2sound|u1|ALT_INV_address\(0),
	datad => \i2sound|u1|ALT_INV_address\(2),
	dataf => \i2sound|u1|ALT_INV_address\(1),
	combout => \i2sound|u1|Mux5~0_combout\);

-- Location: FF_X53_Y2_N49
\i2sound|u1|DATA_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(1));

-- Location: FF_X50_Y2_N14
\i2sound|u2|SD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(1),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(1));

-- Location: LABCELL_X50_Y2_N48
\i2sound|u2|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Mux0~2_combout\ = ( \i2sound|u2|SD\(2) & ( \i2sound|u2|SD\(1) & ( ((\i2sound|u2|SD\(9) & !\i2sound|u2|SD_COUNTER\(0))) # (\i2sound|u2|SD_COUNTER\(3)) ) ) ) # ( !\i2sound|u2|SD\(2) & ( \i2sound|u2|SD\(1) & ( (!\i2sound|u2|SD_COUNTER\(3) & 
-- (\i2sound|u2|SD\(9) & !\i2sound|u2|SD_COUNTER\(0))) # (\i2sound|u2|SD_COUNTER\(3) & ((\i2sound|u2|SD_COUNTER\(0)))) ) ) ) # ( \i2sound|u2|SD\(2) & ( !\i2sound|u2|SD\(1) & ( (!\i2sound|u2|SD_COUNTER\(0) & ((\i2sound|u2|SD\(9)) # 
-- (\i2sound|u2|SD_COUNTER\(3)))) ) ) ) # ( !\i2sound|u2|SD\(2) & ( !\i2sound|u2|SD\(1) & ( (!\i2sound|u2|SD_COUNTER\(3) & (\i2sound|u2|SD\(9) & !\i2sound|u2|SD_COUNTER\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000010111110000000000001010010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datac => \i2sound|u2|ALT_INV_SD\(9),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datae => \i2sound|u2|ALT_INV_SD\(2),
	dataf => \i2sound|u2|ALT_INV_SD\(1),
	combout => \i2sound|u2|Mux0~2_combout\);

-- Location: MLABCELL_X52_Y2_N33
\i2sound|u1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|WideOr2~0_combout\ = (!\i2sound|u1|address\(2) & (!\i2sound|u1|address\(3) & ((!\i2sound|u1|address\(0)) # (!\i2sound|u1|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(2),
	datab => \i2sound|u1|ALT_INV_address\(0),
	datac => \i2sound|u1|ALT_INV_address\(3),
	datad => \i2sound|u1|ALT_INV_address\(1),
	combout => \i2sound|u1|WideOr2~0_combout\);

-- Location: FF_X52_Y2_N34
\i2sound|u1|DATA_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(11));

-- Location: FF_X50_Y2_N2
\i2sound|u2|SD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(11),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(11));

-- Location: MLABCELL_X52_Y2_N30
\i2sound|u1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Mux2~0_combout\ = (!\i2sound|u1|address\(2) & (!\i2sound|u1|address\(0))) # (\i2sound|u1|address\(2) & ((!\i2sound|u1|vol\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110100000111101011010000011110101101000001111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(2),
	datac => \i2sound|u1|ALT_INV_address\(0),
	datad => \i2sound|u1|ALT_INV_vol\(4),
	combout => \i2sound|u1|Mux2~0_combout\);

-- Location: FF_X52_Y2_N31
\i2sound|u1|DATA_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|Mux2~0_combout\,
	asdata => \i2sound|u1|address\(2),
	sload => \i2sound|u1|ALT_INV_address\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(4));

-- Location: FF_X50_Y2_N8
\i2sound|u2|SD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(4),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(4));

-- Location: MLABCELL_X52_Y2_N18
\i2sound|u1|DATA_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|DATA_A~0_combout\ = (!\i2sound|u1|address\(3) & (!\i2sound|u1|address\(2) $ (\i2sound|u1|address\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_address\(2),
	datab => \i2sound|u1|ALT_INV_address\(3),
	datac => \i2sound|u1|ALT_INV_address\(1),
	combout => \i2sound|u1|DATA_A~0_combout\);

-- Location: FF_X52_Y2_N19
\i2sound|u1|DATA_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|DATA_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(10));

-- Location: FF_X50_Y2_N5
\i2sound|u2|SD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(10),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(10));

-- Location: LABCELL_X53_Y1_N30
\i2sound|u1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Mux3~0_combout\ = ( !\i2sound|u1|address\(0) & ( \i2sound|u1|vol\(3) & ( !\i2sound|u1|address\(2) ) ) ) # ( \i2sound|u1|address\(0) & ( !\i2sound|u1|vol\(3) & ( \i2sound|u1|address\(2) ) ) ) # ( !\i2sound|u1|address\(0) & ( 
-- !\i2sound|u1|vol\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|ALT_INV_address\(2),
	datae => \i2sound|u1|ALT_INV_address\(0),
	dataf => \i2sound|u1|ALT_INV_vol\(3),
	combout => \i2sound|u1|Mux3~0_combout\);

-- Location: FF_X53_Y1_N31
\i2sound|u1|DATA_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u2|END~q\,
	d => \i2sound|u1|Mux3~0_combout\,
	sclr => \i2sound|u1|ALT_INV_address\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u1|DATA_A\(3));

-- Location: FF_X50_Y2_N11
\i2sound|u2|SD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u1|DATA_A\(3),
	sload => VCC,
	ena => \i2sound|u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SD\(3));

-- Location: LABCELL_X50_Y2_N9
\i2sound|u2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Mux0~1_combout\ = ( \i2sound|u2|SD\(3) & ( \i2sound|u2|SD_COUNTER\(3) & ( (\i2sound|u2|SD_COUNTER\(0)) # (\i2sound|u2|SD\(4)) ) ) ) # ( !\i2sound|u2|SD\(3) & ( \i2sound|u2|SD_COUNTER\(3) & ( (\i2sound|u2|SD\(4) & !\i2sound|u2|SD_COUNTER\(0)) ) 
-- ) ) # ( \i2sound|u2|SD\(3) & ( !\i2sound|u2|SD_COUNTER\(3) & ( (!\i2sound|u2|SD_COUNTER\(0) & (\i2sound|u2|SD\(11))) # (\i2sound|u2|SD_COUNTER\(0) & ((\i2sound|u2|SD\(10)))) ) ) ) # ( !\i2sound|u2|SD\(3) & ( !\i2sound|u2|SD_COUNTER\(3) & ( 
-- (!\i2sound|u2|SD_COUNTER\(0) & (\i2sound|u2|SD\(11))) # (\i2sound|u2|SD_COUNTER\(0) & ((\i2sound|u2|SD\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD\(11),
	datab => \i2sound|u2|ALT_INV_SD\(4),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(0),
	datad => \i2sound|u2|ALT_INV_SD\(10),
	datae => \i2sound|u2|ALT_INV_SD\(3),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	combout => \i2sound|u2|Mux0~1_combout\);

-- Location: LABCELL_X50_Y2_N18
\i2sound|u2|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Mux0~5_combout\ = ( \i2sound|u2|SD_COUNTER\(1) & ( \i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & ( \i2sound|u2|Mux0~4_combout\ ) ) ) # ( !\i2sound|u2|SD_COUNTER\(1) & ( \i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & ( !\i2sound|u2|Mux0~3_combout\ ) ) ) # 
-- ( \i2sound|u2|SD_COUNTER\(1) & ( !\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & ( \i2sound|u2|Mux0~2_combout\ ) ) ) # ( !\i2sound|u2|SD_COUNTER\(1) & ( !\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & ( \i2sound|u2|Mux0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111111001100110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_Mux0~4_combout\,
	datab => \i2sound|u2|ALT_INV_Mux0~3_combout\,
	datac => \i2sound|u2|ALT_INV_Mux0~2_combout\,
	datad => \i2sound|u2|ALT_INV_Mux0~1_combout\,
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	combout => \i2sound|u2|Mux0~5_combout\);

-- Location: LABCELL_X50_Y2_N36
\i2sound|u2|SDO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SDO~1_combout\ = ( \i2sound|u2|SDO~0_combout\ & ( \i2sound|u2|Mux0~5_combout\ & ( (!\i2sound|u2|Mux0~0_combout\ & (((\i2sound|u2|SDO~q\)))) # (\i2sound|u2|Mux0~0_combout\ & ((!\i2sound|u2|SD_COUNTER\(5)) # ((!\i2sound|u2|SD_COUNTER\(4))))) ) ) 
-- ) # ( !\i2sound|u2|SDO~0_combout\ & ( \i2sound|u2|Mux0~5_combout\ & ( (!\i2sound|u2|Mux0~0_combout\ & (((\i2sound|u2|SDO~q\)))) # (\i2sound|u2|Mux0~0_combout\ & (!\i2sound|u2|SD_COUNTER\(5) & (\i2sound|u2|SD_COUNTER\(4)))) ) ) ) # ( 
-- \i2sound|u2|SDO~0_combout\ & ( !\i2sound|u2|Mux0~5_combout\ & ( (!\i2sound|u2|Mux0~0_combout\ & ((\i2sound|u2|SDO~q\))) # (\i2sound|u2|Mux0~0_combout\ & (!\i2sound|u2|SD_COUNTER\(4))) ) ) ) # ( !\i2sound|u2|SDO~0_combout\ & ( !\i2sound|u2|Mux0~5_combout\ 
-- & ( (!\i2sound|u2|Mux0~0_combout\ & \i2sound|u2|SDO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010100001111101000000100101011100101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_Mux0~0_combout\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	datad => \i2sound|u2|ALT_INV_SDO~q\,
	datae => \i2sound|u2|ALT_INV_SDO~0_combout\,
	dataf => \i2sound|u2|ALT_INV_Mux0~5_combout\,
	combout => \i2sound|u2|SDO~1_combout\);

-- Location: FF_X50_Y2_N22
\i2sound|u2|SDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SDO~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SDO~q\);

-- Location: IOIBUF_X89_Y6_N38
\AUD_ADCDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X87_Y19_N33
\audio_in~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \audio_in~0_combout\ = (\AUD_ADCDAT~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AUD_ADCDAT~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	combout => \audio_in~0_combout\);

-- Location: FF_X87_Y19_N35
audio_in : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \audio_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio_in~q\);

-- Location: FF_X87_Y19_N31
AUD_DACDAT_Reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \audio_in~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUD_DACDAT_Reg~q\);

-- Location: MLABCELL_X84_Y6_N3
\AUD_XCK_Reg~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \AUD_XCK_Reg~feeder_combout\ = ( \i2sound|u1|COUNTER_500\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sound|u1|ALT_INV_COUNTER_500\(1),
	combout => \AUD_XCK_Reg~feeder_combout\);

-- Location: FF_X84_Y6_N4
AUD_XCK_Reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AUD_XCK_Reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUD_XCK_Reg~q\);

-- Location: LABCELL_X55_Y2_N21
\i2sound|u2|I2C_SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|I2C_SCLK~0_combout\ = ( \i2sound|u2|SD_COUNTER\(4) & ( (\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & (\i2sound|u2|SD_COUNTER\(1) & (\i2sound|u2|SD_COUNTER\(3) & \i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\))) ) ) # ( !\i2sound|u2|SD_COUNTER\(4) & ( 
-- (!\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & !\i2sound|u2|SD_COUNTER\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	datad => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	combout => \i2sound|u2|I2C_SCLK~0_combout\);

-- Location: LABCELL_X55_Y2_N18
\i2sound|u2|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SCLK~0_combout\ = ( \i2sound|u2|SD_COUNTER\(4) & ( (\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & (\i2sound|u2|SD_COUNTER\(1) & (\i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & \i2sound|u2|SD_COUNTER\(3)))) ) ) # ( !\i2sound|u2|SD_COUNTER\(4) & ( 
-- (!\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & (!\i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & !\i2sound|u2|SD_COUNTER\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	combout => \i2sound|u2|SCLK~0_combout\);

-- Location: LABCELL_X55_Y2_N6
\i2sound|u2|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|Selector1~0_combout\ = ( \i2sound|u2|SD_COUNTER\(3) & ( \i2sound|u2|SD_COUNTER\(4) & ( (\i2sound|u2|SD_COUNTER\(1) & (\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & !\i2sound|u2|SD_COUNTER\(5))) ) ) ) # ( !\i2sound|u2|SD_COUNTER\(3) & ( 
-- !\i2sound|u2|SD_COUNTER\(4) & ( (!\i2sound|u2|SD_COUNTER[0]~DUPLICATE_q\ & (!\i2sound|u2|SD_COUNTER[2]~DUPLICATE_q\ & !\i2sound|u2|SD_COUNTER\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u2|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(1),
	datac => \i2sound|u2|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	datad => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	datae => \i2sound|u2|ALT_INV_SD_COUNTER\(3),
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(4),
	combout => \i2sound|u2|Selector1~0_combout\);

-- Location: LABCELL_X55_Y2_N12
\i2sound|u2|SCLK~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|SCLK~1_combout\ = ( \i2sound|u2|SCLK~q\ & ( (!\i2sound|u2|Selector1~0_combout\) # ((!\i2sound|u2|SD_COUNTER\(5) & \i2sound|u2|SCLK~0_combout\)) ) ) # ( !\i2sound|u2|SCLK~q\ & ( (!\i2sound|u2|SD_COUNTER\(5) & (\i2sound|u2|SCLK~0_combout\ & 
-- \i2sound|u2|Selector1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	datac => \i2sound|u2|ALT_INV_SCLK~0_combout\,
	datad => \i2sound|u2|ALT_INV_Selector1~0_combout\,
	dataf => \i2sound|u2|ALT_INV_SCLK~q\,
	combout => \i2sound|u2|SCLK~1_combout\);

-- Location: FF_X55_Y2_N35
\i2sound|u2|SCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2sound|u1|COUNTER_500\(9),
	asdata => \i2sound|u2|SCLK~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2sound|u2|SCLK~q\);

-- Location: LABCELL_X55_Y3_N30
\i2sound|u2|I2C_SCLK~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u2|I2C_SCLK~1_combout\ = ( \i2sound|u2|SCLK~q\ & ( \i2sound|u2|SD_COUNTER\(5) ) ) # ( \i2sound|u2|SCLK~q\ & ( !\i2sound|u2|SD_COUNTER\(5) ) ) # ( !\i2sound|u2|SCLK~q\ & ( !\i2sound|u2|SD_COUNTER\(5) & ( (!\i2sound|u2|I2C_SCLK~0_combout\ & 
-- !\i2sound|u1|COUNTER_500\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u2|ALT_INV_I2C_SCLK~0_combout\,
	datac => \i2sound|u1|ALT_INV_COUNTER_500\(9),
	datae => \i2sound|u2|ALT_INV_SCLK~q\,
	dataf => \i2sound|u2|ALT_INV_SD_COUNTER\(5),
	combout => \i2sound|u2|I2C_SCLK~1_combout\);

-- Location: FF_X55_Y3_N31
FPGA_I2C_SCLK_Reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u2|I2C_SCLK~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FPGA_I2C_SCLK_Reg~q\);

-- Location: LABCELL_X56_Y2_N30
\i2sound|u1|Div0|auto_generated|divider|divider|op_21~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_21~9_sumout\ = SUM(( !\i2sound|u1|vol\(4) $ (((\i2sound|u1|vol\(2) & \i2sound|u1|vol\(3)))) ) + ( VCC ) + ( !VCC ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_21~10\ = CARRY(( !\i2sound|u1|vol\(4) $ (((\i2sound|u1|vol\(2) & \i2sound|u1|vol\(3)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(2),
	datab => \i2sound|u1|ALT_INV_vol\(4),
	datac => \i2sound|u1|ALT_INV_vol\(3),
	cin => GND,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_21~9_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_21~10\);

-- Location: LABCELL_X56_Y2_N33
\i2sound|u1|Div0|auto_generated|divider|divider|op_21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_21~5_sumout\ = SUM(( (\i2sound|u1|vol\(2) & (\i2sound|u1|vol\(4) & \i2sound|u1|vol\(3))) ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_21~10\ ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_21~6\ = CARRY(( (\i2sound|u1|vol\(2) & (\i2sound|u1|vol\(4) & \i2sound|u1|vol\(3))) ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_21~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(2),
	datab => \i2sound|u1|ALT_INV_vol\(4),
	datad => \i2sound|u1|ALT_INV_vol\(3),
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_21~10\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_21~5_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_21~6\);

-- Location: LABCELL_X56_Y2_N36
\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_21~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_21~6\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\);

-- Location: LABCELL_X55_Y2_N45
\i2sound|u1|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add3~0_combout\ = ( \i2sound|u1|vol\(2) & ( !\i2sound|u1|vol\(3) ) ) # ( !\i2sound|u1|vol\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(3),
	dataf => \i2sound|u1|ALT_INV_vol\(2),
	combout => \i2sound|u1|Add3~0_combout\);

-- Location: LABCELL_X56_Y2_N12
\i2sound|u1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Add3~1_combout\ = !\i2sound|u1|vol\(2) $ (!\i2sound|u1|vol\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|ALT_INV_vol\(2),
	datad => \i2sound|u1|ALT_INV_vol\(3),
	combout => \i2sound|u1|Add3~1_combout\);

-- Location: LABCELL_X56_Y2_N0
\i2sound|u1|Div0|auto_generated|divider|divider|op_22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_22~13_sumout\ = SUM(( VCC ) + ( !\i2sound|u1|Add3~1_combout\ ) + ( !VCC ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_22~14\ = CARRY(( VCC ) + ( !\i2sound|u1|Add3~1_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i2sound|u1|ALT_INV_Add3~1_combout\,
	cin => GND,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~13_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~14\);

-- Location: LABCELL_X56_Y2_N3
\i2sound|u1|Div0|auto_generated|divider|divider|op_22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_22~9_sumout\ = SUM(( GND ) + ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|op_21~9_sumout\)))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (!\i2sound|u1|Add3~0_combout\ $ ((!\i2sound|u1|vol\(4))))) ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~14\ ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_22~10\ = CARRY(( GND ) + ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|op_21~9_sumout\)))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (!\i2sound|u1|Add3~0_combout\ $ ((!\i2sound|u1|vol\(4))))) ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010110100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \i2sound|u1|ALT_INV_Add3~0_combout\,
	datac => \i2sound|u1|ALT_INV_vol\(4),
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\,
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~14\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~9_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~10\);

-- Location: LABCELL_X56_Y2_N15
\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~0_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_21~9_sumout\ & ( !\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\,
	combout => \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~0_combout\);

-- Location: LABCELL_X56_Y2_N6
\i2sound|u1|Div0|auto_generated|divider|divider|op_22~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_22~6_cout\ = CARRY(( VCC ) + ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|op_21~5_sumout\)))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (\i2sound|u1|vol\(4) & (!\i2sound|u1|Add3~0_combout\))) ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110100010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \i2sound|u1|ALT_INV_vol\(4),
	datac => \i2sound|u1|ALT_INV_Add3~0_combout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~5_sumout\,
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~10\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~6_cout\);

-- Location: LABCELL_X56_Y2_N9
\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~6_cout\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\);

-- Location: LABCELL_X56_Y2_N54
\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~1_combout\ = ( \i2sound|u1|Add3~0_combout\ & ( (\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & !\i2sound|u1|vol\(4)) ) ) # ( !\i2sound|u1|Add3~0_combout\ & ( 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_21~1_sumout\ & \i2sound|u1|vol\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datad => \i2sound|u1|ALT_INV_vol\(4),
	dataf => \i2sound|u1|ALT_INV_Add3~0_combout\,
	combout => \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~1_combout\);

-- Location: LABCELL_X55_Y2_N30
\i2sound|u1|Div0|auto_generated|divider|divider|op_23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_23~13_sumout\ = SUM(( \i2sound|u1|vol\(2) ) + ( VCC ) + ( !VCC ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_23~14\ = CARRY(( \i2sound|u1|vol\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u1|ALT_INV_vol\(2),
	cin => GND,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~13_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~14\);

-- Location: LABCELL_X55_Y2_N33
\i2sound|u1|Div0|auto_generated|divider|divider|op_23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_23~9_sumout\ = SUM(( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|op_22~13_sumout\)))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (!\i2sound|u1|vol\(2) $ ((\i2sound|u1|vol\(3))))) ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_23~14\ ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_23~10\ = CARRY(( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|op_22~13_sumout\)))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (!\i2sound|u1|vol\(2) $ ((\i2sound|u1|vol\(3))))) ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100000111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \i2sound|u1|ALT_INV_vol\(2),
	datac => \i2sound|u1|ALT_INV_vol\(3),
	datad => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~14\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~9_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~10\);

-- Location: LABCELL_X55_Y2_N36
\i2sound|u1|Div0|auto_generated|divider|divider|op_23~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_23~6_cout\ = CARRY(( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\i2sound|u1|Div0|auto_generated|divider|divider|op_22~9_sumout\)) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~1_combout\) # (\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[81]~0_combout\)))) ) + ( VCC ) + ( 
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~0_combout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datad => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~1_combout\,
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~10\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~6_cout\);

-- Location: LABCELL_X55_Y2_N39
\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_23~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~6_cout\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\);

-- Location: LABCELL_X53_Y2_N51
\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~2_combout\ = ( !\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~2_combout\);

-- Location: LABCELL_X56_Y2_N45
\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~3_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( !\i2sound|u1|Add3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|ALT_INV_Add3~1_combout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~3_combout\);

-- Location: LABCELL_X53_Y2_N30
\i2sound|u1|Div0|auto_generated|divider|divider|op_25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~13_sumout\ = SUM(( !\i2sound|u1|vol\(1) ) + ( VCC ) + ( !VCC ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~14\ = CARRY(( !\i2sound|u1|vol\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|ALT_INV_vol\(1),
	cin => GND,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~13_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~14\);

-- Location: LABCELL_X53_Y2_N33
\i2sound|u1|Div0|auto_generated|divider|divider|op_25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~9_sumout\ = SUM(( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\i2sound|u1|Div0|auto_generated|divider|divider|op_23~13_sumout\))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (\i2sound|u1|vol\(2))) ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_25~14\ ))
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~10\ = CARRY(( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\i2sound|u1|Div0|auto_generated|divider|divider|op_23~13_sumout\))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (\i2sound|u1|vol\(2))) ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_25~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|ALT_INV_vol\(2),
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~14\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~9_sumout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~10\);

-- Location: LABCELL_X53_Y2_N36
\i2sound|u1|Div0|auto_generated|divider|divider|op_25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~6_cout\ = CARRY(( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|op_23~9_sumout\)))) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~3_combout\)) # (\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[84]~2_combout\))) ) + ( VCC ) + ( 
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~2_combout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~3_combout\,
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~10\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~6_cout\);

-- Location: LABCELL_X53_Y2_N39
\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_25~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~6_cout\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\);

-- Location: LABCELL_X53_Y2_N54
\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~4_combout\ = (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & \i2sound|u1|Div0|auto_generated|divider|divider|op_23~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	combout => \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~4_combout\);

-- Location: LABCELL_X53_Y2_N57
\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~5_combout\ = (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & \i2sound|u1|vol\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \i2sound|u1|ALT_INV_vol\(2),
	combout => \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~5_combout\);

-- Location: LABCELL_X56_Y2_N51
\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[90]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[90]~6_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & ( !\i2sound|u1|vol\(1) ) ) # ( !\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & ( 
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u1|ALT_INV_vol\(1),
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	combout => \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[90]~6_combout\);

-- Location: LABCELL_X53_Y2_N0
\i2sound|u1|Div0|auto_generated|divider|divider|op_26~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_26~10_cout\ = CARRY(( \i2sound|u1|Div0|auto_generated|divider|divider|StageOut[90]~6_combout\ ) + ( !\i2sound|u1|vol\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~6_combout\,
	dataf => \i2sound|u1|ALT_INV_vol\(0),
	cin => GND,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_26~10_cout\);

-- Location: LABCELL_X53_Y2_N3
\i2sound|u1|Div0|auto_generated|divider|divider|op_26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_26~6_cout\ = CARRY(( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (\i2sound|u1|Div0|auto_generated|divider|divider|op_25~9_sumout\)) # 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (((\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~5_combout\) # (\i2sound|u1|Div0|auto_generated|divider|divider|StageOut[87]~4_combout\)))) ) + ( VCC ) + ( 
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_26~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~4_combout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~5_combout\,
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_26~10_cout\,
	cout => \i2sound|u1|Div0|auto_generated|divider|divider|op_26~6_cout\);

-- Location: LABCELL_X53_Y2_N6
\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i2sound|u1|Div0|auto_generated|divider|divider|op_26~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i2sound|u1|Div0|auto_generated|divider|divider|op_26~6_cout\,
	sumout => \i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\);

-- Location: LABCELL_X53_Y2_N42
\i2sound|u4|hex_fps[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u4|hex_fps[0]~0_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ $ 
-- (!\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u4|hex_fps[0]~0_combout\);

-- Location: FF_X53_Y2_N43
\HEX0_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u4|hex_fps[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEX0_Reg(0));

-- Location: LABCELL_X53_Y2_N45
\i2sound|u4|hex_fps[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u4|hex_fps[1]~1_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ $ 
-- (!\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u4|hex_fps[1]~1_combout\);

-- Location: FF_X53_Y2_N47
\HEX0_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u4|hex_fps[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEX0_Reg(1));

-- Location: LABCELL_X53_Y2_N18
\i2sound|u4|hex_fps[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u4|hex_fps[2]~2_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u4|hex_fps[2]~2_combout\);

-- Location: FF_X53_Y2_N19
\HEX0_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u4|hex_fps[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEX0_Reg(2));

-- Location: LABCELL_X53_Y2_N21
\i2sound|u4|hex_fps[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u4|hex_fps[3]~3_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ $ 
-- (\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\))) # (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- !\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101000010101010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u4|hex_fps[3]~3_combout\);

-- Location: FF_X53_Y2_N22
\HEX0_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u4|hex_fps[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEX0_Reg(3));

-- Location: LABCELL_X53_Y2_N24
\i2sound|u4|hex_fps[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u4|hex_fps[4]~4_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\) # ((!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- \i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\)) ) ) # ( !\i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\) # 
-- ((!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\) # (!\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u4|hex_fps[4]~4_combout\);

-- Location: FF_X53_Y2_N25
\HEX0_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u4|hex_fps[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEX0_Reg(4));

-- Location: LABCELL_X53_Y2_N27
\i2sound|u4|hex_fps[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u4|hex_fps[5]~5_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- !\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\)) # (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\) # 
-- (!\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010100110101001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u4|hex_fps[5]~5_combout\);

-- Location: FF_X53_Y2_N28
\HEX0_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u4|hex_fps[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEX0_Reg(5));

-- Location: LABCELL_X53_Y2_N12
\i2sound|u4|hex_fps[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2sound|u4|hex_fps[6]~6_combout\ = ( \i2sound|u1|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (!\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- !\i2sound|u1|Div0|auto_generated|divider|divider|op_26~1_sumout\)) # (\i2sound|u1|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (\i2sound|u1|Div0|auto_generated|divider|divider|op_23~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \i2sound|u1|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \i2sound|u4|hex_fps[6]~6_combout\);

-- Location: FF_X53_Y2_N13
\HEX0_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i2sound|u4|hex_fps[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEX0_Reg(6));

-- Location: LABCELL_X83_Y5_N0
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~5_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0) ) + ( VCC ) + ( !VCC ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~6\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(0),
	cin => GND,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~5_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~6\);

-- Location: IOIBUF_X88_Y0_N2
\MIDI_RX~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MIDI_RX,
	o => \MIDI_RX~input_o\);

-- Location: LABCELL_X88_Y5_N30
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~1_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(0) ) + ( VCC ) + ( !VCC ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~2\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(0),
	cin => GND,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~1_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~2\);

-- Location: LABCELL_X88_Y5_N48
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~25_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(6) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~22\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~26\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(6) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(6),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~22\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~25_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~26\);

-- Location: LABCELL_X88_Y5_N51
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~29_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(7) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(7),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~26\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~29_sumout\);

-- Location: LABCELL_X88_Y5_N57
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~29_sumout\ & (!\MIDI_RX~input_o\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~29_sumout\ & 
-- !\MIDI_RX~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~1_combout\);

-- Location: LABCELL_X88_Y4_N0
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~37_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(0) ) + ( VCC ) + ( !VCC ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~38\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(0),
	cin => GND,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~37_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~38\);

-- Location: LABCELL_X88_Y4_N3
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~41_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(1) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~38\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~42\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(1) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(1),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~38\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~41_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~42\);

-- Location: LABCELL_X88_Y4_N54
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\ = ( \MIDI_RX~input_o\ & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) $ (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1)) 
-- ) ) # ( !\MIDI_RX~input_o\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & (((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\)) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1)))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101110011001100110111001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_MIDI_RX~input_o\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\);

-- Location: FF_X88_Y4_N5
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~41_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(1));

-- Location: LABCELL_X88_Y4_N6
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~45_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(2) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~42\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~46\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(2) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(2),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~42\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~45_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~46\);

-- Location: FF_X88_Y4_N8
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~45_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(2));

-- Location: LABCELL_X88_Y4_N9
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~33_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(3) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~46\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~34\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(3) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(3),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~46\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~33_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~34\);

-- Location: FF_X88_Y4_N11
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~33_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(3));

-- Location: LABCELL_X88_Y4_N12
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~5_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(4) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~34\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~6\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(4) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(4),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~34\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~5_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~6\);

-- Location: FF_X88_Y4_N14
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~5_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(4));

-- Location: LABCELL_X88_Y4_N15
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~9_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(5) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~6\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~10\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(5) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(5),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~6\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~9_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~10\);

-- Location: FF_X88_Y4_N17
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~9_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(5));

-- Location: LABCELL_X88_Y4_N18
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~13_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(6) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~10\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~14\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(6) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(6),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~10\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~13_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~14\);

-- Location: FF_X88_Y4_N20
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~13_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(6));

-- Location: LABCELL_X88_Y4_N21
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~17_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(7) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~14\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~18\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(7) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(7),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~14\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~17_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~18\);

-- Location: FF_X88_Y4_N23
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~17_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(7));

-- Location: LABCELL_X88_Y4_N24
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~21_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(8) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~18\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~22\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(8) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(8),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~18\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~21_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~22\);

-- Location: FF_X88_Y4_N26
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~21_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(8));

-- Location: LABCELL_X88_Y4_N27
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~25_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(9) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~22\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~26\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(9) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(9),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~22\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~25_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~26\);

-- Location: FF_X88_Y4_N29
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~25_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(9));

-- Location: LABCELL_X88_Y4_N30
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~29_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(10) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~26\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~30\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(10) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(10),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~26\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~29_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~30\);

-- Location: FF_X88_Y4_N32
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~29_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(10));

-- Location: LABCELL_X88_Y4_N33
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~1_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(11) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(11),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~30\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~1_sumout\);

-- Location: FF_X88_Y4_N35
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~1_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(11));

-- Location: LABCELL_X88_Y4_N36
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(7) & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(8) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(11) & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(5) & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(6) & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(11),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(5),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(6),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(7),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(8),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\);

-- Location: LABCELL_X88_Y4_N57
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\ = (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & ((!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0)) # 
-- ((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001100100010001000110010001000100011001000100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~1_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\);

-- Location: FF_X88_Y4_N2
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add2~37_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(0));

-- Location: LABCELL_X88_Y4_N42
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(9) & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(10) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(0) & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(2) & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(1) & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiCount\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(2),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(1),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(3),
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(9),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiCount\(10),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\);

-- Location: LABCELL_X85_Y5_N39
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~1_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\);

-- Location: LABCELL_X88_Y4_N48
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0) & ( 
-- (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2) & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(2),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~0_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~1_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~2_combout\);

-- Location: LABCELL_X85_Y5_N54
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[1]~3_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~2_combout\ ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~2_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[1]~3_combout\);

-- Location: FF_X85_Y5_N55
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1));

-- Location: LABCELL_X85_Y5_N27
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\);

-- Location: FF_X88_Y5_N59
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~1_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(7));

-- Location: LABCELL_X88_Y5_N24
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(7) & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(7),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(6),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\);

-- Location: LABCELL_X88_Y5_N9
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux8~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~1_sumout\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~1_sumout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux8~0_combout\);

-- Location: FF_X88_Y5_N11
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux8~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(0));

-- Location: LABCELL_X88_Y5_N33
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~5_sumout\ = SUM(( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(1) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~2\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~6\ = CARRY(( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(1) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(1),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~2\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~5_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~6\);

-- Location: LABCELL_X88_Y5_N12
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux7~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~5_sumout\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~5_sumout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux7~0_combout\);

-- Location: FF_X88_Y5_N14
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux7~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(1));

-- Location: LABCELL_X88_Y5_N36
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~9_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(2) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~6\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~10\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(2) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(2),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~6\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~9_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~10\);

-- Location: LABCELL_X88_Y5_N15
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux6~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & (!\MIDI_RX~input_o\ 
-- & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~9_sumout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~9_sumout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux6~0_combout\);

-- Location: FF_X88_Y5_N17
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux6~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(2));

-- Location: LABCELL_X88_Y5_N0
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(5) & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(0) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(4) & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(2) & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(3) & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(4),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(2),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(3),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(1),
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(5),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\);

-- Location: LABCELL_X88_Y5_N39
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~13_sumout\ = SUM(( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(3) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~10\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~14\ = CARRY(( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(3) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(3),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~10\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~13_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~14\);

-- Location: LABCELL_X88_Y5_N18
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux5~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ 
-- & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~13_sumout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~13_sumout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux5~0_combout\);

-- Location: FF_X88_Y5_N20
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux5~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(3));

-- Location: LABCELL_X88_Y5_N42
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~17_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(4) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~14\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~18\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(4) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(4),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~14\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~17_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~18\);

-- Location: LABCELL_X88_Y5_N54
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux4~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~17_sumout\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~17_sumout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux4~0_combout\);

-- Location: FF_X88_Y5_N56
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux4~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(4));

-- Location: LABCELL_X88_Y5_N45
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~21_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(5) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~18\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~22\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(5) ) + ( VCC ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(5),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~18\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~21_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~22\);

-- Location: LABCELL_X88_Y5_N21
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux3~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~21_sumout\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~21_sumout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux3~0_combout\);

-- Location: FF_X88_Y5_N23
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux3~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(5));

-- Location: LABCELL_X88_Y5_N6
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux2~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~25_sumout\ & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Add0~25_sumout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux2~0_combout\);

-- Location: FF_X88_Y5_N8
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux2~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(6));

-- Location: LABCELL_X85_Y5_N6
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~4_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & ( ((((!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\) # 
-- (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(7))) # (\MIDI_RX~input_o\)) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1))) # 
-- (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|debounceCountDown\(6)) ) ) # ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & ( ((!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & 
-- (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111111000011000000110001111111111111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~2_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_debounceCountDown\(7),
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	datag => \ALT_INV_MIDI_RX~input_o\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~4_combout\);

-- Location: LABCELL_X85_Y5_N30
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~8_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState[0]~4_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~8_combout\);

-- Location: FF_X85_Y5_N32
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0));

-- Location: LABCELL_X83_Y5_N42
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & (((!\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\)) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0)))) ) 
-- ) ) # ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & 
-- (!\MIDI_RX~input_o\ & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\))) ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000100000000101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\);

-- Location: FF_X83_Y5_N2
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~5_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0));

-- Location: LABCELL_X83_Y5_N3
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~1_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~6\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~2\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~6\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~1_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~2\);

-- Location: FF_X83_Y5_N5
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~1_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1));

-- Location: LABCELL_X83_Y5_N6
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~9_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~2\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~10\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(2),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~2\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~9_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~10\);

-- Location: FF_X83_Y5_N8
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~9_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2));

-- Location: LABCELL_X83_Y5_N9
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~17_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(3) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~10\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~18\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(3) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(3),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~10\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~17_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~18\);

-- Location: FF_X83_Y5_N10
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~17_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(3));

-- Location: LABCELL_X83_Y5_N12
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~13_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(4) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~18\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~14\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(4) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(4),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~18\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~13_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~14\);

-- Location: FF_X83_Y5_N14
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~13_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(4));

-- Location: LABCELL_X83_Y5_N15
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~29_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(5) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~14\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~30\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(5) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(5),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~14\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~29_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~30\);

-- Location: FF_X83_Y5_N16
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~29_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(5));

-- Location: LABCELL_X83_Y5_N18
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~25_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(6) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~30\ ))
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~26\ = CARRY(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(6) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(6),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~30\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~25_sumout\,
	cout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~26\);

-- Location: FF_X83_Y5_N20
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~25_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(6));

-- Location: LABCELL_X83_Y5_N21
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~21_sumout\ = SUM(( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(7) ) + ( GND ) + ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(7),
	cin => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~26\,
	sumout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~21_sumout\);

-- Location: FF_X83_Y5_N23
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Add1~21_sumout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(7));

-- Location: LABCELL_X83_Y5_N48
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(4) & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(7) & 
-- (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(5) & (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(6) & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(7),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(5),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(6),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(4),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\);

-- Location: LABCELL_X85_Y5_N48
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0) & ( 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~0_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~1_combout\);

-- Location: LABCELL_X85_Y5_N3
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~11_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( ((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~1_combout\ & 
-- (\MIDI_RX~input_o\ & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1)))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~1_combout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(5),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~11_combout\);

-- Location: LABCELL_X85_Y5_N15
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\ = ( \MIDI_RX~input_o\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & ( 
-- (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1)) ) ) ) # ( !\MIDI_RX~input_o\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ 
-- & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & ((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~1_combout\) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0)))) ) ) ) # ( 
-- \MIDI_RX~input_o\ & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1)) ) ) ) 
-- # ( !\MIDI_RX~input_o\ & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal0~0_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(0) & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001110000011100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~1_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	datae => \ALT_INV_MIDI_RX~input_o\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal0~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\);

-- Location: FF_X85_Y5_N5
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~11_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5));

-- Location: LABCELL_X85_Y5_N0
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~3_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( ((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~1_combout\ & 
-- (\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1)))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~1_combout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~3_combout\);

-- Location: FF_X85_Y5_N2
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~3_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7));

-- Location: LABCELL_X85_Y5_N18
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux0~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState\(1) & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~0_combout\ & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~0_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~1_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux0~0_combout\);

-- Location: FF_X85_Y5_N19
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Mux0~0_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\);

-- Location: FF_X82_Y4_N22
\soundmodule_inst|MidiProcessor_inst|dataByte0[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0[5]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y6_N51
\soundmodule_inst|MidiProcessor_inst|status[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	combout => \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\);

-- Location: FF_X83_Y6_N1
\soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N57
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0) & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0_combout\);

-- Location: LABCELL_X83_Y5_N27
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~4_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0_combout\ & ( ((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) & 
-- (\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(6)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(6),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~4_combout\);

-- Location: FF_X83_Y5_N29
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~4_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(6));

-- Location: FF_X83_Y6_N17
\soundmodule_inst|MidiProcessor_inst|status[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(6),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|status\(2));

-- Location: LABCELL_X83_Y6_N9
\soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & 
-- (((!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1) & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7))) # (\soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\))) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ((!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7)) # 
-- (\soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101000000010101010100000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isDataByteAvailable~q\,
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~0_combout\);

-- Location: FF_X83_Y6_N10
\soundmodule_inst|MidiProcessor_inst|isDataByteAvailable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\);

-- Location: LABCELL_X83_Y6_N3
\soundmodule_inst|MidiProcessor_inst|status[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|status[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \soundmodule_inst|MidiProcessor_inst|status[3]~feeder_combout\);

-- Location: FF_X83_Y6_N5
\soundmodule_inst|MidiProcessor_inst|status[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|status[3]~feeder_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|status\(3));

-- Location: LABCELL_X83_Y6_N39
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|status\(3) & ( !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|status\(2) & \soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(2),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isDataByteAvailable~q\,
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	combout => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\);

-- Location: LABCELL_X83_Y5_N24
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( ((!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) & 
-- (\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~0_combout\))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~0_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(4),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~1_combout\);

-- Location: FF_X83_Y5_N26
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~1_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4));

-- Location: FF_X83_Y6_N38
\soundmodule_inst|MidiProcessor_inst|status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|status\(0));

-- Location: LABCELL_X83_Y6_N27
\soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1) & ( (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & 
-- (\soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\ & (\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\ & \soundmodule_inst|MidiProcessor_inst|status\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[1]~DUPLICATE_q\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg[0]~0_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(0),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\);

-- Location: FF_X82_Y6_N5
\soundmodule_inst|MidiProcessor_inst|controllerNumber[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|controllerNumber\(5));

-- Location: FF_X82_Y4_N59
\soundmodule_inst|MidiProcessor_inst|dataByte0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(6),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0\(6));

-- Location: FF_X82_Y6_N37
\soundmodule_inst|MidiProcessor_inst|controllerNumber[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(6),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|controllerNumber\(6));

-- Location: LABCELL_X83_Y5_N51
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2) & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(2),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(0),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5_combout\);

-- Location: LABCELL_X83_Y5_N33
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~6_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5_combout\ & ( ((!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) & 
-- (\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(0)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(0),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~5_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~6_combout\);

-- Location: FF_X83_Y5_N35
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~6_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(0));

-- Location: MLABCELL_X82_Y6_N15
\soundmodule_inst|MidiProcessor_inst|dataByte0[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataByte0[0]~feeder_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|dataByte0[0]~feeder_combout\);

-- Location: FF_X82_Y6_N17
\soundmodule_inst|MidiProcessor_inst|dataByte0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|dataByte0[0]~feeder_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0\(0));

-- Location: MLABCELL_X82_Y6_N45
\soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~feeder_combout\ = \soundmodule_inst|MidiProcessor_inst|dataByte0\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~feeder_combout\);

-- Location: FF_X82_Y6_N46
\soundmodule_inst|MidiProcessor_inst|controllerNumber[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~feeder_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|controllerNumber\(0));

-- Location: LABCELL_X83_Y5_N30
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~9_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( ((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) & 
-- (\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~5_combout\))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(2)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~5_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~9_combout\);

-- Location: FF_X83_Y5_N32
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~9_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(2));

-- Location: FF_X83_Y5_N46
\soundmodule_inst|MidiProcessor_inst|dataByte0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(2),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0\(2));

-- Location: FF_X82_Y6_N53
\soundmodule_inst|MidiProcessor_inst|controllerNumber[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(2),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|controllerNumber\(2));

-- Location: LABCELL_X83_Y5_N54
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~7_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|midiState~0_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(0) & 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~7_combout\);

-- Location: LABCELL_X83_Y5_N36
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~10_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( ((\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) & 
-- (\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~7_combout\))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(3)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~7_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~10_combout\);

-- Location: FF_X83_Y5_N38
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~10_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(3));

-- Location: FF_X82_Y4_N56
\soundmodule_inst|MidiProcessor_inst|dataByte0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(3),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0\(3));

-- Location: FF_X82_Y6_N44
\soundmodule_inst|MidiProcessor_inst|controllerNumber[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(3),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|controllerNumber\(3));

-- Location: LABCELL_X83_Y5_N39
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~8_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( ((!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|bitNumber\(1) & 
-- (\MIDI_RX~input_o\ & \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~7_combout\))) # (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(1)) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|Equal1~2_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_bitNumber\(1),
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg~7_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(1),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_Equal1~2_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~8_combout\);

-- Location: FF_X83_Y5_N41
\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg~8_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_midiState\(0),
	ena => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(1));

-- Location: MLABCELL_X82_Y6_N18
\soundmodule_inst|MidiProcessor_inst|dataByte0[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataByte0[1]~feeder_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|dataByte0[1]~feeder_combout\);

-- Location: FF_X82_Y6_N20
\soundmodule_inst|MidiProcessor_inst|dataByte0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|dataByte0[1]~feeder_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0\(1));

-- Location: FF_X82_Y6_N50
\soundmodule_inst|MidiProcessor_inst|controllerNumber[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(1),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|controllerNumber\(1));

-- Location: MLABCELL_X82_Y6_N48
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~4_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|controllerNumber\(1) & ( (\soundmodule_inst|MidiProcessor_inst|controllerNumber\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|controllerNumber\(2) & !\soundmodule_inst|MidiProcessor_inst|controllerNumber\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(2),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(3),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~4_combout\);

-- Location: FF_X82_Y4_N46
\soundmodule_inst|MidiProcessor_inst|dataByte0[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0[4]~DUPLICATE_q\);

-- Location: FF_X82_Y6_N2
\soundmodule_inst|MidiProcessor_inst|controllerNumber[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|controllerNumber[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|controllerNumber\(4));

-- Location: FF_X83_Y6_N37
\soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y6_N0
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~5_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|controllerNumber\(4) & ( \soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|controllerNumber\(5) & (!\soundmodule_inst|MidiProcessor_inst|controllerNumber\(6) & \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(5),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(6),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~4_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_controllerNumber\(4),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[0]~DUPLICATE_q\,
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~5_combout\);

-- Location: LABCELL_X83_Y6_N12
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~6_combout\ = ( \soundmodule_inst|MidiProcessor_inst|status\(0) & ( \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & (\soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\ & (\soundmodule_inst|MidiProcessor_inst|status\(3) & !\soundmodule_inst|MidiProcessor_inst|status\(2)))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|status\(0) & ( \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1) & ( (\soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\ & (\soundmodule_inst|MidiProcessor_inst|status\(3) & 
-- !\soundmodule_inst|MidiProcessor_inst|status\(2))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|status\(0) & ( !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1) & ( (\soundmodule_inst|MidiProcessor_inst|isDataByteAvailable~q\ & 
-- (\soundmodule_inst|MidiProcessor_inst|status\(3) & !\soundmodule_inst|MidiProcessor_inst|status\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000011000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isDataByteAvailable~q\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(3),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(2),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(0),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~6_combout\);

-- Location: LABCELL_X83_Y6_N18
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\ & (\soundmodule_inst|MidiProcessor_inst|status\(0) & !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[1]~DUPLICATE_q\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(0),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg[0]~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\);

-- Location: FF_X82_Y4_N40
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(2),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2));

-- Location: FF_X82_Y4_N2
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(3),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3));

-- Location: MLABCELL_X82_Y4_N54
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|dataByte0\(2) & ( (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) $ 
-- (\soundmodule_inst|MidiProcessor_inst|dataByte0\(3)))) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|dataByte0\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) $ 
-- (\soundmodule_inst|MidiProcessor_inst|dataByte0\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~2_combout\);

-- Location: FF_X82_Y4_N47
\soundmodule_inst|MidiProcessor_inst|dataByte0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0\(4));

-- Location: FF_X82_Y4_N10
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(4),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4));

-- Location: FF_X82_Y4_N16
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(0),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0));

-- Location: FF_X82_Y4_N52
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(1),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y6_N54
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ( \soundmodule_inst|MidiProcessor_inst|dataByte0\(0) & ( (\soundmodule_inst|MidiProcessor_inst|dataByte0\(1) & 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ & !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0)))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ( \soundmodule_inst|MidiProcessor_inst|dataByte0\(0) & ( (!\soundmodule_inst|MidiProcessor_inst|dataByte0\(1) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ & !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0)))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ( 
-- !\soundmodule_inst|MidiProcessor_inst|dataByte0\(0) & ( (\soundmodule_inst|MidiProcessor_inst|dataByte0\(1) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ & 
-- !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0)))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ( !\soundmodule_inst|MidiProcessor_inst|dataByte0\(0) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|dataByte0\(1) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ & 
-- !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000001000000000000000010000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(1),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~1_combout\);

-- Location: FF_X82_Y4_N29
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(6),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6));

-- Location: MLABCELL_X82_Y4_N57
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (\soundmodule_inst|MidiProcessor_inst|dataByte0[5]~DUPLICATE_q\ & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (\soundmodule_inst|MidiProcessor_inst|dataByte0\(6)))) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|dataByte0[5]~DUPLICATE_q\ & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (\soundmodule_inst|MidiProcessor_inst|dataByte0\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0[5]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(6),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\);

-- Location: MLABCELL_X82_Y4_N3
\soundmodule_inst|MidiProcessor_inst|Mux98~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|dataByte0\(4) & ( \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\ & 
-- ((!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~2_combout\) # ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # (!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~1_combout\)))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|dataByte0\(4) & ( \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\ & 
-- ((!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~2_combout\) # ((!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~1_combout\) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|dataByte0\(4) & ( !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\ & ( !\soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\ ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|dataByte0\(4) & 
-- ( !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~0_combout\ & ( !\soundmodule_inst|MidiProcessor_inst|status[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101100001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~2_combout\,
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[0]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~1_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte0\(4),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\);

-- Location: MLABCELL_X82_Y6_N39
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~7_combout\ = ( \soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\ & ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ ) ) # ( !\soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\ & ( 
-- !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~6_combout\ & ((!\soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\) # 
-- (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~5_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[0]~6_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[1]~DUPLICATE_q\,
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux98~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~7_combout\);

-- Location: FF_X82_Y6_N34
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~8_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1));

-- Location: MLABCELL_X82_Y6_N33
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~8_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7) & 
-- ((\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1)) # (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~8_combout\);

-- Location: FF_X82_Y6_N35
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~8_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y6_N30
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~3_combout\ = ( \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7) & 
-- \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ & ( (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7) & 
-- (\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[1]~DUPLICATE_q\,
	combout => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~3_combout\);

-- Location: FF_X82_Y6_N32
\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount~3_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0));

-- Location: LABCELL_X83_Y6_N24
\soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( (!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7) & !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	combout => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\);

-- Location: FF_X82_Y4_N23
\soundmodule_inst|MidiProcessor_inst|dataByte0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte0\(5));

-- Location: FF_X82_Y4_N34
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(5),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5));

-- Location: LABCELL_X81_Y4_N24
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) 
-- # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ $ 
-- (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6))))) 
-- # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) 
-- ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ $ (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ 
-- (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000100011100110001001001011011101001001001110101000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~1_combout\);

-- Location: FF_X82_Y4_N53
\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|dataByte0\(1),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1));

-- Location: MLABCELL_X82_Y4_N30
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110001010011000100010000010001001001010101000001110110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~0_combout\);

-- Location: LABCELL_X81_Y4_N3
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5)) # 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~1_combout\) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~0_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	datac => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux14~1_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux14~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~2_combout\);

-- Location: MLABCELL_X82_Y6_N9
\soundmodule_inst|MidiProcessor_inst|Mux62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & ( \soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount[1]~DUPLICATE_q\,
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\);

-- Location: LABCELL_X83_Y6_N6
\soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|isByteAvailable_Reg~q\ & ( (!\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(1) & 
-- (\soundmodule_inst|MidiProcessor_inst|dataBytesReceivedCount\(0) & !\soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(1),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataBytesReceivedCount\(0),
	datad => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(7),
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_isByteAvailable_Reg~q\,
	combout => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\);

-- Location: FF_X88_Y5_N4
\soundmodule_inst|MidiProcessor_inst|dataByte1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(3),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte1\(3));

-- Location: MLABCELL_X87_Y6_N33
\soundmodule_inst|MidiProcessor_inst|dataByte1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~feeder_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(0),
	combout => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~feeder_combout\);

-- Location: FF_X87_Y6_N34
\soundmodule_inst|MidiProcessor_inst|dataByte1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~feeder_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte1\(0));

-- Location: LABCELL_X85_Y6_N33
\soundmodule_inst|MidiProcessor_inst|dataByte1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|dataByte1[2]~feeder_combout\ = ( \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|ALT_INV_byteValue_Reg\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|dataByte1[2]~feeder_combout\);

-- Location: FF_X85_Y6_N34
\soundmodule_inst|MidiProcessor_inst|dataByte1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|dataByte1[2]~feeder_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte1\(2));

-- Location: FF_X83_Y6_N59
\soundmodule_inst|MidiProcessor_inst|dataByte1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(4),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte1\(4));

-- Location: FF_X83_Y6_N56
\soundmodule_inst|MidiProcessor_inst|dataByte1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte1\(5));

-- Location: FF_X83_Y6_N20
\soundmodule_inst|MidiProcessor_inst|dataByte1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(1),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte1\(1));

-- Location: LABCELL_X83_Y6_N54
\soundmodule_inst|MidiProcessor_inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|Equal2~0_combout\ = ( !\soundmodule_inst|MidiProcessor_inst|dataByte1\(5) & ( !\soundmodule_inst|MidiProcessor_inst|dataByte1\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|dataByte1\(3) & 
-- (!\soundmodule_inst|MidiProcessor_inst|dataByte1\(0) & (!\soundmodule_inst|MidiProcessor_inst|dataByte1\(2) & !\soundmodule_inst|MidiProcessor_inst|dataByte1\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(3),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(2),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(5),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|Equal2~0_combout\);

-- Location: FF_X83_Y6_N43
\soundmodule_inst|MidiProcessor_inst|dataByte1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(6),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|dataByte1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|dataByte1\(6));

-- Location: LABCELL_X83_Y6_N42
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|dataByte1\(6) & ( !\soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\ & ( (\soundmodule_inst|MidiProcessor_inst|status\(0) & 
-- (\soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\ & \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\)) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|dataByte1\(6) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|status[1]~DUPLICATE_q\ & ( (\soundmodule_inst|MidiProcessor_inst|status\(0) & (\soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\ & (!\soundmodule_inst|MidiProcessor_inst|Equal2~0_combout\ & 
-- \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(0),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux62~0_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_Equal2~0_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg[0]~0_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(6),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status[1]~DUPLICATE_q\,
	combout => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\);

-- Location: FF_X81_Y4_N4
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux14~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(0));

-- Location: LABCELL_X79_Y3_N33
\soundmodule_inst|LEDR_Reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|LEDR_Reg[0]~feeder_combout\ = ( \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(0),
	combout => \soundmodule_inst|LEDR_Reg[0]~feeder_combout\);

-- Location: FF_X83_Y6_N2
\soundmodule_inst|MidiProcessor_inst|status[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|MidiByteReader_inst|byteValue_Reg\(5),
	sload => VCC,
	ena => \soundmodule_inst|MidiProcessor_inst|status[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|status\(1));

-- Location: LABCELL_X83_Y6_N48
\soundmodule_inst|MidiProcessor_inst|Mux98~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|Mux98~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\ & ( (\soundmodule_inst|MidiProcessor_inst|status\(0) & ((!\soundmodule_inst|MidiProcessor_inst|Equal2~0_combout\) # 
-- ((!\soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\) # (\soundmodule_inst|MidiProcessor_inst|dataByte1\(6))))) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\ & ( (\soundmodule_inst|MidiProcessor_inst|Mux62~0_combout\ & 
-- (\soundmodule_inst|MidiProcessor_inst|status\(0) & ((!\soundmodule_inst|MidiProcessor_inst|Equal2~0_combout\) # (\soundmodule_inst|MidiProcessor_inst|dataByte1\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011000000100000001100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_Equal2~0_combout\,
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux62~0_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(0),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_dataByte1\(6),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	combout => \soundmodule_inst|MidiProcessor_inst|Mux98~1_combout\);

-- Location: LABCELL_X83_Y6_N21
\soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0_combout\ = (!\soundmodule_inst|MidiProcessor_inst|status\(2) & \soundmodule_inst|MidiProcessor_inst|status\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(2),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(3),
	combout => \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0_combout\);

-- Location: LABCELL_X83_Y6_N30
\soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\ & ( \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0_combout\ & ( 
-- (((!\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\) # (\soundmodule_inst|MidiProcessor_inst|Mux98~1_combout\)) # (\soundmodule_inst|MidiProcessor_inst|Mux98~0_combout\)) # (\soundmodule_inst|MidiProcessor_inst|status\(1)) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\ & ( \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|status\(1) & (\soundmodule_inst|MidiProcessor_inst|Mux98~1_combout\ & 
-- \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\)) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\ & ( !\soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~0_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~0_combout\) # (\soundmodule_inst|MidiProcessor_inst|status\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000010101111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_status\(1),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux98~0_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_Mux98~1_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg[0]~0_combout\,
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~1_combout\);

-- Location: FF_X83_Y6_N32
\soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|isNoteOn_Reg~q\);

-- Location: FF_X79_Y3_N35
\soundmodule_inst|LEDR_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|LEDR_Reg[0]~feeder_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(0));

-- Location: LABCELL_X79_Y3_N30
\LEDR_Reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR_Reg[0]~feeder_combout\ = \soundmodule_inst|LEDR_Reg\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|ALT_INV_LEDR_Reg\(0),
	combout => \LEDR_Reg[0]~feeder_combout\);

-- Location: FF_X79_Y3_N31
\LEDR_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LEDR_Reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(0));

-- Location: MLABCELL_X82_Y4_N42
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3))))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) $ 
-- (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001011101000000110011100001100000111010011001100011000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~1_combout\);

-- Location: MLABCELL_X82_Y4_N48
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) $ 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ 
-- (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) 
-- # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) $ 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000001010100110110001111011010100001100101010011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~0_combout\);

-- Location: LABCELL_X79_Y3_N15
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~0_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~1_combout\) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~0_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~1_combout\ & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux13~1_combout\,
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	dataf => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux13~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~2_combout\);

-- Location: FF_X79_Y3_N17
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux13~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(1));

-- Location: LABCELL_X79_Y3_N36
\soundmodule_inst|LEDR_Reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|LEDR_Reg[1]~feeder_combout\ = \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(1),
	combout => \soundmodule_inst|LEDR_Reg[1]~feeder_combout\);

-- Location: FF_X79_Y3_N38
\soundmodule_inst|LEDR_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|LEDR_Reg[1]~feeder_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(1));

-- Location: LABCELL_X79_Y3_N39
\LEDR_Reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR_Reg[1]~feeder_combout\ = \soundmodule_inst|LEDR_Reg\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|ALT_INV_LEDR_Reg\(1),
	combout => \LEDR_Reg[1]~feeder_combout\);

-- Location: FF_X79_Y3_N40
\LEDR_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LEDR_Reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(1));

-- Location: LABCELL_X81_Y4_N48
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6))))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ $ 
-- (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ $ (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101111000100100100010001110010010110001111001100001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~0_combout\);

-- Location: MLABCELL_X82_Y4_N24
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1)))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6)) # ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010101111000101101101100000011011011010100111001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~1_combout\);

-- Location: LABCELL_X79_Y3_N18
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~1_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~0_combout\) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~1_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	datac => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux12~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux12~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~2_combout\);

-- Location: FF_X79_Y3_N19
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux12~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(2));

-- Location: FF_X79_Y3_N47
\soundmodule_inst|LEDR_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(2),
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(2));

-- Location: LABCELL_X79_Y3_N45
\LEDR_Reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR_Reg[2]~feeder_combout\ = \soundmodule_inst|LEDR_Reg\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|ALT_INV_LEDR_Reg\(2),
	combout => \LEDR_Reg[2]~feeder_combout\);

-- Location: FF_X79_Y3_N46
\LEDR_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LEDR_Reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(2));

-- Location: MLABCELL_X82_Y4_N18
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1)))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & 
-- ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1))))) ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) $ 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1)) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010010010110000111001100001100111100100000100000000101110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~1_combout\);

-- Location: MLABCELL_X82_Y4_N12
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1)))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011011011000101011110001101101110011000000010110101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~0_combout\);

-- Location: LABCELL_X79_Y3_N21
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2)) # 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~1_combout\) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~0_combout\ & ( (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	datac => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux11~1_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux11~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~2_combout\);

-- Location: FF_X79_Y3_N23
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux11~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(3));

-- Location: LABCELL_X79_Y3_N51
\soundmodule_inst|LEDR_Reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|LEDR_Reg[3]~feeder_combout\ = \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(3),
	combout => \soundmodule_inst|LEDR_Reg[3]~feeder_combout\);

-- Location: FF_X79_Y3_N52
\soundmodule_inst|LEDR_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|LEDR_Reg[3]~feeder_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(3));

-- Location: LABCELL_X85_Y5_N45
\LEDR_Reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR_Reg[3]~feeder_combout\ = ( \soundmodule_inst|LEDR_Reg\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|ALT_INV_LEDR_Reg\(3),
	combout => \LEDR_Reg[3]~feeder_combout\);

-- Location: FF_X85_Y5_N46
\LEDR_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LEDR_Reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(3));

-- Location: MLABCELL_X82_Y4_N36
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) 
-- & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)) # ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ 
-- (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & 
-- (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))) ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5)))) ) 
-- ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))) 
-- # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010011010000101100000001001000110010011111011110111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~1_combout\);

-- Location: LABCELL_X81_Y4_N42
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) 
-- ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) 
-- ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110011000011100101100011110000000001011101101000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~0_combout\);

-- Location: LABCELL_X79_Y3_N12
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~0_combout\ & ( 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~1_combout\ & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~0_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux10~1_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux10~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~2_combout\);

-- Location: FF_X79_Y3_N14
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux10~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(4));

-- Location: LABCELL_X79_Y3_N27
\soundmodule_inst|LEDR_Reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|LEDR_Reg[4]~feeder_combout\ = \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(4),
	combout => \soundmodule_inst|LEDR_Reg[4]~feeder_combout\);

-- Location: FF_X79_Y3_N28
\soundmodule_inst|LEDR_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|LEDR_Reg[4]~feeder_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(4));

-- Location: LABCELL_X77_Y3_N0
\LEDR_Reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR_Reg[4]~feeder_combout\ = ( \soundmodule_inst|LEDR_Reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|ALT_INV_LEDR_Reg\(4),
	combout => \LEDR_Reg[4]~feeder_combout\);

-- Location: FF_X77_Y3_N1
\LEDR_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LEDR_Reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(4));

-- Location: MLABCELL_X82_Y4_N6
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(1) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011101011010100001111000100000001101111000001001011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(1),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~1_combout\);

-- Location: LABCELL_X81_Y4_N36
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6))))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ 
-- & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) ) ) ) # ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) 
-- & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010010101100011001111111011000011000000010011110010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~0_combout\);

-- Location: LABCELL_X81_Y4_N0
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~2_combout\ = (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~0_combout\))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000101101011110000010110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	datac => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux9~1_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux9~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~2_combout\);

-- Location: FF_X81_Y4_N1
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux9~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(5));

-- Location: FF_X83_Y6_N34
\soundmodule_inst|LEDR_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(5),
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(5));

-- Location: LABCELL_X80_Y4_N3
\LEDR_Reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR_Reg[5]~feeder_combout\ = ( \soundmodule_inst|LEDR_Reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|ALT_INV_LEDR_Reg\(5),
	combout => \LEDR_Reg[5]~feeder_combout\);

-- Location: FF_X80_Y4_N4
\LEDR_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LEDR_Reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(5));

-- Location: LABCELL_X81_Y4_N54
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) ) ) 
-- ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) $ 
-- (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) 
-- & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))))) ) 
-- ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001101111101111111101000100101101010100000000000000101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~0_combout\);

-- Location: LABCELL_X81_Y4_N30
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) 
-- ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & 
-- ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6) & (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110000010100000100010100001011110001000101010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~1_combout\);

-- Location: LABCELL_X81_Y4_N9
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~1_combout\ & ( 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~0_combout\) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5)) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~1_combout\ & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	datad => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux8~0_combout\,
	dataf => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux8~1_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~2_combout\);

-- Location: FF_X81_Y4_N10
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux8~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(6));

-- Location: FF_X79_Y3_N2
\soundmodule_inst|LEDR_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(6),
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(6));

-- Location: LABCELL_X79_Y3_N3
\LEDR_Reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR_Reg[6]~feeder_combout\ = \soundmodule_inst|LEDR_Reg\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|ALT_INV_LEDR_Reg\(6),
	combout => \LEDR_Reg[6]~feeder_combout\);

-- Location: FF_X79_Y3_N4
\LEDR_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LEDR_Reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(6));

-- Location: LABCELL_X81_Y4_N18
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~1_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) ) ) ) 
-- # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) ) ) ) # ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( 
-- !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0)) # 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101010000000001010100010101010101010100000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~1_combout\);

-- Location: LABCELL_X81_Y4_N12
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~0_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))) # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) 
-- # (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\ & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4)))))) ) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(3) & ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(2) & ( 
-- (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4) & (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) $ (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\)))) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(5) & ((!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber[1]~DUPLICATE_q\) # ((\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(0) & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(4))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001111001100100010100101001101001011000111001110011010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(5),
	datab => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(0),
	datac => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber[1]~DUPLICATE_q\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(4),
	datae => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(3),
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(2),
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~0_combout\);

-- Location: LABCELL_X81_Y4_N6
\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~2_combout\ = ( \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~0_combout\ & ( (!\soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6)) # 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~1_combout\) ) ) # ( !\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~0_combout\ & ( 
-- (\soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~1_combout\ & \soundmodule_inst|MidiProcessor_inst|midiNoteNumber\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux7~1_combout\,
	datad => \soundmodule_inst|MidiProcessor_inst|ALT_INV_midiNoteNumber\(6),
	dataf => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|ALT_INV_Mux7~0_combout\,
	combout => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~2_combout\);

-- Location: FF_X81_Y4_N8
\soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|MidiProcessor_inst|midiNoteNumberToSampleTicks_inst|Mux7~2_combout\,
	ena => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(7));

-- Location: LABCELL_X79_Y3_N6
\soundmodule_inst|LEDR_Reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \soundmodule_inst|LEDR_Reg[7]~feeder_combout\ = ( \soundmodule_inst|MidiProcessor_inst|noteSampleTicks_Reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \soundmodule_inst|MidiProcessor_inst|ALT_INV_noteSampleTicks_Reg\(7),
	combout => \soundmodule_inst|LEDR_Reg[7]~feeder_combout\);

-- Location: FF_X79_Y3_N7
\soundmodule_inst|LEDR_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \soundmodule_inst|LEDR_Reg[7]~feeder_combout\,
	sclr => \soundmodule_inst|MidiProcessor_inst|ALT_INV_isNoteOn_Reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \soundmodule_inst|LEDR_Reg\(7));

-- Location: FF_X79_Y3_N11
\LEDR_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \soundmodule_inst|LEDR_Reg\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LEDR_Reg(7));

-- Location: IOIBUF_X36_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\FPGA_I2C_SDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_I2C_SDAT,
	o => \FPGA_I2C_SDAT~input_o\);

-- Location: LABCELL_X64_Y17_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


