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

-- DATE "04/29/2022 17:02:51"

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

ENTITY 	par2ser IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	data_in : IN std_logic_vector(23 DOWNTO 0);
	load : IN std_logic;
	data_out : BUFFER std_logic;
	busy : BUFFER std_logic;
	frame : BUFFER std_logic
	);
END par2ser;

-- Design Ports Information
-- data_out	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- frame	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[21]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[23]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[20]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[22]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[17]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[19]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[16]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[18]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF par2ser IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_data_in : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_data_out : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_frame : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \cnt[3]~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cnt[4]~0_combout\ : std_logic;
SIGNAL \cnt[0]~4_combout\ : std_logic;
SIGNAL \cnt[1]~3_combout\ : std_logic;
SIGNAL \cnt[2]~2_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \reg[13]~feeder_combout\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \reg[12]~feeder_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \reg[15]~feeder_combout\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \reg[7]~feeder_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \data_in[21]~input_o\ : std_logic;
SIGNAL \reg[21]~feeder_combout\ : std_logic;
SIGNAL \data_in[20]~input_o\ : std_logic;
SIGNAL \reg[20]~feeder_combout\ : std_logic;
SIGNAL \data_in[23]~input_o\ : std_logic;
SIGNAL \data_in[17]~input_o\ : std_logic;
SIGNAL \reg[17]~feeder_combout\ : std_logic;
SIGNAL \data_in[16]~input_o\ : std_logic;
SIGNAL \data_in[19]~input_o\ : std_logic;
SIGNAL \reg[19]~feeder_combout\ : std_logic;
SIGNAL \data_in[18]~input_o\ : std_logic;
SIGNAL \Mux0~21_combout\ : std_logic;
SIGNAL \data_in[22]~input_o\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \busy~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL frame_s : std_logic_vector(1 DOWNTO 0);
SIGNAL reg : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_data_in[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL ALT_INV_reg : std_logic_vector(23 DOWNTO 0);
SIGNAL ALT_INV_frame_s : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_data_in <= data_in;
ww_load <= load;
data_out <= ww_data_out;
busy <= ww_busy;
frame <= ww_frame;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data_in[19]~input_o\ <= NOT \data_in[19]~input_o\;
\ALT_INV_data_in[17]~input_o\ <= NOT \data_in[17]~input_o\;
\ALT_INV_data_in[20]~input_o\ <= NOT \data_in[20]~input_o\;
\ALT_INV_data_in[21]~input_o\ <= NOT \data_in[21]~input_o\;
\ALT_INV_data_in[12]~input_o\ <= NOT \data_in[12]~input_o\;
\ALT_INV_data_in[15]~input_o\ <= NOT \data_in[15]~input_o\;
\ALT_INV_data_in[13]~input_o\ <= NOT \data_in[13]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
ALT_INV_reg(18) <= NOT reg(18);
ALT_INV_reg(16) <= NOT reg(16);
ALT_INV_reg(19) <= NOT reg(19);
ALT_INV_reg(17) <= NOT reg(17);
ALT_INV_reg(10) <= NOT reg(10);
ALT_INV_reg(8) <= NOT reg(8);
ALT_INV_reg(11) <= NOT reg(11);
ALT_INV_reg(9) <= NOT reg(9);
ALT_INV_reg(2) <= NOT reg(2);
ALT_INV_reg(0) <= NOT reg(0);
ALT_INV_reg(3) <= NOT reg(3);
ALT_INV_reg(1) <= NOT reg(1);
ALT_INV_reg(22) <= NOT reg(22);
ALT_INV_reg(20) <= NOT reg(20);
ALT_INV_reg(23) <= NOT reg(23);
ALT_INV_reg(21) <= NOT reg(21);
ALT_INV_reg(14) <= NOT reg(14);
ALT_INV_reg(12) <= NOT reg(12);
ALT_INV_reg(15) <= NOT reg(15);
ALT_INV_reg(13) <= NOT reg(13);
ALT_INV_reg(6) <= NOT reg(6);
ALT_INV_reg(4) <= NOT reg(4);
ALT_INV_reg(7) <= NOT reg(7);
ALT_INV_reg(5) <= NOT reg(5);
ALT_INV_frame_s(1) <= NOT frame_s(1);
ALT_INV_cnt(0) <= NOT cnt(0);
ALT_INV_cnt(1) <= NOT cnt(1);
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_cnt(3) <= NOT cnt(3);
ALT_INV_cnt(4) <= NOT cnt(4);
\ALT_INV_Mux0~21_combout\ <= NOT \Mux0~21_combout\;
\ALT_INV_Mux0~17_combout\ <= NOT \Mux0~17_combout\;
\ALT_INV_Mux0~13_combout\ <= NOT \Mux0~13_combout\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X72_Y0_N2
\data_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~12_combout\,
	devoe => ww_devoe,
	o => ww_data_out);

