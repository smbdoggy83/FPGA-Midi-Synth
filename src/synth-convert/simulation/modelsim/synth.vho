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

-- DATE "04/11/2022 17:27:13"

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

ENTITY 	MidiByteReader_verilog IS
    PORT (
	CLOCK_50 : IN std_logic;
	MIDI_RX : IN std_logic;
	isByteAvailable : BUFFER std_logic;
	byteValue : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MidiByteReader_verilog;

-- Design Ports Information
-- isByteAvailable	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[6]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byteValue[7]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MIDI_RX	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MidiByteReader_verilog IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_MIDI_RX : std_logic;
SIGNAL ww_isByteAvailable : std_logic;
SIGNAL ww_byteValue : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \MIDI_RX~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \debounceCountDown~0_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \byteValue[0]~12_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \bitNumber[7]~0_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \midiState~15_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \midiState.stateByteComplete~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \midiState.stateWaitingForSignal~0_combout\ : std_logic;
SIGNAL \midiState.stateWaitingForSignal~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \debounceCountDown~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \debounceCountDown~2_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \debounceCountDown~3_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \debounceCountDown~4_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \debounceCountDown~5_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \debounceCountDown~6_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \debounceCountDown~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \midiState~17_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \midiState.stateSignalAvailable~q\ : std_logic;
SIGNAL \midiCount[10]~0_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \isByteAvailable~reg0_q\ : std_logic;
SIGNAL \midiState~14_combout\ : std_logic;
SIGNAL \byteValue~0_combout\ : std_logic;
SIGNAL \byteValue~1_combout\ : std_logic;
SIGNAL \byteValue[0]~2_combout\ : std_logic;
SIGNAL \byteValue[0]~reg0_q\ : std_logic;
SIGNAL \byteValue~3_combout\ : std_logic;
SIGNAL \byteValue~4_combout\ : std_logic;
SIGNAL \byteValue[1]~reg0_q\ : std_logic;
SIGNAL \byteValue~5_combout\ : std_logic;
SIGNAL \byteValue[2]~reg0_q\ : std_logic;
SIGNAL \byteValue~6_combout\ : std_logic;
SIGNAL \byteValue[3]~reg0_q\ : std_logic;
SIGNAL \byteValue~7_combout\ : std_logic;
SIGNAL \byteValue~8_combout\ : std_logic;
SIGNAL \byteValue[4]~reg0_q\ : std_logic;
SIGNAL \midiState~16_combout\ : std_logic;
SIGNAL \byteValue~9_combout\ : std_logic;
SIGNAL \byteValue[5]~reg0_q\ : std_logic;
SIGNAL \byteValue~10_combout\ : std_logic;
SIGNAL \byteValue[6]~reg0_q\ : std_logic;
SIGNAL \byteValue~11_combout\ : std_logic;
SIGNAL \byteValue[7]~reg0_q\ : std_logic;
SIGNAL midiCount : std_logic_vector(11 DOWNTO 0);
SIGNAL bitNumber : std_logic_vector(7 DOWNTO 0);
SIGNAL debounceCountDown : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_MIDI_RX~input_o\ : std_logic;
SIGNAL \ALT_INV_midiState~17_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_midiState~16_combout\ : std_logic;
SIGNAL \ALT_INV_byteValue~7_combout\ : std_logic;
SIGNAL \ALT_INV_midiState~15_combout\ : std_logic;
SIGNAL \ALT_INV_byteValue~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL ALT_INV_debounceCountDown : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_midiState.stateWaitingForSignal~q\ : std_logic;
SIGNAL \ALT_INV_byteValue~0_combout\ : std_logic;
SIGNAL \ALT_INV_midiState~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_midiState.stateSignalAvailable~q\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_midiState.stateByteComplete~q\ : std_logic;
SIGNAL \ALT_INV_isByteAvailable~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_bitNumber : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_midiCount : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_byteValue[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_byteValue[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_byteValue[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_byteValue[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_byteValue[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_byteValue[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_byteValue[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_byteValue[0]~reg0_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_MIDI_RX <= MIDI_RX;
isByteAvailable <= ww_isByteAvailable;
byteValue <= ww_byteValue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_MIDI_RX~input_o\ <= NOT \MIDI_RX~input_o\;
\ALT_INV_midiState~17_combout\ <= NOT \midiState~17_combout\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_midiState~16_combout\ <= NOT \midiState~16_combout\;
\ALT_INV_byteValue~7_combout\ <= NOT \byteValue~7_combout\;
\ALT_INV_midiState~15_combout\ <= NOT \midiState~15_combout\;
\ALT_INV_byteValue~3_combout\ <= NOT \byteValue~3_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_debounceCountDown(7) <= NOT debounceCountDown(7);
ALT_INV_debounceCountDown(6) <= NOT debounceCountDown(6);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_debounceCountDown(5) <= NOT debounceCountDown(5);
ALT_INV_debounceCountDown(4) <= NOT debounceCountDown(4);
ALT_INV_debounceCountDown(3) <= NOT debounceCountDown(3);
ALT_INV_debounceCountDown(2) <= NOT debounceCountDown(2);
ALT_INV_debounceCountDown(1) <= NOT debounceCountDown(1);
ALT_INV_debounceCountDown(0) <= NOT debounceCountDown(0);
\ALT_INV_midiState.stateWaitingForSignal~q\ <= NOT \midiState.stateWaitingForSignal~q\;
\ALT_INV_byteValue~0_combout\ <= NOT \byteValue~0_combout\;
\ALT_INV_midiState~14_combout\ <= NOT \midiState~14_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_midiState.stateSignalAvailable~q\ <= NOT \midiState.stateSignalAvailable~q\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_midiState.stateByteComplete~q\ <= NOT \midiState.stateByteComplete~q\;
\ALT_INV_isByteAvailable~reg0_q\ <= NOT \isByteAvailable~reg0_q\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_bitNumber(3) <= NOT bitNumber(3);
ALT_INV_bitNumber(4) <= NOT bitNumber(4);
ALT_INV_bitNumber(5) <= NOT bitNumber(5);
ALT_INV_bitNumber(6) <= NOT bitNumber(6);
ALT_INV_bitNumber(7) <= NOT bitNumber(7);
ALT_INV_bitNumber(2) <= NOT bitNumber(2);
ALT_INV_bitNumber(0) <= NOT bitNumber(0);
ALT_INV_bitNumber(1) <= NOT bitNumber(1);
ALT_INV_midiCount(9) <= NOT midiCount(9);
ALT_INV_midiCount(8) <= NOT midiCount(8);
ALT_INV_midiCount(7) <= NOT midiCount(7);
ALT_INV_midiCount(6) <= NOT midiCount(6);
ALT_INV_midiCount(4) <= NOT midiCount(4);
ALT_INV_midiCount(3) <= NOT midiCount(3);
ALT_INV_midiCount(2) <= NOT midiCount(2);
ALT_INV_midiCount(1) <= NOT midiCount(1);
ALT_INV_midiCount(0) <= NOT midiCount(0);
ALT_INV_midiCount(5) <= NOT midiCount(5);
ALT_INV_midiCount(11) <= NOT midiCount(11);
ALT_INV_midiCount(10) <= NOT midiCount(10);
\ALT_INV_byteValue[7]~reg0_q\ <= NOT \byteValue[7]~reg0_q\;
\ALT_INV_byteValue[6]~reg0_q\ <= NOT \byteValue[6]~reg0_q\;
\ALT_INV_byteValue[5]~reg0_q\ <= NOT \byteValue[5]~reg0_q\;
\ALT_INV_byteValue[4]~reg0_q\ <= NOT \byteValue[4]~reg0_q\;
\ALT_INV_byteValue[3]~reg0_q\ <= NOT \byteValue[3]~reg0_q\;
\ALT_INV_byteValue[2]~reg0_q\ <= NOT \byteValue[2]~reg0_q\;
\ALT_INV_byteValue[1]~reg0_q\ <= NOT \byteValue[1]~reg0_q\;
\ALT_INV_byteValue[0]~reg0_q\ <= NOT \byteValue[0]~reg0_q\;

-- Location: IOOBUF_X89_Y20_N62
\isByteAvailable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isByteAvailable~reg0_q\,
	devoe => ww_devoe,
	o => ww_isByteAvailable);

-- Location: IOOBUF_X89_Y20_N96
\byteValue[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(0));

-- Location: IOOBUF_X89_Y21_N22
\byteValue[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(1));

-- Location: IOOBUF_X89_Y21_N56
\byteValue[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(2));

-- Location: IOOBUF_X89_Y23_N56
\byteValue[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(3));

-- Location: IOOBUF_X89_Y23_N22
\byteValue[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(4));

-- Location: IOOBUF_X89_Y21_N5
\byteValue[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(5));

-- Location: IOOBUF_X89_Y21_N39
\byteValue[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(6));

-- Location: IOOBUF_X89_Y20_N79
\byteValue[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \byteValue[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_byteValue(7));

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

-- Location: LABCELL_X85_Y21_N0
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( midiCount(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~14\ = CARRY(( midiCount(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_midiCount(0),
	cin => GND,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: IOIBUF_X89_Y20_N44
\MIDI_RX~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MIDI_RX,
	o => \MIDI_RX~input_o\);

-- Location: MLABCELL_X84_Y21_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( debounceCountDown(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( debounceCountDown(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_debounceCountDown(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X84_Y21_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !debounceCountDown(0) & ( debounceCountDown(3) & ( (!debounceCountDown(4) & (debounceCountDown(1) & (!debounceCountDown(5) & !debounceCountDown(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounceCountDown(4),
	datab => ALT_INV_debounceCountDown(1),
	datac => ALT_INV_debounceCountDown(5),
	datad => ALT_INV_debounceCountDown(2),
	datae => ALT_INV_debounceCountDown(0),
	dataf => ALT_INV_debounceCountDown(3),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X84_Y21_N3
\debounceCountDown~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~0_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\Add0~1_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & \Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~0_combout\);

-- Location: LABCELL_X85_Y21_N18
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( midiCount(6) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~34\ = CARRY(( midiCount(6) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_midiCount(6),
	cin => \Add1~10\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X85_Y21_N21
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( midiCount(7) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( midiCount(7) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_midiCount(7),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X85_Y21_N57
\byteValue[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue[0]~12_combout\ = ( \MIDI_RX~input_o\ & ( \Equal0~0_combout\ & ( \midiState.stateWaitingForSignal~q\ ) ) ) # ( !\MIDI_RX~input_o\ & ( \Equal0~0_combout\ & ( (\midiState.stateWaitingForSignal~q\) # (\Equal0~1_combout\) ) ) ) # ( \MIDI_RX~input_o\ 
-- & ( !\Equal0~0_combout\ & ( \midiState.stateWaitingForSignal~q\ ) ) ) # ( !\MIDI_RX~input_o\ & ( !\Equal0~0_combout\ & ( \midiState.stateWaitingForSignal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_midiState.stateWaitingForSignal~q\,
	datae => \ALT_INV_MIDI_RX~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \byteValue[0]~12_combout\);

-- Location: FF_X85_Y21_N23
\midiCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(7));

-- Location: LABCELL_X85_Y21_N24
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( midiCount(8) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( midiCount(8) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_midiCount(8),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X85_Y21_N26
\midiCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(8));

-- Location: LABCELL_X85_Y21_N27
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( midiCount(9) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( midiCount(9) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_midiCount(9),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X85_Y21_N29
\midiCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(9));

-- Location: LABCELL_X85_Y21_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( midiCount(10) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~2\ = CARRY(( midiCount(10) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_midiCount(10),
	cin => \Add1~46\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X85_Y21_N32
\midiCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(10));

-- Location: LABCELL_X85_Y21_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( midiCount(11) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_midiCount(11),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\);

-- Location: FF_X85_Y21_N35
\midiCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(11));

-- Location: LABCELL_X85_Y21_N36
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !midiCount(1) & ( midiCount(10) & ( (!midiCount(11) & (!midiCount(5) & (!midiCount(0) & !midiCount(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_midiCount(11),
	datab => ALT_INV_midiCount(5),
	datac => ALT_INV_midiCount(0),
	datad => ALT_INV_midiCount(2),
	datae => ALT_INV_midiCount(1),
	dataf => ALT_INV_midiCount(10),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X88_Y21_N30
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( bitNumber(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~6\ = CARRY(( bitNumber(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(0),
	cin => GND,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X87_Y21_N30
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( \Equal2~1_combout\ & ( \Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: MLABCELL_X87_Y21_N54
\bitNumber[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bitNumber[7]~0_combout\ = ( \Equal0~0_combout\ & ( \MIDI_RX~input_o\ & ( (\midiState.stateSignalAvailable~q\ & \Equal2~2_combout\) ) ) ) # ( !\Equal0~0_combout\ & ( \MIDI_RX~input_o\ & ( (\midiState.stateSignalAvailable~q\ & \Equal2~2_combout\) ) ) ) # ( 
-- \Equal0~0_combout\ & ( !\MIDI_RX~input_o\ & ( (!\midiState.stateWaitingForSignal~q\ & (((\midiState.stateSignalAvailable~q\ & \Equal2~2_combout\)) # (\Equal0~1_combout\))) # (\midiState.stateWaitingForSignal~q\ & (((\midiState.stateSignalAvailable~q\ & 
-- \Equal2~2_combout\)))) ) ) ) # ( !\Equal0~0_combout\ & ( !\MIDI_RX~input_o\ & ( (\midiState.stateSignalAvailable~q\ & \Equal2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001000100010111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiState.stateWaitingForSignal~q\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_midiState.stateSignalAvailable~q\,
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_MIDI_RX~input_o\,
	combout => \bitNumber[7]~0_combout\);

-- Location: FF_X88_Y21_N32
\bitNumber[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(0));

-- Location: LABCELL_X88_Y21_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( bitNumber(1) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~2\ = CARRY(( bitNumber(1) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(1),
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X88_Y21_N35
\bitNumber[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(1));

-- Location: LABCELL_X88_Y21_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( bitNumber(2) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~10\ = CARRY(( bitNumber(2) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(2),
	cin => \Add2~2\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X88_Y21_N38
\bitNumber[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(2));

-- Location: LABCELL_X88_Y21_N39
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( bitNumber(3) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~30\ = CARRY(( bitNumber(3) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(3),
	cin => \Add2~10\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X88_Y21_N41
\bitNumber[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(3));

-- Location: LABCELL_X88_Y21_N42
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( bitNumber(4) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~26\ = CARRY(( bitNumber(4) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(4),
	cin => \Add2~30\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X88_Y21_N44
\bitNumber[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(4));

-- Location: LABCELL_X88_Y21_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( bitNumber(5) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~22\ = CARRY(( bitNumber(5) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(5),
	cin => \Add2~26\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X88_Y21_N47
\bitNumber[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(5));

-- Location: LABCELL_X88_Y21_N48
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( bitNumber(6) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( bitNumber(6) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(6),
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X88_Y21_N50
\bitNumber[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(6));

-- Location: LABCELL_X88_Y21_N51
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( bitNumber(7) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bitNumber(7),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\);

-- Location: FF_X88_Y21_N53
\bitNumber[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \bitNumber[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bitNumber(7));

-- Location: LABCELL_X88_Y21_N24
\midiState~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \midiState~15_combout\ = ( !bitNumber(5) & ( !bitNumber(7) & ( (bitNumber(2) & (!bitNumber(3) & (!bitNumber(6) & !bitNumber(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bitNumber(2),
	datab => ALT_INV_bitNumber(3),
	datac => ALT_INV_bitNumber(6),
	datad => ALT_INV_bitNumber(4),
	datae => ALT_INV_bitNumber(5),
	dataf => ALT_INV_bitNumber(7),
	combout => \midiState~15_combout\);

-- Location: MLABCELL_X87_Y21_N24
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( bitNumber(0) & ( bitNumber(1) & ( (\Equal2~1_combout\ & (\midiState~15_combout\ & (\Equal2~0_combout\ & \midiState.stateSignalAvailable~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datab => \ALT_INV_midiState~15_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_midiState.stateSignalAvailable~q\,
	datae => ALT_INV_bitNumber(0),
	dataf => ALT_INV_bitNumber(1),
	combout => \Selector2~0_combout\);

-- Location: MLABCELL_X87_Y21_N42
\Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ( \Equal0~0_combout\ & ( \Selector2~0_combout\ & ( !\Selector2~1_combout\ $ (((!\MIDI_RX~input_o\ & (\Equal0~1_combout\ & !\midiState.stateWaitingForSignal~q\)))) ) ) ) # ( !\Equal0~0_combout\ & ( \Selector2~0_combout\ & ( 
-- !\Selector2~1_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\Selector2~0_combout\ & ( !\Selector2~1_combout\ $ ((((!\Equal0~1_combout\) # (\midiState.stateWaitingForSignal~q\)) # (\MIDI_RX~input_o\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\Selector2~0_combout\ 
-- & ( \Selector2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001000001101111111111111000000001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_midiState.stateWaitingForSignal~q\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Selector2~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X87_Y21_N26
\midiState.stateByteComplete\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	ena => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \midiState.stateByteComplete~q\);

-- Location: MLABCELL_X87_Y21_N39
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \midiState.stateByteComplete~q\ & ( (\Equal2~1_combout\ & \Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_midiState.stateByteComplete~q\,
	combout => \Selector2~1_combout\);

-- Location: MLABCELL_X87_Y21_N36
\midiState.stateWaitingForSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \midiState.stateWaitingForSignal~0_combout\ = ( !\Selector2~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \midiState.stateWaitingForSignal~0_combout\);

-- Location: FF_X87_Y21_N38
\midiState.stateWaitingForSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \midiState.stateWaitingForSignal~0_combout\,
	ena => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \midiState.stateWaitingForSignal~q\);

-- Location: FF_X84_Y21_N5
\debounceCountDown[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~0_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(0));

-- Location: MLABCELL_X84_Y21_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !debounceCountDown(1) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !debounceCountDown(1) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_debounceCountDown(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X84_Y21_N6
\debounceCountDown~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~1_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (!\Add0~5_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & !\Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~1_combout\);

-- Location: FF_X84_Y21_N8
\debounceCountDown[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~1_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(1));

-- Location: MLABCELL_X84_Y21_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( debounceCountDown(2) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( debounceCountDown(2) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_debounceCountDown(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X84_Y21_N15
\debounceCountDown~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~2_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\Add0~9_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & \Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~2_combout\);

-- Location: FF_X84_Y21_N17
\debounceCountDown[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~2_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(2));

-- Location: MLABCELL_X84_Y21_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !debounceCountDown(3) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !debounceCountDown(3) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_debounceCountDown(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X84_Y21_N12
\debounceCountDown~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~3_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (!\Add0~13_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & !\Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datab => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~3_combout\);

-- Location: FF_X84_Y21_N14
\debounceCountDown[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~3_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(3));

-- Location: MLABCELL_X84_Y21_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( debounceCountDown(4) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( debounceCountDown(4) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_debounceCountDown(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X84_Y21_N0
\debounceCountDown~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~4_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\Add0~17_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & \Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datab => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~4_combout\);

-- Location: FF_X84_Y21_N2
\debounceCountDown[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~4_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(4));

-- Location: MLABCELL_X84_Y21_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( debounceCountDown(5) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( debounceCountDown(5) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounceCountDown(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X84_Y21_N21
\debounceCountDown~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~5_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\Add0~21_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & \Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~5_combout\);

-- Location: FF_X84_Y21_N23
\debounceCountDown[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~5_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(5));

-- Location: MLABCELL_X84_Y21_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( debounceCountDown(6) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( debounceCountDown(6) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_debounceCountDown(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X84_Y21_N18
\debounceCountDown~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~6_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\Add0~25_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & \Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~6_combout\);

-- Location: FF_X84_Y21_N20
\debounceCountDown[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~6_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(6));

-- Location: MLABCELL_X84_Y21_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( debounceCountDown(7) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounceCountDown(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: MLABCELL_X84_Y21_N27
\debounceCountDown~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounceCountDown~7_combout\ = ( \Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & (\Add0~29_sumout\ & !\Equal0~0_combout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\MIDI_RX~input_o\ & \Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \debounceCountDown~7_combout\);

-- Location: FF_X84_Y21_N29
\debounceCountDown[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \debounceCountDown~7_combout\,
	ena => \ALT_INV_midiState.stateWaitingForSignal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounceCountDown(7));

-- Location: MLABCELL_X84_Y21_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!debounceCountDown(6) & !debounceCountDown(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_debounceCountDown(6),
	datad => ALT_INV_debounceCountDown(7),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X87_Y21_N21
\midiState~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \midiState~17_combout\ = ( bitNumber(0) & ( bitNumber(1) & ( (!\Equal2~0_combout\) # ((!\midiState~15_combout\) # (!\Equal2~1_combout\)) ) ) ) # ( !bitNumber(0) & ( bitNumber(1) ) ) # ( bitNumber(0) & ( !bitNumber(1) ) ) # ( !bitNumber(0) & ( 
-- !bitNumber(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_midiState~15_combout\,
	datad => \ALT_INV_Equal2~1_combout\,
	datae => ALT_INV_bitNumber(0),
	dataf => ALT_INV_bitNumber(1),
	combout => \midiState~17_combout\);

-- Location: MLABCELL_X87_Y21_N12
\Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = ( !\midiState.stateSignalAvailable~q\ & ( (\Equal0~1_combout\ & (\Equal0~0_combout\ & (!\MIDI_RX~input_o\ & (!\Selector2~1_combout\ & !\midiState.stateWaitingForSignal~q\)))) ) ) # ( \midiState.stateSignalAvailable~q\ & ( 
-- (((\midiState~17_combout\ & (!\Selector2~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000000000000000011110000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_midiState~17_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	datae => \ALT_INV_midiState.stateSignalAvailable~q\,
	dataf => \ALT_INV_midiState.stateWaitingForSignal~q\,
	datag => \ALT_INV_MIDI_RX~input_o\,
	combout => \Selector2~3_combout\);

-- Location: FF_X87_Y21_N14
\midiState.stateSignalAvailable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \midiState.stateSignalAvailable~q\);

-- Location: LABCELL_X85_Y21_N48
\midiCount[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \midiCount[10]~0_combout\ = ( \Equal2~0_combout\ & ( \midiState.stateWaitingForSignal~q\ & ( (\Equal2~1_combout\ & \midiState.stateSignalAvailable~q\) ) ) ) # ( \Equal2~0_combout\ & ( !\midiState.stateWaitingForSignal~q\ & ( (!\Equal2~1_combout\) # 
-- (!\midiState.stateSignalAvailable~q\) ) ) ) # ( !\Equal2~0_combout\ & ( !\midiState.stateWaitingForSignal~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_midiState.stateSignalAvailable~q\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_midiState.stateWaitingForSignal~q\,
	combout => \midiCount[10]~0_combout\);

-- Location: FF_X85_Y21_N2
\midiCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(0));

-- Location: LABCELL_X85_Y21_N3
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( midiCount(1) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( midiCount(1) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_midiCount(1),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X85_Y21_N5
\midiCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(1));

-- Location: LABCELL_X85_Y21_N6
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( midiCount(2) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( midiCount(2) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_midiCount(2),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X85_Y21_N8
\midiCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(2));

-- Location: LABCELL_X85_Y21_N9
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( midiCount(3) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( midiCount(3) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_midiCount(3),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X85_Y21_N11
\midiCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(3));

-- Location: LABCELL_X85_Y21_N12
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( midiCount(4) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( midiCount(4) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_midiCount(4),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X85_Y21_N14
\midiCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(4));

-- Location: LABCELL_X85_Y21_N15
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( midiCount(5) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~10\ = CARRY(( midiCount(5) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_midiCount(5),
	cin => \Add1~30\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X85_Y21_N17
\midiCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(5));

-- Location: FF_X85_Y21_N20
\midiCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \midiCount[10]~0_combout\,
	ena => \byteValue[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => midiCount(6));

-- Location: LABCELL_X85_Y21_N42
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( midiCount(9) & ( !midiCount(8) & ( (midiCount(6) & (!midiCount(3) & (!midiCount(7) & !midiCount(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_midiCount(6),
	datab => ALT_INV_midiCount(3),
	datac => ALT_INV_midiCount(7),
	datad => ALT_INV_midiCount(4),
	datae => ALT_INV_midiCount(9),
	dataf => ALT_INV_midiCount(8),
	combout => \Equal2~1_combout\);

-- Location: MLABCELL_X87_Y21_N48
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \isByteAvailable~reg0_q\ & ( \midiState.stateByteComplete~q\ ) ) # ( !\isByteAvailable~reg0_q\ & ( \midiState.stateByteComplete~q\ & ( (\Equal2~1_combout\ & \Equal2~0_combout\) ) ) ) # ( \isByteAvailable~reg0_q\ & ( 
-- !\midiState.stateByteComplete~q\ & ( \midiState.stateSignalAvailable~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datab => \ALT_INV_midiState.stateSignalAvailable~q\,
	datac => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_isByteAvailable~reg0_q\,
	dataf => \ALT_INV_midiState.stateByteComplete~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X87_Y21_N49
\isByteAvailable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isByteAvailable~reg0_q\);

-- Location: LABCELL_X88_Y21_N54
\midiState~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \midiState~14_combout\ = ( !bitNumber(3) & ( (!bitNumber(6) & (!bitNumber(4) & (!bitNumber(7) & !bitNumber(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bitNumber(6),
	datab => ALT_INV_bitNumber(4),
	datac => ALT_INV_bitNumber(7),
	datad => ALT_INV_bitNumber(5),
	dataf => ALT_INV_bitNumber(3),
	combout => \midiState~14_combout\);

-- Location: LABCELL_X88_Y21_N57
\byteValue~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~0_combout\ = ( !bitNumber(0) & ( (\midiState~14_combout\ & !bitNumber(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_midiState~14_combout\,
	datad => ALT_INV_bitNumber(2),
	dataf => ALT_INV_bitNumber(0),
	combout => \byteValue~0_combout\);

-- Location: MLABCELL_X87_Y21_N3
\byteValue~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~1_combout\ = ( \byteValue[0]~reg0_q\ & ( \MIDI_RX~input_o\ ) ) # ( !\byteValue[0]~reg0_q\ & ( \MIDI_RX~input_o\ & ( (!bitNumber(1) & (\byteValue~0_combout\ & \Equal2~2_combout\)) ) ) ) # ( \byteValue[0]~reg0_q\ & ( !\MIDI_RX~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bitNumber(1),
	datab => \ALT_INV_byteValue~0_combout\,
	datac => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_byteValue[0]~reg0_q\,
	dataf => \ALT_INV_MIDI_RX~input_o\,
	combout => \byteValue~1_combout\);

-- Location: MLABCELL_X84_Y21_N9
\byteValue[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue[0]~2_combout\ = ( \Equal0~1_combout\ & ( (!\midiState.stateByteComplete~q\ & (((!\MIDI_RX~input_o\ & \Equal0~0_combout\)) # (\midiState.stateWaitingForSignal~q\))) ) ) # ( !\Equal0~1_combout\ & ( (!\midiState.stateByteComplete~q\ & 
-- \midiState.stateWaitingForSignal~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000100000111100000010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MIDI_RX~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_midiState.stateByteComplete~q\,
	datad => \ALT_INV_midiState.stateWaitingForSignal~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \byteValue[0]~2_combout\);

-- Location: FF_X87_Y21_N4
\byteValue[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~1_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[0]~reg0_q\);

-- Location: LABCELL_X88_Y21_N6
\byteValue~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~3_combout\ = ( bitNumber(0) & ( (\midiState~14_combout\ & !bitNumber(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_midiState~14_combout\,
	datad => ALT_INV_bitNumber(2),
	dataf => ALT_INV_bitNumber(0),
	combout => \byteValue~3_combout\);

-- Location: LABCELL_X88_Y21_N0
\byteValue~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~4_combout\ = ( bitNumber(1) & ( \byteValue[1]~reg0_q\ ) ) # ( !bitNumber(1) & ( ((\Equal2~2_combout\ & (\byteValue~3_combout\ & \MIDI_RX~input_o\))) # (\byteValue[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \ALT_INV_byteValue~3_combout\,
	datac => \ALT_INV_MIDI_RX~input_o\,
	datad => \ALT_INV_byteValue[1]~reg0_q\,
	dataf => ALT_INV_bitNumber(1),
	combout => \byteValue~4_combout\);

-- Location: FF_X88_Y21_N1
\byteValue[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~4_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[1]~reg0_q\);

-- Location: LABCELL_X88_Y21_N9
\byteValue~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~5_combout\ = ( bitNumber(1) & ( ((\Equal2~2_combout\ & (\MIDI_RX~input_o\ & \byteValue~0_combout\))) # (\byteValue[2]~reg0_q\) ) ) # ( !bitNumber(1) & ( \byteValue[2]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_byteValue~0_combout\,
	datad => \ALT_INV_byteValue[2]~reg0_q\,
	dataf => ALT_INV_bitNumber(1),
	combout => \byteValue~5_combout\);

-- Location: FF_X88_Y21_N10
\byteValue[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~5_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[2]~reg0_q\);

-- Location: LABCELL_X88_Y21_N3
\byteValue~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~6_combout\ = ( bitNumber(1) & ( ((\Equal2~2_combout\ & (\byteValue~3_combout\ & \MIDI_RX~input_o\))) # (\byteValue[3]~reg0_q\) ) ) # ( !bitNumber(1) & ( \byteValue[3]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \ALT_INV_byteValue~3_combout\,
	datac => \ALT_INV_MIDI_RX~input_o\,
	datad => \ALT_INV_byteValue[3]~reg0_q\,
	dataf => ALT_INV_bitNumber(1),
	combout => \byteValue~6_combout\);

-- Location: FF_X88_Y21_N4
\byteValue[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~6_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[3]~reg0_q\);

-- Location: LABCELL_X88_Y21_N12
\byteValue~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~7_combout\ = ( !bitNumber(0) & ( \midiState~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_midiState~15_combout\,
	dataf => ALT_INV_bitNumber(0),
	combout => \byteValue~7_combout\);

-- Location: LABCELL_X88_Y21_N15
\byteValue~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~8_combout\ = ( bitNumber(1) & ( \byteValue[4]~reg0_q\ ) ) # ( !bitNumber(1) & ( ((\Equal2~2_combout\ & (\MIDI_RX~input_o\ & \byteValue~7_combout\))) # (\byteValue[4]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_byteValue~7_combout\,
	datad => \ALT_INV_byteValue[4]~reg0_q\,
	dataf => ALT_INV_bitNumber(1),
	combout => \byteValue~8_combout\);

-- Location: FF_X88_Y21_N16
\byteValue[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~8_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[4]~reg0_q\);

-- Location: MLABCELL_X87_Y21_N9
\midiState~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \midiState~16_combout\ = ( \midiState~15_combout\ & ( bitNumber(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bitNumber(0),
	dataf => \ALT_INV_midiState~15_combout\,
	combout => \midiState~16_combout\);

-- Location: LABCELL_X88_Y21_N21
\byteValue~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~9_combout\ = ( bitNumber(1) & ( \byteValue[5]~reg0_q\ ) ) # ( !bitNumber(1) & ( ((\Equal2~2_combout\ & (\MIDI_RX~input_o\ & \midiState~16_combout\))) # (\byteValue[5]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_midiState~16_combout\,
	datad => \ALT_INV_byteValue[5]~reg0_q\,
	dataf => ALT_INV_bitNumber(1),
	combout => \byteValue~9_combout\);

-- Location: FF_X88_Y21_N22
\byteValue[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~9_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[5]~reg0_q\);

-- Location: LABCELL_X88_Y21_N18
\byteValue~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~10_combout\ = ( bitNumber(1) & ( ((\Equal2~2_combout\ & (\MIDI_RX~input_o\ & \byteValue~7_combout\))) # (\byteValue[6]~reg0_q\) ) ) # ( !bitNumber(1) & ( \byteValue[6]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~2_combout\,
	datab => \ALT_INV_MIDI_RX~input_o\,
	datac => \ALT_INV_byteValue~7_combout\,
	datad => \ALT_INV_byteValue[6]~reg0_q\,
	dataf => ALT_INV_bitNumber(1),
	combout => \byteValue~10_combout\);

-- Location: FF_X88_Y21_N19
\byteValue[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~10_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[6]~reg0_q\);

-- Location: MLABCELL_X87_Y21_N6
\byteValue~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \byteValue~11_combout\ = ( bitNumber(1) & ( ((\midiState~16_combout\ & (\Equal2~2_combout\ & \MIDI_RX~input_o\))) # (\byteValue[7]~reg0_q\) ) ) # ( !bitNumber(1) & ( \byteValue[7]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_midiState~16_combout\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_MIDI_RX~input_o\,
	datad => \ALT_INV_byteValue[7]~reg0_q\,
	dataf => ALT_INV_bitNumber(1),
	combout => \byteValue~11_combout\);

-- Location: FF_X87_Y21_N7
\byteValue[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \byteValue~11_combout\,
	sclr => \ALT_INV_midiState.stateSignalAvailable~q\,
	ena => \byteValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byteValue[7]~reg0_q\);

-- Location: LABCELL_X17_Y51_N0
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


