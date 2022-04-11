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

-- DATE "04/11/2022 02:35:24"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MidiNoteNumberToSampleTicks IS
    PORT (
	midiNoteNumber : IN std_logic_vector(7 DOWNTO 0);
	noteSampleTicks : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END MidiNoteNumberToSampleTicks;

-- Design Ports Information
-- noteSampleTicks[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[1]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[4]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[6]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[7]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[8]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[9]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[10]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[11]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[12]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[13]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[14]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[16]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[17]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[18]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[19]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[20]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[21]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[22]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noteSampleTicks[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[3]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[0]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[6]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- midiNoteNumber[5]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MidiNoteNumberToSampleTicks IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_midiNoteNumber : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_noteSampleTicks : std_logic_vector(23 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \midiNoteNumber[1]~input_o\ : std_logic;
SIGNAL \midiNoteNumber[4]~input_o\ : std_logic;
SIGNAL \midiNoteNumber[6]~input_o\ : std_logic;
SIGNAL \midiNoteNumber[3]~input_o\ : std_logic;
SIGNAL \midiNoteNumber[0]~input_o\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \midiNoteNumber[7]~input_o\ : std_logic;
SIGNAL \midiNoteNumber[5]~input_o\ : std_logic;
SIGNAL \midiNoteNumber[2]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_midiNoteNumber[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;

BEGIN

ww_midiNoteNumber <= midiNoteNumber;
noteSampleTicks <= ww_noteSampleTicks;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_midiNoteNumber[5]~input_o\ <= NOT \midiNoteNumber[5]~input_o\;
\ALT_INV_midiNoteNumber[2]~input_o\ <= NOT \midiNoteNumber[2]~input_o\;
\ALT_INV_midiNoteNumber[1]~input_o\ <= NOT \midiNoteNumber[1]~input_o\;
\ALT_INV_midiNoteNumber[6]~input_o\ <= NOT \midiNoteNumber[6]~input_o\;
\ALT_INV_midiNoteNumber[0]~input_o\ <= NOT \midiNoteNumber[0]~input_o\;
\ALT_INV_midiNoteNumber[4]~input_o\ <= NOT \midiNoteNumber[4]~input_o\;
\ALT_INV_midiNoteNumber[3]~input_o\ <= NOT \midiNoteNumber[3]~input_o\;
\ALT_INV_midiNoteNumber[7]~input_o\ <= NOT \midiNoteNumber[7]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux12~4_combout\ <= NOT \Mux12~4_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~4_combout\ <= NOT \Mux8~4_combout\;
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;

-- Location: IOOBUF_X10_Y0_N59
\noteSampleTicks[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(0));

-- Location: IOOBUF_X16_Y0_N36
\noteSampleTicks[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(1));

-- Location: IOOBUF_X6_Y0_N19
\noteSampleTicks[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~5_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(2));

-- Location: IOOBUF_X12_Y0_N19
\noteSampleTicks[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(3));

-- Location: IOOBUF_X16_Y0_N2
\noteSampleTicks[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(4));

-- Location: IOOBUF_X6_Y0_N36
\noteSampleTicks[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(5));

-- Location: IOOBUF_X8_Y0_N53
\noteSampleTicks[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~5_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(6));

-- Location: IOOBUF_X18_Y0_N42
\noteSampleTicks[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(7));

-- Location: IOOBUF_X14_Y0_N19
\noteSampleTicks[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(8));

-- Location: IOOBUF_X16_Y0_N53
\noteSampleTicks[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(9));

-- Location: IOOBUF_X14_Y0_N53
\noteSampleTicks[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(10));

-- Location: IOOBUF_X6_Y0_N53
\noteSampleTicks[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(11));

-- Location: IOOBUF_X8_Y0_N2
\noteSampleTicks[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(12));

-- Location: IOOBUF_X8_Y0_N19
\noteSampleTicks[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(13));

-- Location: IOOBUF_X8_Y0_N36
\noteSampleTicks[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(14));

-- Location: IOOBUF_X22_Y81_N36
\noteSampleTicks[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(15));

-- Location: IOOBUF_X34_Y81_N42
\noteSampleTicks[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(16));

-- Location: IOOBUF_X10_Y81_N42
\noteSampleTicks[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(17));

-- Location: IOOBUF_X76_Y0_N19
\noteSampleTicks[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(18));

-- Location: IOOBUF_X84_Y0_N53
\noteSampleTicks[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(19));

-- Location: IOOBUF_X64_Y0_N53
\noteSampleTicks[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(20));

-- Location: IOOBUF_X86_Y0_N2
\noteSampleTicks[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(21));

-- Location: IOOBUF_X60_Y0_N36
\noteSampleTicks[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(22));

-- Location: IOOBUF_X68_Y0_N2
\noteSampleTicks[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_noteSampleTicks(23));

-- Location: IOIBUF_X10_Y0_N92
\midiNoteNumber[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(1),
	o => \midiNoteNumber[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\midiNoteNumber[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(4),
	o => \midiNoteNumber[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\midiNoteNumber[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(6),
	o => \midiNoteNumber[6]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\midiNoteNumber[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(3),
	o => \midiNoteNumber[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\midiNoteNumber[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(0),
	o => \midiNoteNumber[0]~input_o\);

-- Location: LABCELL_X10_Y1_N51
\Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[6]~input_o\ $ (((!\midiNoteNumber[3]~input_o\) # (\midiNoteNumber[4]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[4]~input_o\ & 
-- !\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[3]~input_o\))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[6]~input_o\ & ((\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[6]~input_o\ & 
-- (\midiNoteNumber[1]~input_o\)))) # (\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011010100001101101101010001001010110101110100101011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[6]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LABCELL_X10_Y1_N45
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[6]~input_o\ & (\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[4]~input_o\ & !\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[6]~input_o\ & (((!\midiNoteNumber[4]~input_o\)))) ) ) # 
-- ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[6]~input_o\ & (\midiNoteNumber[4]~input_o\ & \midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[4]~input_o\ & 
-- ((\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001010110000001000101011000110100001100000011010000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X10_Y1_N48
\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & (((!\midiNoteNumber[6]~input_o\) # (\midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[6]~input_o\))) # 
-- (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[3]~input_o\) # (\midiNoteNumber[6]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[6]~input_o\ & (\midiNoteNumber[1]~input_o\)) # 
-- (\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[3]~input_o\))))) # (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (((\midiNoteNumber[3]~input_o\ & !\midiNoteNumber[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010111100010011001011110001011111110000111011111111000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: IOIBUF_X12_Y0_N35
\midiNoteNumber[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(7),
	o => \midiNoteNumber[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\midiNoteNumber[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(5),
	o => \midiNoteNumber[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\midiNoteNumber[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_midiNoteNumber(2),
	o => \midiNoteNumber[2]~input_o\);

-- Location: LABCELL_X10_Y1_N42
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[3]~input_o\ & (\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[3]~input_o\ & ((\midiNoteNumber[4]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & 
-- (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ (!\midiNoteNumber[3]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ (((\midiNoteNumber[6]~input_o\ & 
-- !\midiNoteNumber[3]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[6]~input_o\ $ (((!\midiNoteNumber[3]~input_o\) # (\midiNoteNumber[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001111100001100100111110000100100011000110100010001100011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X10_Y1_N6
\Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( !\midiNoteNumber[5]~input_o\ & ( ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & ((\Mux14~0_combout\))) # (\midiNoteNumber[2]~input_o\ & (\Mux14~1_combout\))))) ) ) # ( \midiNoteNumber[5]~input_o\ & ( 
-- ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & ((\Mux14~2_combout\))) # (\midiNoteNumber[2]~input_o\ & (\Mux14~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~3_combout\,
	datab => \ALT_INV_Mux14~1_combout\,
	datac => \ALT_INV_Mux14~2_combout\,
	datad => \ALT_INV_midiNoteNumber[7]~input_o\,
	datae => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[2]~input_o\,
	datag => \ALT_INV_Mux14~0_combout\,
	combout => \Mux14~4_combout\);

-- Location: LABCELL_X13_Y1_N51
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[6]~input_o\ & ((\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[4]~input_o\ & !\midiNoteNumber[3]~input_o\)))) # 
-- (\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ (((!\midiNoteNumber[6]~input_o\) # (\midiNoteNumber[3]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & 
-- ((!\midiNoteNumber[6]~input_o\) # (!\midiNoteNumber[4]~input_o\))) # (\midiNoteNumber[2]~input_o\ & ((\midiNoteNumber[4]~input_o\) # (\midiNoteNumber[6]~input_o\))))) # (\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[2]~input_o\ $ 
-- (!\midiNoteNumber[6]~input_o\ $ (!\midiNoteNumber[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110110010110101111011001011000110100100011010011010010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X13_Y1_N57
\Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[3]~input_o\) # ((\midiNoteNumber[2]~input_o\ & \midiNoteNumber[6]~input_o\)))) # (\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[2]~input_o\) # 
-- ((\midiNoteNumber[3]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[2]~input_o\)) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[6]~input_o\))))) # 
-- (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[6]~input_o\) # (\midiNoteNumber[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110111000000101011011100000011111010000111111111101000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X13_Y1_N54
\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[4]~input_o\) # (\midiNoteNumber[2]~input_o\))) # (\midiNoteNumber[6]~input_o\ & ((\midiNoteNumber[4]~input_o\))))) # 
-- (\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[2]~input_o\ $ (((!\midiNoteNumber[6]~input_o\ & !\midiNoteNumber[4]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ 
-- (((\midiNoteNumber[2]~input_o\ & \midiNoteNumber[3]~input_o\))))) # (\midiNoteNumber[6]~input_o\ & (((\midiNoteNumber[2]~input_o\ & !\midiNoteNumber[4]~input_o\)) # (\midiNoteNumber[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101100000111110110110000011111000110011110101100011001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LABCELL_X13_Y1_N48
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[3]~input_o\ $ (\midiNoteNumber[4]~input_o\)))) # (\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[6]~input_o\ $ 
-- (!\midiNoteNumber[4]~input_o\)) # (\midiNoteNumber[3]~input_o\))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[3]~input_o\ & ((\midiNoteNumber[4]~input_o\) # (\midiNoteNumber[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000100000011000000110101010001110011010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X13_Y1_N12
\Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( !\midiNoteNumber[5]~input_o\ & ( ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[1]~input_o\ & ((\Mux13~0_combout\))) # (\midiNoteNumber[1]~input_o\ & (\Mux13~1_combout\))))) ) ) # ( \midiNoteNumber[5]~input_o\ & ( 
-- ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[1]~input_o\ & ((\Mux13~2_combout\))) # (\midiNoteNumber[1]~input_o\ & (\Mux13~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~1_combout\,
	datab => \ALT_INV_Mux13~3_combout\,
	datac => \ALT_INV_Mux13~2_combout\,
	datad => \ALT_INV_midiNoteNumber[1]~input_o\,
	datae => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[7]~input_o\,
	datag => \ALT_INV_Mux13~0_combout\,
	combout => \Mux13~4_combout\);

-- Location: LABCELL_X10_Y1_N57
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & (((!\midiNoteNumber[5]~input_o\)) # (\midiNoteNumber[1]~input_o\))) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[6]~input_o\) # (!\midiNoteNumber[1]~input_o\ $ 
-- (!\midiNoteNumber[5]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (((\midiNoteNumber[5]~input_o\)) # (\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[3]~input_o\ & 
-- (!\midiNoteNumber[6]~input_o\ & !\midiNoteNumber[5]~input_o\)) # (\midiNoteNumber[3]~input_o\ & ((\midiNoteNumber[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001010111011011000101011101111111101011101101111110101110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[3]~input_o\,
	datac => \ALT_INV_midiNoteNumber[6]~input_o\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X10_Y1_N30
\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & (\midiNoteNumber[5]~input_o\ & ((\midiNoteNumber[6]~input_o\) # (\midiNoteNumber[1]~input_o\)))) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[1]~input_o\ $ 
-- (!\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[5]~input_o\))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[3]~input_o\ $ (\midiNoteNumber[5]~input_o\)))) # 
-- (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[3]~input_o\)) # (\midiNoteNumber[6]~input_o\ & (\midiNoteNumber[3]~input_o\ & !\midiNoteNumber[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101000010011000010100001000000110011111110000011001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X10_Y1_N33
\Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[6]~input_o\ & (((!\midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[3]~input_o\ & !\midiNoteNumber[5]~input_o\)) # 
-- (\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[3]~input_o\ $ (\midiNoteNumber[5]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[5]~input_o\ & ((!\midiNoteNumber[6]~input_o\) # (!\midiNoteNumber[1]~input_o\ $ 
-- (!\midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[5]~input_o\ & (!\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (!\midiNoteNumber[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111001100000110111100110000011010010110000011101001011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X10_Y1_N54
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (((\midiNoteNumber[5]~input_o\ & \midiNoteNumber[6]~input_o\))))) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[5]~input_o\ & 
-- ((!\midiNoteNumber[6]~input_o\))) # (\midiNoteNumber[5]~input_o\ & (!\midiNoteNumber[1]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[3]~input_o\ $ 
-- (!\midiNoteNumber[5]~input_o\)))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[5]~input_o\ $ (!\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111001000101010111100110111010100001101011101010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[3]~input_o\,
	datac => \ALT_INV_midiNoteNumber[5]~input_o\,
	datad => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X10_Y1_N0
\Mux12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = ( !\midiNoteNumber[2]~input_o\ & ( (!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[4]~input_o\ & (((\Mux12~0_combout\)))) # (\midiNoteNumber[4]~input_o\ & (\Mux12~1_combout\)))) ) ) # ( \midiNoteNumber[2]~input_o\ & ( 
-- ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[4]~input_o\ & (\Mux12~2_combout\)) # (\midiNoteNumber[4]~input_o\ & ((\Mux12~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001000100000011000000000000001100010001000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_midiNoteNumber[7]~input_o\,
	datac => \ALT_INV_Mux12~2_combout\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	datae => \ALT_INV_midiNoteNumber[2]~input_o\,
	dataf => \ALT_INV_Mux12~3_combout\,
	datag => \ALT_INV_Mux12~0_combout\,
	combout => \Mux12~5_combout\);

-- Location: LABCELL_X12_Y1_N27
\Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[5]~input_o\))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[5]~input_o\ & ((\midiNoteNumber[3]~input_o\))) # 
-- (\midiNoteNumber[5]~input_o\ & (\midiNoteNumber[6]~input_o\ & !\midiNoteNumber[3]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[5]~input_o\ & ((!\midiNoteNumber[3]~input_o\))) # 
-- (\midiNoteNumber[5]~input_o\ & (!\midiNoteNumber[6]~input_o\ & \midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000001001000111000000100100000100001011100000010000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[5]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LABCELL_X11_Y1_N45
\Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \midiNoteNumber[5]~input_o\ & ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[3]~input_o\)) # (\midiNoteNumber[1]~input_o\ & ((\midiNoteNumber[6]~input_o\))) ) ) ) # ( !\midiNoteNumber[5]~input_o\ 
-- & ( \midiNoteNumber[0]~input_o\ & ( !\midiNoteNumber[1]~input_o\ $ (((!\midiNoteNumber[3]~input_o\ & \midiNoteNumber[6]~input_o\))) ) ) ) # ( \midiNoteNumber[5]~input_o\ & ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & 
-- ((\midiNoteNumber[1]~input_o\) # (\midiNoteNumber[6]~input_o\))) # (\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[6]~input_o\)) ) ) ) # ( !\midiNoteNumber[5]~input_o\ & ( !\midiNoteNumber[0]~input_o\ & ( !\midiNoteNumber[1]~input_o\ $ 
-- (((!\midiNoteNumber[6]~input_o\) # (\midiNoteNumber[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101010110101111101011110101000010101010101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[3]~input_o\,
	datac => \ALT_INV_midiNoteNumber[6]~input_o\,
	datad => \ALT_INV_midiNoteNumber[1]~input_o\,
	datae => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LABCELL_X12_Y1_N48
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \midiNoteNumber[3]~input_o\ & ( (!\midiNoteNumber[0]~input_o\ & ((!\midiNoteNumber[1]~input_o\) # ((\midiNoteNumber[5]~input_o\)))) # (\midiNoteNumber[0]~input_o\ & ((!\midiNoteNumber[6]~input_o\) # (!\midiNoteNumber[1]~input_o\ $ 
-- (!\midiNoteNumber[5]~input_o\)))) ) ) # ( !\midiNoteNumber[3]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[0]~input_o\ $ ((!\midiNoteNumber[5]~input_o\)))) # (\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[5]~input_o\ & 
-- !\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100100111001011110010011100110111111100111101011111110011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[0]~input_o\,
	datac => \ALT_INV_midiNoteNumber[5]~input_o\,
	datad => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[3]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LABCELL_X12_Y1_N42
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[1]~input_o\ $ (!\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[5]~input_o\))) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[6]~input_o\) # 
-- ((\midiNoteNumber[1]~input_o\ & !\midiNoteNumber[5]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[6]~input_o\ & (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[5]~input_o\) # (\midiNoteNumber[1]~input_o\)))) # 
-- (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (((!\midiNoteNumber[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000101011010001100010101101001111111100111000111111110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[3]~input_o\,
	datac => \ALT_INV_midiNoteNumber[5]~input_o\,
	datad => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X12_Y1_N6
\Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ( !\midiNoteNumber[4]~input_o\ & ( (!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & (\Mux11~0_combout\)) # (\midiNoteNumber[2]~input_o\ & (((\Mux11~1_combout\)))))) ) ) # ( \midiNoteNumber[4]~input_o\ & ( 
-- (!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & (\Mux11~2_combout\)) # (\midiNoteNumber[2]~input_o\ & (((\Mux11~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000010000010101000101010001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[7]~input_o\,
	datab => \ALT_INV_midiNoteNumber[2]~input_o\,
	datac => \ALT_INV_Mux11~2_combout\,
	datad => \ALT_INV_Mux11~3_combout\,
	datae => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_Mux11~1_combout\,
	datag => \ALT_INV_Mux11~0_combout\,
	combout => \Mux11~4_combout\);

-- Location: LABCELL_X12_Y1_N3
\Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[5]~input_o\) # (!\midiNoteNumber[1]~input_o\ $ (\midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[3]~input_o\) # 
-- ((!\midiNoteNumber[1]~input_o\ & \midiNoteNumber[5]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[6]~input_o\ & 
-- \midiNoteNumber[3]~input_o\)) # (\midiNoteNumber[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011001110111001001100111011111111100101101101111110010110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X12_Y1_N45
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[3]~input_o\ $ (((\midiNoteNumber[5]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & (((\midiNoteNumber[6]~input_o\ & \midiNoteNumber[5]~input_o\)) # 
-- (\midiNoteNumber[3]~input_o\))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( !\midiNoteNumber[3]~input_o\ $ (((!\midiNoteNumber[5]~input_o\ & (!\midiNoteNumber[1]~input_o\)) # (\midiNoteNumber[5]~input_o\ & ((\midiNoteNumber[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011000011011001101100001110011001001101111001100100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[3]~input_o\,
	datac => \ALT_INV_midiNoteNumber[6]~input_o\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X12_Y1_N0
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[6]~input_o\) # ((\midiNoteNumber[5]~input_o\)))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[3]~input_o\))) # 
-- (\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[5]~input_o\) # (\midiNoteNumber[3]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[3]~input_o\)) # (\midiNoteNumber[6]~input_o\))) # 
-- (\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[6]~input_o\ & \midiNoteNumber[3]~input_o\)) # (\midiNoteNumber[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111101100111101011110110011111011110100110111101111010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[5]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X12_Y1_N30
\Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( !\midiNoteNumber[2]~input_o\ & ( ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[4]~input_o\ & (\Mux10~0_combout\)) # (\midiNoteNumber[4]~input_o\ & ((\Mux10~1_combout\)))))) ) ) # ( \midiNoteNumber[2]~input_o\ & ( 
-- ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[4]~input_o\ & ((\Mux11~2_combout\))) # (\midiNoteNumber[4]~input_o\ & (\Mux10~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_Mux11~2_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	datae => \ALT_INV_midiNoteNumber[2]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[7]~input_o\,
	datag => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~3_combout\);

-- Location: LABCELL_X11_Y1_N54
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[3]~input_o\)) # (\midiNoteNumber[4]~input_o\))) # (\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[3]~input_o\ $ (((!\midiNoteNumber[4]~input_o\) # 
-- (\midiNoteNumber[6]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ ((!\midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[4]~input_o\ & (((!\midiNoteNumber[3]~input_o\) # 
-- (\midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100101111011011110010111101110110110101001111011011010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X11_Y1_N57
\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (!\midiNoteNumber[6]~input_o\)))) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[6]~input_o\ & 
-- (!\midiNoteNumber[1]~input_o\)) # (\midiNoteNumber[6]~input_o\ & ((!\midiNoteNumber[4]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( !\midiNoteNumber[4]~input_o\ $ (!\midiNoteNumber[3]~input_o\ $ (((!\midiNoteNumber[1]~input_o\ & 
-- !\midiNoteNumber[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001101101100100100110110110000010010101011000001001010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[6]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X11_Y1_N18
\Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & (((\midiNoteNumber[1]~input_o\ & \midiNoteNumber[6]~input_o\)) # (\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[4]~input_o\ & (\midiNoteNumber[1]~input_o\ & 
-- ((!\midiNoteNumber[6]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[3]~input_o\ $ (\midiNoteNumber[6]~input_o\)))) # (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[1]~input_o\ & 
-- ((!\midiNoteNumber[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001000001100111000100000110000011101010011000001110101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LABCELL_X11_Y1_N21
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ (((!\midiNoteNumber[6]~input_o\ & !\midiNoteNumber[3]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[4]~input_o\) # 
-- (!\midiNoteNumber[6]~input_o\ $ (\midiNoteNumber[3]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[6]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ (!\midiNoteNumber[3]~input_o\)))) # 
-- (\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[6]~input_o\ & !\midiNoteNumber[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000001000010100100000100001111100110011010111110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[6]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X11_Y1_N36
\Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( !\midiNoteNumber[5]~input_o\ & ( ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & ((\Mux9~0_combout\))) # (\midiNoteNumber[2]~input_o\ & (\Mux9~1_combout\))))) ) ) # ( \midiNoteNumber[5]~input_o\ & ( 
-- ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & (\Mux9~2_combout\)) # (\midiNoteNumber[2]~input_o\ & ((\Mux9~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_midiNoteNumber[2]~input_o\,
	datac => \ALT_INV_Mux9~2_combout\,
	datad => \ALT_INV_Mux9~3_combout\,
	datae => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[7]~input_o\,
	datag => \ALT_INV_Mux9~0_combout\,
	combout => \Mux9~4_combout\);

-- Location: LABCELL_X11_Y1_N3
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ (\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[2]~input_o\ & ((\midiNoteNumber[3]~input_o\) # 
-- (\midiNoteNumber[4]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[3]~input_o\) # (!\midiNoteNumber[2]~input_o\ $ (\midiNoteNumber[4]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & 
-- (!\midiNoteNumber[3]~input_o\ $ (((!\midiNoteNumber[4]~input_o\) # (\midiNoteNumber[2]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & (\midiNoteNumber[4]~input_o\ & \midiNoteNumber[3]~input_o\)) # 
-- (\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[4]~input_o\ & !\midiNoteNumber[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010100110000110001010011011010111011010111101011101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[2]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X11_Y1_N12
\Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[1]~input_o\) # (!\midiNoteNumber[2]~input_o\))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( !\midiNoteNumber[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[2]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LABCELL_X11_Y1_N9
\Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( \midiNoteNumber[4]~input_o\ ) # ( !\midiNoteNumber[4]~input_o\ & ( !\Mux8~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux8~3_combout\,
	dataf => \ALT_INV_midiNoteNumber[4]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LABCELL_X11_Y1_N6
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[2]~input_o\ & ((\midiNoteNumber[4]~input_o\) # (\midiNoteNumber[1]~input_o\)))) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[1]~input_o\ & 
-- (!\midiNoteNumber[4]~input_o\ $ (\midiNoteNumber[2]~input_o\))) # (\midiNoteNumber[1]~input_o\ & ((\midiNoteNumber[2]~input_o\) # (\midiNoteNumber[4]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & 
-- ((!\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[1]~input_o\)) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[2]~input_o\))))) # (\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[3]~input_o\ $ (\midiNoteNumber[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110010000011101111001000001101111001000001110111100100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[2]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X11_Y1_N0
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[2]~input_o\ $ (!\midiNoteNumber[3]~input_o\ $ (\midiNoteNumber[4]~input_o\)))) # (\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[4]~input_o\ & 
-- ((!\midiNoteNumber[2]~input_o\) # (!\midiNoteNumber[3]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (!\midiNoteNumber[2]~input_o\ $ (!\midiNoteNumber[4]~input_o\)))) # 
-- (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[2]~input_o\) # ((\midiNoteNumber[1]~input_o\ & \midiNoteNumber[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110001101101100111000110110101111100100000100111110010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[2]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X11_Y1_N30
\Mux8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = ( !\midiNoteNumber[6]~input_o\ & ( ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[5]~input_o\ & ((\Mux8~0_combout\))) # (\midiNoteNumber[5]~input_o\ & (\Mux8~1_combout\))))) ) ) # ( \midiNoteNumber[6]~input_o\ & ( 
-- ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[5]~input_o\ & ((\Mux8~2_combout\))) # (\midiNoteNumber[5]~input_o\ & (!\Mux8~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux8~4_combout\,
	datac => \ALT_INV_Mux8~2_combout\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	datae => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[7]~input_o\,
	datag => \ALT_INV_Mux8~0_combout\,
	combout => \Mux8~5_combout\);

-- Location: LABCELL_X12_Y1_N51
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \midiNoteNumber[3]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[4]~input_o\) # ((\midiNoteNumber[1]~input_o\ & \midiNoteNumber[0]~input_o\)))) # (\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[1]~input_o\) # 
-- ((!\midiNoteNumber[0]~input_o\) # (\midiNoteNumber[4]~input_o\)))) ) ) # ( !\midiNoteNumber[3]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[1]~input_o\) # (!\midiNoteNumber[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011111110000111111111111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[1]~input_o\,
	datab => \ALT_INV_midiNoteNumber[0]~input_o\,
	datac => \ALT_INV_midiNoteNumber[2]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[3]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X12_Y1_N36
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (\midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[1]~input_o\ & 
-- ((!\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[4]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[4]~input_o\) # 
-- (\midiNoteNumber[2]~input_o\)))) # (\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[2]~input_o\ $ ((!\midiNoteNumber[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011010110000001101101011001110001000000110111000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[1]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X12_Y1_N39
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[4]~input_o\ & (\midiNoteNumber[1]~input_o\ & !\midiNoteNumber[3]~input_o\)) # (\midiNoteNumber[4]~input_o\ & ((\midiNoteNumber[3]~input_o\))))) # 
-- (\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[1]~input_o\ $ (\midiNoteNumber[3]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[4]~input_o\ & \midiNoteNumber[3]~input_o\)))) # 
-- (\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[2]~input_o\) # ((!\midiNoteNumber[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001010000011111100101001011000001001110101100000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[4]~input_o\,
	datac => \ALT_INV_midiNoteNumber[1]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X12_Y1_N12
\Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \midiNoteNumber[6]~input_o\ & ( !\midiNoteNumber[7]~input_o\ & ( (!\Mux7~2_combout\ & !\midiNoteNumber[5]~input_o\) ) ) ) # ( !\midiNoteNumber[6]~input_o\ & ( !\midiNoteNumber[7]~input_o\ & ( (!\midiNoteNumber[5]~input_o\ & 
-- (\Mux7~0_combout\)) # (\midiNoteNumber[5]~input_o\ & ((!\Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_midiNoteNumber[5]~input_o\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Mux7~1_combout\,
	datae => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[7]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LABCELL_X13_Y1_N36
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & ((\midiNoteNumber[3]~input_o\) # (\midiNoteNumber[1]~input_o\))) # (\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[1]~input_o\) # (!\midiNoteNumber[3]~input_o\))) ) ) # 
-- ( !\midiNoteNumber[0]~input_o\ & ( (\midiNoteNumber[3]~input_o\) # (\midiNoteNumber[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101111110011111100111111001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X13_Y1_N0
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[2]~input_o\)))) # (\midiNoteNumber[1]~input_o\ & 
-- (!\midiNoteNumber[2]~input_o\ $ (((!\midiNoteNumber[3]~input_o\))))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[1]~input_o\ $ (((!\midiNoteNumber[2]~input_o\ & !\midiNoteNumber[3]~input_o\))))) # 
-- (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101011001010011010101100101011011001001010101101100100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X13_Y1_N3
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[2]~input_o\ $ (((!\midiNoteNumber[3]~input_o\) # (\midiNoteNumber[4]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & (((!\midiNoteNumber[2]~input_o\ & 
-- \midiNoteNumber[4]~input_o\)) # (\midiNoteNumber[3]~input_o\))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[2]~input_o\ & 
-- (\midiNoteNumber[1]~input_o\)))) # (\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[2]~input_o\) # (!\midiNoteNumber[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110000011000101111000001100001000110101101110100011010110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X13_Y1_N6
\Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( !\midiNoteNumber[6]~input_o\ & ( ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[5]~input_o\ & (\Mux6~0_combout\)) # (\midiNoteNumber[5]~input_o\ & ((\Mux6~1_combout\)))))) ) ) # ( \midiNoteNumber[6]~input_o\ & ( 
-- (!\midiNoteNumber[5]~input_o\ & (\Mux6~2_combout\ & (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[5]~input_o\,
	datab => \ALT_INV_Mux6~2_combout\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_Mux6~1_combout\,
	datae => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[7]~input_o\,
	datag => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LABCELL_X13_Y1_N45
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \midiNoteNumber[0]~input_o\ & ( ((\midiNoteNumber[5]~input_o\) # (\midiNoteNumber[2]~input_o\)) # (\midiNoteNumber[1]~input_o\) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (\midiNoteNumber[5]~input_o\) # (\midiNoteNumber[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[2]~input_o\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X13_Y1_N39
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[1]~input_o\ $ (\midiNoteNumber[5]~input_o\)) # (\midiNoteNumber[4]~input_o\))) # (\midiNoteNumber[2]~input_o\ & (((\midiNoteNumber[5]~input_o\)) # 
-- (\midiNoteNumber[1]~input_o\))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[5]~input_o\ & (((!\midiNoteNumber[1]~input_o\)))) # (\midiNoteNumber[5]~input_o\ & (((\midiNoteNumber[4]~input_o\)) # (\midiNoteNumber[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001011111110011000101111110011011011111111001101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X13_Y1_N42
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[5]~input_o\ & ((\midiNoteNumber[4]~input_o\) # (\midiNoteNumber[1]~input_o\)))) # (\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[5]~input_o\ $ 
-- (!\midiNoteNumber[1]~input_o\ $ (\midiNoteNumber[4]~input_o\)))) ) ) # ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[4]~input_o\ & (!\midiNoteNumber[5]~input_o\ $ (!\midiNoteNumber[1]~input_o\)))) # 
-- (\midiNoteNumber[2]~input_o\ & (!\midiNoteNumber[4]~input_o\ $ (((!\midiNoteNumber[5]~input_o\ & \midiNoteNumber[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110100000010011011010000001000100110101010010010011010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[5]~input_o\,
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[2]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X13_Y1_N30
\Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( !\midiNoteNumber[6]~input_o\ & ( ((!\midiNoteNumber[7]~input_o\ & ((!\midiNoteNumber[3]~input_o\ & (\Mux5~0_combout\)) # (\midiNoteNumber[3]~input_o\ & ((\Mux5~2_combout\)))))) ) ) # ( \midiNoteNumber[6]~input_o\ & ( 
-- (!\midiNoteNumber[3]~input_o\ & (!\Mux5~1_combout\ & (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[3]~input_o\,
	datab => \ALT_INV_Mux5~1_combout\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_Mux5~2_combout\,
	datae => \ALT_INV_midiNoteNumber[6]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[7]~input_o\,
	datag => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X12_Y1_N18
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\midiNoteNumber[6]~input_o\ & !\midiNoteNumber[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[7]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X13_Y1_N18
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \midiNoteNumber[5]~input_o\ & ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[1]~input_o\ & (!\midiNoteNumber[3]~input_o\ $ (((\midiNoteNumber[2]~input_o\ & !\midiNoteNumber[4]~input_o\))))) # (\midiNoteNumber[1]~input_o\ & 
-- ((!\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[2]~input_o\)) # (\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[4]~input_o\))))) ) ) ) # ( !\midiNoteNumber[5]~input_o\ & ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[2]~input_o\ & 
-- (!\midiNoteNumber[1]~input_o\ $ ((!\midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[4]~input_o\) # ((\midiNoteNumber[1]~input_o\ & \midiNoteNumber[3]~input_o\)))) ) ) ) # ( \midiNoteNumber[5]~input_o\ & ( 
-- !\midiNoteNumber[0]~input_o\ & ( !\midiNoteNumber[3]~input_o\ $ (((\midiNoteNumber[2]~input_o\ & !\midiNoteNumber[4]~input_o\))) ) ) ) # ( !\midiNoteNumber[5]~input_o\ & ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & 
-- (!\midiNoteNumber[1]~input_o\ & ((!\midiNoteNumber[2]~input_o\) # (\midiNoteNumber[4]~input_o\)))) # (\midiNoteNumber[3]~input_o\ & (!\midiNoteNumber[2]~input_o\ $ (((!\midiNoteNumber[1]~input_o\ & !\midiNoteNumber[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011011001010101001011111000001111101001010011010011111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	datae => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X12_Y1_N21
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux4~1_combout\ & ( \Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LABCELL_X13_Y1_N24
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \midiNoteNumber[5]~input_o\ & ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[3]~input_o\) # ((!\midiNoteNumber[2]~input_o\ & !\midiNoteNumber[1]~input_o\)))) ) ) ) # ( !\midiNoteNumber[5]~input_o\ 
-- & ( \midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[3]~input_o\ & ((!\midiNoteNumber[2]~input_o\ $ (\midiNoteNumber[4]~input_o\)) # (\midiNoteNumber[1]~input_o\))) # (\midiNoteNumber[3]~input_o\ & (\midiNoteNumber[2]~input_o\ & 
-- (!\midiNoteNumber[1]~input_o\ $ (\midiNoteNumber[4]~input_o\)))) ) ) ) # ( \midiNoteNumber[5]~input_o\ & ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[2]~input_o\) # (!\midiNoteNumber[3]~input_o\))) ) ) ) # ( 
-- !\midiNoteNumber[5]~input_o\ & ( !\midiNoteNumber[0]~input_o\ & ( (!\midiNoteNumber[4]~input_o\ & ((!\midiNoteNumber[1]~input_o\) # ((\midiNoteNumber[2]~input_o\ & \midiNoteNumber[3]~input_o\)))) # (\midiNoteNumber[4]~input_o\ & 
-- (\midiNoteNumber[2]~input_o\ & ((!\midiNoteNumber[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110101010000111110100000000010110100011100011111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiNoteNumber[2]~input_o\,
	datab => \ALT_INV_midiNoteNumber[1]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	datae => \ALT_INV_midiNoteNumber[5]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X12_Y1_N54
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Mux3~0_combout\ & ( \Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X11_Y1_N51
\Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \midiNoteNumber[1]~input_o\ & ( \midiNoteNumber[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_midiNoteNumber[1]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[0]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LABCELL_X12_Y1_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\midiNoteNumber[5]~input_o\ & ( (!\midiNoteNumber[6]~input_o\ & !\midiNoteNumber[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_midiNoteNumber[6]~input_o\,
	datac => \ALT_INV_midiNoteNumber[7]~input_o\,
	dataf => \ALT_INV_midiNoteNumber[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X11_Y1_N24
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Mux2~0_combout\ & ( (!\midiNoteNumber[2]~input_o\ & ((!\Mux12~4_combout\ $ (\midiNoteNumber[4]~input_o\)) # (\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[2]~input_o\ & ((!\Mux12~4_combout\ & ((\midiNoteNumber[4]~input_o\))) # 
-- (\Mux12~4_combout\ & (!\midiNoteNumber[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010011100011111101001110001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~4_combout\,
	datab => \ALT_INV_midiNoteNumber[2]~input_o\,
	datac => \ALT_INV_midiNoteNumber[3]~input_o\,
	datad => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X11_Y1_N27
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Mux2~0_combout\ & ( (!\midiNoteNumber[4]~input_o\ & (((\Mux12~4_combout\ & \midiNoteNumber[2]~input_o\)) # (\midiNoteNumber[3]~input_o\))) # (\midiNoteNumber[4]~input_o\ & (!\Mux12~4_combout\ & (!\midiNoteNumber[2]~input_o\ & 
-- !\midiNoteNumber[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000111100000001100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~4_combout\,
	datab => \ALT_INV_midiNoteNumber[2]~input_o\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	datad => \ALT_INV_midiNoteNumber[3]~input_o\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X11_Y1_N15
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Mux2~0_combout\ & ( (!\Mux8~3_combout\) # (\midiNoteNumber[4]~input_o\) ) ) # ( !\Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux8~3_combout\,
	datac => \ALT_INV_midiNoteNumber[4]~input_o\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X29_Y11_N0
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