-- Location: IOOBUF_X74_Y0_N93
\busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \busy~0_combout\,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X70_Y0_N53
\frame~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_frame);

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X74_Y0_N58
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LABCELL_X74_Y3_N6
\cnt[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[3]~1_combout\ = ( cnt(3) & ( cnt(1) & ( (!cnt(2)) # ((!cnt(0)) # ((\load~input_o\) # (cnt(4)))) ) ) ) # ( !cnt(3) & ( cnt(1) & ( ((cnt(2) & cnt(0))) # (\load~input_o\) ) ) ) # ( cnt(3) & ( !cnt(1) ) ) # ( !cnt(3) & ( !cnt(1) & ( \load~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100010001111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_cnt(0),
	datac => ALT_INV_cnt(4),
	datad => \ALT_INV_load~input_o\,
	datae => ALT_INV_cnt(3),
	dataf => ALT_INV_cnt(1),
	combout => \cnt[3]~1_combout\);

-- Location: IOIBUF_X74_Y0_N75
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X74_Y3_N8
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[3]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LABCELL_X74_Y3_N36
\cnt[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[4]~0_combout\ = ( cnt(4) & ( cnt(3) & ( !\load~input_o\ ) ) ) # ( !cnt(4) & ( cnt(3) & ( (cnt(1) & (!\load~input_o\ & (cnt(2) & cnt(0)))) ) ) ) # ( cnt(4) & ( !cnt(3) & ( !\load~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(1),
	datab => \ALT_INV_load~input_o\,
	datac => ALT_INV_cnt(2),
	datad => ALT_INV_cnt(0),
	datae => ALT_INV_cnt(4),
	dataf => ALT_INV_cnt(3),
	combout => \cnt[4]~0_combout\);

-- Location: FF_X74_Y3_N38
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[4]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LABCELL_X74_Y3_N12
\cnt[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[0]~4_combout\ = ( cnt(0) & ( cnt(1) & ( (cnt(2) & (!\load~input_o\ & (cnt(4) & cnt(3)))) ) ) ) # ( !cnt(0) & ( cnt(1) & ( !\load~input_o\ ) ) ) # ( !cnt(0) & ( !cnt(1) & ( !\load~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => \ALT_INV_load~input_o\,
	datac => ALT_INV_cnt(4),
	datad => ALT_INV_cnt(3),
	datae => ALT_INV_cnt(0),
	dataf => ALT_INV_cnt(1),
	combout => \cnt[0]~4_combout\);

-- Location: FF_X74_Y3_N14
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[0]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LABCELL_X74_Y3_N24
\cnt[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[1]~3_combout\ = ( cnt(1) & ( cnt(3) & ( (!\load~input_o\ & ((!cnt(0)) # ((cnt(2) & cnt(4))))) ) ) ) # ( !cnt(1) & ( cnt(3) & ( (cnt(0) & !\load~input_o\) ) ) ) # ( cnt(1) & ( !cnt(3) & ( (!cnt(0) & !\load~input_o\) ) ) ) # ( !cnt(1) & ( !cnt(3) & ( 
-- (cnt(0) & !\load~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000110011000000000000110011000000001100110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_cnt(0),
	datac => ALT_INV_cnt(4),
	datad => \ALT_INV_load~input_o\,
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(3),
	combout => \cnt[1]~3_combout\);

-- Location: FF_X74_Y3_N26
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[1]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LABCELL_X74_Y3_N0
\cnt[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt[2]~2_combout\ = ( cnt(2) & ( cnt(3) & ( (!\load~input_o\ & ((!cnt(1)) # ((!cnt(0)) # (cnt(4))))) ) ) ) # ( !cnt(2) & ( cnt(3) & ( (cnt(1) & (!\load~input_o\ & cnt(0))) ) ) ) # ( cnt(2) & ( !cnt(3) & ( (!\load~input_o\ & ((!cnt(1)) # (!cnt(0)))) ) ) ) 
-- # ( !cnt(2) & ( !cnt(3) & ( (cnt(1) & (!\load~input_o\ & cnt(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110011001000100000000000010001001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(1),
	datab => \ALT_INV_load~input_o\,
	datac => ALT_INV_cnt(4),
	datad => ALT_INV_cnt(0),
	datae => ALT_INV_cnt(2),
	dataf => ALT_INV_cnt(3),
	combout => \cnt[2]~2_combout\);

-- Location: FF_X74_Y3_N2
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: IOIBUF_X78_Y0_N52
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LABCELL_X75_Y3_N51
\reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[13]~feeder_combout\ = \data_in[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[13]~input_o\,
	combout => \reg[13]~feeder_combout\);

-- Location: FF_X75_Y3_N52
\reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(13));

-- Location: IOIBUF_X78_Y0_N1
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: LABCELL_X75_Y3_N48
\reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[12]~feeder_combout\ = ( \data_in[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[12]~input_o\,
	combout => \reg[12]~feeder_combout\);

-- Location: FF_X75_Y3_N50
\reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(12));

-- Location: IOIBUF_X68_Y0_N52
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: FF_X74_Y3_N52
\reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[9]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(9));

-- Location: IOIBUF_X76_Y0_N18
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: FF_X75_Y3_N23
\reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(8));

-- Location: IOIBUF_X68_Y0_N18
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: FF_X74_Y3_N34
\reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[11]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(11));

-- Location: IOIBUF_X74_Y0_N41
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: FF_X74_Y3_N19
\reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[10]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(10));

-- Location: LABCELL_X74_Y3_N18
\Mux0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = ( !cnt(1) & ( (!cnt(2) & ((((!cnt(0)))))) # (cnt(2) & (((!cnt(0) & ((reg(11)))) # (cnt(0) & (reg(10)))))) ) ) # ( cnt(1) & ( (!cnt(2) & ((((!cnt(0)))))) # (cnt(2) & (((!cnt(0) & (reg(9))) # (cnt(0) & ((reg(8))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101011111111101110111011101100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_reg(9),
	datac => ALT_INV_reg(8),
	datad => ALT_INV_reg(11),
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(0),
	datag => ALT_INV_reg(10),
	combout => \Mux0~17_combout\);

-- Location: IOIBUF_X78_Y0_N18
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: LABCELL_X75_Y3_N18
\reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[15]~feeder_combout\ = ( \data_in[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[15]~input_o\,
	combout => \reg[15]~feeder_combout\);

-- Location: FF_X75_Y3_N20
\reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(15));

-- Location: IOIBUF_X80_Y0_N52
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: FF_X75_Y3_N31
\reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[14]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(14));

-- Location: LABCELL_X75_Y3_N30
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !cnt(1) & ( (!cnt(2) & (((!\Mux0~17_combout\ & (reg(14))) # (\Mux0~17_combout\ & ((reg(15))))))) # (cnt(2) & ((((\Mux0~17_combout\))))) ) ) # ( cnt(1) & ( (!cnt(2) & ((!\Mux0~17_combout\ & (((reg(12))))) # (\Mux0~17_combout\ & 
-- (reg(13))))) # (cnt(2) & ((((\Mux0~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101000010100111011100001010111111110000101001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_reg(13),
	datac => ALT_INV_reg(12),
	datad => \ALT_INV_Mux0~17_combout\,
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_reg(15),
	datag => ALT_INV_reg(14),
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X68_Y0_N1
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X74_Y3_N32
\reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(3));

-- Location: IOIBUF_X76_Y0_N52
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X75_Y3_N53
\reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(0));

-- Location: IOIBUF_X76_Y0_N35
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X75_Y3_N49
\reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(1));

-- Location: IOIBUF_X68_Y0_N35
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X74_Y3_N44
\reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(2));

-- Location: LABCELL_X74_Y3_N42
\Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = ( !cnt(1) & ( (!cnt(2) & ((((!cnt(0)))))) # (cnt(2) & (((!cnt(0) & (reg(3))) # (cnt(0) & ((reg(2))))))) ) ) # ( cnt(1) & ( (!cnt(2) & ((((!cnt(0)))))) # (cnt(2) & (((!cnt(0) & ((reg(1)))) # (cnt(0) & (reg(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011101110111011101010101111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_reg(3),
	datac => ALT_INV_reg(0),
	datad => ALT_INV_reg(1),
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(0),
	datag => ALT_INV_reg(2),
	combout => \Mux0~13_combout\);

-- Location: IOIBUF_X70_Y0_N35
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X75_Y3_N14
\reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(5));

-- Location: IOIBUF_X76_Y0_N1
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X75_Y3_N17
\reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(4));

-- Location: IOIBUF_X70_Y0_N1
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LABCELL_X75_Y3_N21
\reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[7]~feeder_combout\ = ( \data_in[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[7]~input_o\,
	combout => \reg[7]~feeder_combout\);

-- Location: FF_X75_Y3_N22
\reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(7));

-- Location: IOIBUF_X78_Y0_N35
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: FF_X75_Y3_N1
\reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(6));

-- Location: LABCELL_X75_Y3_N0
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !cnt(1) & ( (!\Mux0~13_combout\ & (((reg(6) & ((!cnt(2))))))) # (\Mux0~13_combout\ & ((((cnt(2)) # (reg(7)))))) ) ) # ( cnt(1) & ( (!\Mux0~13_combout\ & (((reg(4) & ((!cnt(2))))))) # (\Mux0~13_combout\ & ((((cnt(2)))) # (reg(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~13_combout\,
	datab => ALT_INV_reg(5),
	datac => ALT_INV_reg(4),
	datad => ALT_INV_reg(7),
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(2),
	datag => ALT_INV_reg(6),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\data_in[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(21),
	o => \data_in[21]~input_o\);

-- Location: LABCELL_X75_Y3_N57
\reg[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[21]~feeder_combout\ = ( \data_in[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[21]~input_o\,
	combout => \reg[21]~feeder_combout\);

-- Location: FF_X75_Y3_N59
\reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[21]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(21));

-- Location: IOIBUF_X80_Y0_N35
\data_in[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(20),
	o => \data_in[20]~input_o\);

-- Location: LABCELL_X75_Y3_N54
\reg[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[20]~feeder_combout\ = ( \data_in[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[20]~input_o\,
	combout => \reg[20]~feeder_combout\);

-- Location: FF_X75_Y3_N56
\reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[20]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(20));

-- Location: IOIBUF_X72_Y0_N52
\data_in[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(23),
	o => \data_in[23]~input_o\);

-- Location: FF_X75_Y3_N41
\reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[23]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(23));

-- Location: IOIBUF_X72_Y0_N35
\data_in[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(17),
	o => \data_in[17]~input_o\);

-- Location: LABCELL_X75_Y3_N42
\reg[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[17]~feeder_combout\ = ( \data_in[17]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[17]~input_o\,
	combout => \reg[17]~feeder_combout\);

-- Location: FF_X75_Y3_N44
\reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[17]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(17));

-- Location: IOIBUF_X82_Y0_N41
\data_in[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(16),
	o => \data_in[16]~input_o\);

-- Location: FF_X75_Y3_N38
\reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[16]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(16));

-- Location: IOIBUF_X70_Y0_N18
\data_in[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(19),
	o => \data_in[19]~input_o\);

-- Location: LABCELL_X75_Y3_N45
\reg[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg[19]~feeder_combout\ = ( \data_in[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data_in[19]~input_o\,
	combout => \reg[19]~feeder_combout\);

-- Location: FF_X75_Y3_N47
\reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(19));

-- Location: IOIBUF_X80_Y0_N1
\data_in[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(18),
	o => \data_in[18]~input_o\);

-- Location: FF_X75_Y3_N7
\reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[18]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(18));

-- Location: LABCELL_X75_Y3_N6
\Mux0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~21_combout\ = ( !cnt(1) & ( (!cnt(0) & ((((!cnt(2)) # (reg(19)))))) # (cnt(0) & (((reg(18) & ((cnt(2))))))) ) ) # ( cnt(1) & ( (!cnt(0) & ((((!cnt(2)))) # (reg(17)))) # (cnt(0) & (((reg(16) & ((cnt(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101010101010101010101010101000000101101011110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(0),
	datab => ALT_INV_reg(17),
	datac => ALT_INV_reg(16),
	datad => ALT_INV_reg(19),
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(2),
	datag => ALT_INV_reg(18),
	combout => \Mux0~21_combout\);

-- Location: IOIBUF_X80_Y0_N18
\data_in[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(22),
	o => \data_in[22]~input_o\);

-- Location: FF_X75_Y3_N25
\reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[22]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(22));

-- Location: LABCELL_X75_Y3_N24
\Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = ( !cnt(1) & ( (!cnt(2) & (((!\Mux0~21_combout\ & (reg(22))) # (\Mux0~21_combout\ & ((reg(23))))))) # (cnt(2) & ((((\Mux0~21_combout\))))) ) ) # ( cnt(1) & ( (!cnt(2) & (((!\Mux0~21_combout\ & ((reg(20)))) # (\Mux0~21_combout\ & 
-- (reg(21)))))) # (cnt(2) & ((((\Mux0~21_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001010101111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_reg(21),
	datac => ALT_INV_reg(20),
	datad => ALT_INV_reg(23),
	datae => ALT_INV_cnt(1),
	dataf => \ALT_INV_Mux0~21_combout\,
	datag => ALT_INV_reg(22),
	combout => \Mux0~8_combout\);

-- Location: LABCELL_X75_Y3_N12
\Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = ( \Mux0~0_combout\ & ( \Mux0~8_combout\ & ( ((\Mux0~4_combout\ & cnt(4))) # (cnt(3)) ) ) ) # ( !\Mux0~0_combout\ & ( \Mux0~8_combout\ & ( (!cnt(3) & (\Mux0~4_combout\ & cnt(4))) # (cnt(3) & ((!cnt(4)))) ) ) ) # ( \Mux0~0_combout\ & ( 
-- !\Mux0~8_combout\ & ( (cnt(4) & ((cnt(3)) # (\Mux0~4_combout\))) ) ) ) # ( !\Mux0~0_combout\ & ( !\Mux0~8_combout\ & ( (\Mux0~4_combout\ & (!cnt(3) & cnt(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011111100001111001100000000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux0~4_combout\,
	datac => ALT_INV_cnt(3),
	datad => ALT_INV_cnt(4),
	datae => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Mux0~8_combout\,
	combout => \Mux0~12_combout\);

-- Location: LABCELL_X74_Y3_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( cnt(2) & ( cnt(1) & ( (!cnt(0)) # ((!cnt(4)) # (!cnt(3))) ) ) ) # ( !cnt(2) & ( cnt(1) ) ) # ( cnt(2) & ( !cnt(1) ) ) # ( !cnt(2) & ( !cnt(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(0),
	datac => ALT_INV_cnt(4),
	datad => ALT_INV_cnt(3),
	datae => ALT_INV_cnt(2),
	dataf => ALT_INV_cnt(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X74_Y3_N55
\frame_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Equal0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => frame_s(1));

-- Location: LABCELL_X74_Y3_N48
\busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \busy~0_combout\ = ( cnt(1) & ( cnt(0) & ( (!cnt(2)) # (((!cnt(4)) # (!cnt(3))) # (frame_s(1))) ) ) ) # ( !cnt(1) & ( cnt(0) ) ) # ( cnt(1) & ( !cnt(0) ) ) # ( !cnt(1) & ( !cnt(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_frame_s(1),
	datac => ALT_INV_cnt(4),
	datad => ALT_INV_cnt(3),
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(0),
	combout => \busy~0_combout\);

-- Location: LABCELL_X74_Y3_N30
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( cnt(1) & ( cnt(0) & ( (cnt(2) & (frame_s(1) & (cnt(4) & cnt(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(2),
	datab => ALT_INV_frame_s(1),
	datac => ALT_INV_cnt(4),
	datad => ALT_INV_cnt(3),
	datae => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(0),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X33_Y54_N3
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


