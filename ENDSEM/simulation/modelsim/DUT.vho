-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/24/2021 13:01:33"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	timer_controller IS
    PORT (
	inp_switch : IN std_logic_vector(2 DOWNTO 0);
	reset : IN std_logic;
	clock_50 : IN std_logic;
	clock_1 : IN std_logic;
	out_LED : OUT std_logic_vector(3 DOWNTO 0)
	);
END timer_controller;

-- Design Ports Information


ARCHITECTURE structure OF timer_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp_switch : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_1 : std_logic;
SIGNAL ww_out_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \Tm|Add0~110\ : std_logic;
SIGNAL \Tm|Add1~115\ : std_logic;
SIGNAL \Tm|Add2~110\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \y_present.RST~regout\ : std_logic;
SIGNAL \y_present.timer1~regout\ : std_logic;
SIGNAL \y_present.timer2~regout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \y_present.timer3~regout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \out_sig[0]~0_combout\ : std_logic;
SIGNAL \Tm|Equal1~5_combout\ : std_logic;
SIGNAL \Tm|Add0~112_cout\ : std_logic;
SIGNAL \Tm|Add0~0_combout\ : std_logic;
SIGNAL \Tm|timer1[2]~25_combout\ : std_logic;
SIGNAL \Tm|Add0~2\ : std_logic;
SIGNAL \Tm|Add0~2COUT1_116\ : std_logic;
SIGNAL \Tm|Add0~25_combout\ : std_logic;
SIGNAL \Tm|Add0~27\ : std_logic;
SIGNAL \Tm|Add0~27COUT1_117\ : std_logic;
SIGNAL \Tm|Add0~30_combout\ : std_logic;
SIGNAL \Tm|Add0~32\ : std_logic;
SIGNAL \Tm|Add0~32COUT1_118\ : std_logic;
SIGNAL \Tm|Add0~10_combout\ : std_logic;
SIGNAL \Tm|Add0~12\ : std_logic;
SIGNAL \Tm|Add0~12COUT1_119\ : std_logic;
SIGNAL \Tm|Add0~15_combout\ : std_logic;
SIGNAL \Tm|Add0~17\ : std_logic;
SIGNAL \Tm|Add0~20_combout\ : std_logic;
SIGNAL \Tm|Add0~22\ : std_logic;
SIGNAL \Tm|Add0~22COUT1_120\ : std_logic;
SIGNAL \Tm|Add0~5_combout\ : std_logic;
SIGNAL \Tm|Add0~7\ : std_logic;
SIGNAL \Tm|Add0~7COUT1_121\ : std_logic;
SIGNAL \Tm|Add0~40_combout\ : std_logic;
SIGNAL \Tm|Add0~42\ : std_logic;
SIGNAL \Tm|Add0~42COUT1_122\ : std_logic;
SIGNAL \Tm|Add0~35_combout\ : std_logic;
SIGNAL \Tm|Add0~37\ : std_logic;
SIGNAL \Tm|Add0~37COUT1_123\ : std_logic;
SIGNAL \Tm|Add0~45_combout\ : std_logic;
SIGNAL \Tm|Add0~47\ : std_logic;
SIGNAL \Tm|Add0~50_combout\ : std_logic;
SIGNAL \Tm|Add0~52\ : std_logic;
SIGNAL \Tm|Add0~52COUT1_124\ : std_logic;
SIGNAL \Tm|Add0~55_combout\ : std_logic;
SIGNAL \Tm|Add0~57\ : std_logic;
SIGNAL \Tm|Add0~57COUT1_125\ : std_logic;
SIGNAL \Tm|Add0~60_combout\ : std_logic;
SIGNAL \Tm|Add0~62\ : std_logic;
SIGNAL \Tm|Add0~62COUT1_126\ : std_logic;
SIGNAL \Tm|Add0~65_combout\ : std_logic;
SIGNAL \Tm|Add0~67\ : std_logic;
SIGNAL \Tm|Add0~67COUT1_127\ : std_logic;
SIGNAL \Tm|Add0~70_combout\ : std_logic;
SIGNAL \Tm|Equal2~4_combout\ : std_logic;
SIGNAL \Tm|Equal2~0_combout\ : std_logic;
SIGNAL \Tm|Equal2~1_combout\ : std_logic;
SIGNAL \Tm|Equal2~2_combout\ : std_logic;
SIGNAL \Tm|Equal2~3_combout\ : std_logic;
SIGNAL \Tm|Add0~72\ : std_logic;
SIGNAL \Tm|Add0~80_combout\ : std_logic;
SIGNAL \Tm|Add0~82\ : std_logic;
SIGNAL \Tm|Add0~82COUT1_128\ : std_logic;
SIGNAL \Tm|Add0~85_combout\ : std_logic;
SIGNAL \Tm|Add0~87\ : std_logic;
SIGNAL \Tm|Add0~87COUT1_129\ : std_logic;
SIGNAL \Tm|Add0~75_combout\ : std_logic;
SIGNAL \Tm|Add0~77\ : std_logic;
SIGNAL \Tm|Add0~77COUT1_130\ : std_logic;
SIGNAL \Tm|Add0~90_combout\ : std_logic;
SIGNAL \Tm|Add0~92\ : std_logic;
SIGNAL \Tm|Add0~92COUT1_131\ : std_logic;
SIGNAL \Tm|Add0~100_combout\ : std_logic;
SIGNAL \Tm|Add0~102\ : std_logic;
SIGNAL \Tm|Add0~95_combout\ : std_logic;
SIGNAL \Tm|Add0~97\ : std_logic;
SIGNAL \Tm|Add0~97COUT1_132\ : std_logic;
SIGNAL \Tm|Add0~105_combout\ : std_logic;
SIGNAL \Tm|Equal2~5_combout\ : std_logic;
SIGNAL \Tm|Equal2~6_combout\ : std_logic;
SIGNAL \Tm|Equal2~7_combout\ : std_logic;
SIGNAL \out_sig[1]~1_combout\ : std_logic;
SIGNAL \Tm|LED~0_combout\ : std_logic;
SIGNAL \Tm|Equal1~6_combout\ : std_logic;
SIGNAL \Tm|Add1~117_cout0\ : std_logic;
SIGNAL \Tm|Add1~117COUT1_121\ : std_logic;
SIGNAL \Tm|Add1~0_combout\ : std_logic;
SIGNAL \Tm|timer2[15]~26_combout\ : std_logic;
SIGNAL \Tm|Add1~2\ : std_logic;
SIGNAL \Tm|Add1~5_combout\ : std_logic;
SIGNAL \Tm|Add1~7\ : std_logic;
SIGNAL \Tm|Add1~7COUT1_122\ : std_logic;
SIGNAL \Tm|Add1~10_combout\ : std_logic;
SIGNAL \Tm|Add1~12\ : std_logic;
SIGNAL \Tm|Add1~12COUT1_123\ : std_logic;
SIGNAL \Tm|Add1~20_combout\ : std_logic;
SIGNAL \Tm|Add1~22\ : std_logic;
SIGNAL \Tm|Add1~22COUT1_124\ : std_logic;
SIGNAL \Tm|Add1~25_combout\ : std_logic;
SIGNAL \Tm|Add1~27\ : std_logic;
SIGNAL \Tm|Add1~27COUT1_125\ : std_logic;
SIGNAL \Tm|Add1~30_combout\ : std_logic;
SIGNAL \Tm|Add1~32\ : std_logic;
SIGNAL \Tm|Add1~15_combout\ : std_logic;
SIGNAL \Tm|Add1~17\ : std_logic;
SIGNAL \Tm|Add1~17COUT1_126\ : std_logic;
SIGNAL \Tm|Add1~35_combout\ : std_logic;
SIGNAL \Tm|Add1~37\ : std_logic;
SIGNAL \Tm|Add1~37COUT1_127\ : std_logic;
SIGNAL \Tm|Add1~45_combout\ : std_logic;
SIGNAL \Tm|Add1~47\ : std_logic;
SIGNAL \Tm|Add1~47COUT1_128\ : std_logic;
SIGNAL \Tm|Add1~50_combout\ : std_logic;
SIGNAL \Tm|Add1~52\ : std_logic;
SIGNAL \Tm|Add1~52COUT1_129\ : std_logic;
SIGNAL \Tm|Add1~40_combout\ : std_logic;
SIGNAL \Tm|Add1~42\ : std_logic;
SIGNAL \Tm|Add1~65_combout\ : std_logic;
SIGNAL \Tm|Add1~67\ : std_logic;
SIGNAL \Tm|Add1~67COUT1_130\ : std_logic;
SIGNAL \Tm|Add1~55_combout\ : std_logic;
SIGNAL \Tm|Add1~57\ : std_logic;
SIGNAL \Tm|Add1~57COUT1_131\ : std_logic;
SIGNAL \Tm|Add1~60_combout\ : std_logic;
SIGNAL \Tm|Add1~62\ : std_logic;
SIGNAL \Tm|Add1~62COUT1_132\ : std_logic;
SIGNAL \Tm|Add1~70_combout\ : std_logic;
SIGNAL \Tm|Add1~72\ : std_logic;
SIGNAL \Tm|Add1~72COUT1_133\ : std_logic;
SIGNAL \Tm|Add1~75_combout\ : std_logic;
SIGNAL \Tm|Add1~77\ : std_logic;
SIGNAL \Tm|Add1~80_combout\ : std_logic;
SIGNAL \Tm|Add1~82\ : std_logic;
SIGNAL \Tm|Add1~82COUT1_134\ : std_logic;
SIGNAL \Tm|Add1~85_combout\ : std_logic;
SIGNAL \Tm|Add1~87\ : std_logic;
SIGNAL \Tm|Add1~87COUT1_135\ : std_logic;
SIGNAL \Tm|Add1~90_combout\ : std_logic;
SIGNAL \Tm|Equal4~5_combout\ : std_logic;
SIGNAL \Tm|Add1~92\ : std_logic;
SIGNAL \Tm|Add1~92COUT1_136\ : std_logic;
SIGNAL \Tm|Add1~105_combout\ : std_logic;
SIGNAL \Tm|Add1~107\ : std_logic;
SIGNAL \Tm|Add1~107COUT1_137\ : std_logic;
SIGNAL \Tm|Add1~95_combout\ : std_logic;
SIGNAL \Tm|Add1~97\ : std_logic;
SIGNAL \Tm|Add1~100_combout\ : std_logic;
SIGNAL \Tm|Add1~102\ : std_logic;
SIGNAL \Tm|Add1~102COUT1_138\ : std_logic;
SIGNAL \Tm|Add1~110_combout\ : std_logic;
SIGNAL \Tm|Equal4~6_combout\ : std_logic;
SIGNAL \Tm|Equal4~3_combout\ : std_logic;
SIGNAL \Tm|Equal4~2_combout\ : std_logic;
SIGNAL \Tm|Equal4~0_combout\ : std_logic;
SIGNAL \Tm|Equal4~1_combout\ : std_logic;
SIGNAL \Tm|Equal4~4_combout\ : std_logic;
SIGNAL \Tm|Equal4~7_combout\ : std_logic;
SIGNAL \Tm|LED~1_combout\ : std_logic;
SIGNAL \Tm|Equal1~4_combout\ : std_logic;
SIGNAL \Tm|Add2~112_cout\ : std_logic;
SIGNAL \Tm|Add2~0_combout\ : std_logic;
SIGNAL \Tm|timer3[8]~2_combout\ : std_logic;
SIGNAL \Tm|Add2~2\ : std_logic;
SIGNAL \Tm|Add2~2COUT1_116\ : std_logic;
SIGNAL \Tm|Add2~25_combout\ : std_logic;
SIGNAL \Tm|Add2~27\ : std_logic;
SIGNAL \Tm|Add2~27COUT1_117\ : std_logic;
SIGNAL \Tm|Add2~30_combout\ : std_logic;
SIGNAL \Tm|Add2~32\ : std_logic;
SIGNAL \Tm|Add2~32COUT1_118\ : std_logic;
SIGNAL \Tm|Add2~15_combout\ : std_logic;
SIGNAL \Tm|Add2~17\ : std_logic;
SIGNAL \Tm|Add2~17COUT1_119\ : std_logic;
SIGNAL \Tm|Add2~20_combout\ : std_logic;
SIGNAL \Tm|Add2~22\ : std_logic;
SIGNAL \Tm|Add2~5_combout\ : std_logic;
SIGNAL \Tm|Add2~7\ : std_logic;
SIGNAL \Tm|Add2~7COUT1_120\ : std_logic;
SIGNAL \Tm|Add2~10_combout\ : std_logic;
SIGNAL \Tm|Add2~12\ : std_logic;
SIGNAL \Tm|Add2~12COUT1_121\ : std_logic;
SIGNAL \Tm|Add2~40_combout\ : std_logic;
SIGNAL \Tm|Add2~42\ : std_logic;
SIGNAL \Tm|Add2~42COUT1_122\ : std_logic;
SIGNAL \Tm|Add2~45_combout\ : std_logic;
SIGNAL \Tm|Add2~47\ : std_logic;
SIGNAL \Tm|Add2~47COUT1_123\ : std_logic;
SIGNAL \Tm|Add2~35_combout\ : std_logic;
SIGNAL \Tm|Add2~37\ : std_logic;
SIGNAL \Tm|Add2~50_combout\ : std_logic;
SIGNAL \Tm|Add2~52\ : std_logic;
SIGNAL \Tm|Add2~52COUT1_124\ : std_logic;
SIGNAL \Tm|Add2~55_combout\ : std_logic;
SIGNAL \Tm|Add2~57\ : std_logic;
SIGNAL \Tm|Add2~57COUT1_125\ : std_logic;
SIGNAL \Tm|Add2~60_combout\ : std_logic;
SIGNAL \Tm|Add2~62\ : std_logic;
SIGNAL \Tm|Add2~62COUT1_126\ : std_logic;
SIGNAL \Tm|Add2~70_combout\ : std_logic;
SIGNAL \Tm|Add2~72\ : std_logic;
SIGNAL \Tm|Add2~72COUT1_127\ : std_logic;
SIGNAL \Tm|Add2~65_combout\ : std_logic;
SIGNAL \Tm|Equal6~4_combout\ : std_logic;
SIGNAL \Tm|Equal6~3_combout\ : std_logic;
SIGNAL \Tm|Add2~67\ : std_logic;
SIGNAL \Tm|Add2~75_combout\ : std_logic;
SIGNAL \Tm|Add2~77\ : std_logic;
SIGNAL \Tm|Add2~77COUT1_128\ : std_logic;
SIGNAL \Tm|Add2~80_combout\ : std_logic;
SIGNAL \Tm|Add2~82\ : std_logic;
SIGNAL \Tm|Add2~82COUT1_129\ : std_logic;
SIGNAL \Tm|Add2~85_combout\ : std_logic;
SIGNAL \Tm|Add2~87\ : std_logic;
SIGNAL \Tm|Add2~87COUT1_130\ : std_logic;
SIGNAL \Tm|Add2~90_combout\ : std_logic;
SIGNAL \Tm|Add2~92\ : std_logic;
SIGNAL \Tm|Add2~92COUT1_131\ : std_logic;
SIGNAL \Tm|Add2~95_combout\ : std_logic;
SIGNAL \Tm|Add2~97\ : std_logic;
SIGNAL \Tm|Add2~100_combout\ : std_logic;
SIGNAL \Tm|Add2~102\ : std_logic;
SIGNAL \Tm|Add2~102COUT1_132\ : std_logic;
SIGNAL \Tm|Add2~105_combout\ : std_logic;
SIGNAL \Tm|Equal6~5_combout\ : std_logic;
SIGNAL \Tm|Equal6~6_combout\ : std_logic;
SIGNAL \Tm|Equal6~0_combout\ : std_logic;
SIGNAL \Tm|Equal6~1_combout\ : std_logic;
SIGNAL \Tm|Equal6~2_combout\ : std_logic;
SIGNAL \Tm|Equal6~7_combout\ : std_logic;
SIGNAL \Tm|LED~2_combout\ : std_logic;
SIGNAL \Tm|LED~3_combout\ : std_logic;
SIGNAL \Tm|LED\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Tm|timer1\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Tm|timer2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inp_switch~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Tm|timer3\ : std_logic_vector(22 DOWNTO 0);

BEGIN

ww_inp_switch <= inp_switch;
ww_reset <= reset;
ww_clock_50 <= clock_50;
ww_clock_1 <= clock_1;
out_LED <= ww_out_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(0),
	combout => \inp_switch~combout\(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(1),
	combout => \inp_switch~combout\(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(2),
	combout => \inp_switch~combout\(2));

-- Location: LC_X3_Y7_N5
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (!\inp_switch~combout\(0) & (\inp_switch~combout\(1) & (!\inp_switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(1),
	datac => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X2_Y7_N2
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (!\inp_switch~combout\(0) & (\inp_switch~combout\(2) & (!\inp_switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(2),
	datac => \inp_switch~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X3_Y7_N7
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (\inp_switch~combout\(0) & (!\inp_switch~combout\(1) & (!\inp_switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(1),
	datac => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X3_Y7_N9
\y_present.RST\ : maxv_lcell
-- Equation(s):
-- \y_present.RST~regout\ = DFFEAS((!\reset~combout\ & ((\y_present.RST~regout\) # ((\Equal0~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5454",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \y_present.RST~regout\,
	datac => \Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.RST~regout\);

-- Location: LC_X4_Y7_N4
\y_present.timer1\ : maxv_lcell
-- Equation(s):
-- \y_present.timer1~regout\ = DFFEAS((\y_present.RST~regout\ & (((\y_present.timer1~regout\ & !\Equal1~0_combout\)))) # (!\y_present.RST~regout\ & ((\Equal0~0_combout\) # ((\y_present.timer1~regout\ & !\Equal1~0_combout\)))), GLOBAL(\clock_50~combout\), 
-- VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \y_present.RST~regout\,
	datab => \Equal0~0_combout\,
	datac => \y_present.timer1~regout\,
	datad => \Equal1~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.timer1~regout\);

-- Location: LC_X4_Y7_N9
\y_present.timer2\ : maxv_lcell
-- Equation(s):
-- \y_present.timer2~regout\ = DFFEAS((\Equal1~0_combout\ & ((\y_present.timer1~regout\) # ((\y_present.timer2~regout\ & !\Equal2~0_combout\)))) # (!\Equal1~0_combout\ & (\y_present.timer2~regout\ & ((!\Equal2~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, 
-- , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Equal1~0_combout\,
	datab => \y_present.timer2~regout\,
	datac => \y_present.timer1~regout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.timer2~regout\);

-- Location: LC_X4_Y7_N0
\Selector5~2\ : maxv_lcell
-- Equation(s):
-- \Selector5~2_combout\ = (\Equal1~0_combout\ & (\Equal2~0_combout\ & ((\y_present.timer2~regout\)))) # (!\Equal1~0_combout\ & ((\y_present.timer1~regout\) # ((\Equal2~0_combout\ & \y_present.timer2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \y_present.timer1~regout\,
	datad => \y_present.timer2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~2_combout\);

-- Location: LC_X3_Y7_N4
\Selector5~3\ : maxv_lcell
-- Equation(s):
-- \Selector5~3_combout\ = (\inp_switch~combout\(0) & (!\inp_switch~combout\(1) & (!\inp_switch~combout\(2) & !\y_present.RST~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(1),
	datac => \inp_switch~combout\(2),
	datad => \y_present.RST~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~3_combout\);

-- Location: LC_X4_Y7_N3
\y_present.timer3\ : maxv_lcell
-- Equation(s):
-- \y_present.timer3~regout\ = DFFEAS((\y_present.timer3~regout\) # ((\Equal2~0_combout\ & ((\y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \y_present.timer3~regout\,
	datab => \Equal2~0_combout\,
	datad => \y_present.timer2~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.timer3~regout\);

-- Location: LC_X3_Y7_N0
\Selector5~5\ : maxv_lcell
-- Equation(s):
-- \Selector5~5_combout\ = (\Selector5~2_combout\) # ((\Selector5~3_combout\) # ((!\reset~combout\ & \y_present.timer3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~2_combout\,
	datab => \Selector5~3_combout\,
	datac => \reset~combout\,
	datad => \y_present.timer3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~5_combout\);

-- Location: LC_X4_Y7_N1
\Selector5~4\ : maxv_lcell
-- Equation(s):
-- \Selector5~4_combout\ = (((!\reset~combout\ & \y_present.timer3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \y_present.timer3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~4_combout\);

-- Location: LC_X4_Y7_N2
\Selector4~0\ : maxv_lcell
-- Equation(s):
-- \Selector4~0_combout\ = (\y_present.timer2~regout\) # ((\Selector5~4_combout\) # ((\Equal1~0_combout\ & \y_present.timer1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \y_present.timer2~regout\,
	datac => \y_present.timer1~regout\,
	datad => \Selector5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0_combout\);

-- Location: LC_X4_Y7_N7
\out_sig[0]~0\ : maxv_lcell
-- Equation(s):
-- \out_sig[0]~0_combout\ = (!\reset~combout\ & ((\y_present.timer3~regout\) # ((\Selector5~2_combout\) # (\Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3332",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.timer3~regout\,
	datab => \reset~combout\,
	datac => \Selector5~2_combout\,
	datad => \Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_sig[0]~0_combout\);

-- Location: LC_X5_Y5_N1
\Tm|Equal1~5\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal1~5_combout\ = (((!\reset~combout\ & \Selector4~0_combout\)) # (!\out_sig[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \Selector4~0_combout\,
	datad => \out_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal1~5_combout\);

-- Location: LC_X4_Y5_N4
\Tm|timer1[0]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(0) = DFFEAS((!\reset~combout\ & ((\Tm|timer1\(0) & ((\Tm|Equal1~5_combout\))) # (!\Tm|timer1\(0) & (\Tm|Equal2~7_combout\ & !\Tm|Equal1~5_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2210",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Tm|timer1\(0),
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Equal1~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(0));

-- Location: LC_X5_Y5_N4
\Tm|Add0~112\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~112_cout\ = CARRY(((!\Tm|timer1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~110\,
	cout => \Tm|Add0~112_cout\);

-- Location: LC_X5_Y5_N5
\Tm|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~0_combout\ = \Tm|timer1\(1) $ ((((\Tm|Add0~112_cout\))))
-- \Tm|Add0~2\ = CARRY(((!\Tm|Add0~112_cout\)) # (!\Tm|timer1\(1)))
-- \Tm|Add0~2COUT1_116\ = CARRY(((!\Tm|Add0~112_cout\)) # (!\Tm|timer1\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(1),
	cin => \Tm|Add0~112_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~0_combout\,
	cout0 => \Tm|Add0~2\,
	cout1 => \Tm|Add0~2COUT1_116\);

-- Location: LC_X4_Y7_N6
\Tm|timer1[2]~25\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1[2]~25_combout\ = (\reset~combout\) # (((\out_sig[0]~0_combout\ & !\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \out_sig[0]~0_combout\,
	datad => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|timer1[2]~25_combout\);

-- Location: LC_X4_Y5_N8
\Tm|timer1[1]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(1) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~0_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~0_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(1));

-- Location: LC_X5_Y5_N6
\Tm|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~25_combout\ = \Tm|timer1\(2) $ ((((!(!\Tm|Add0~112_cout\ & \Tm|Add0~2\) # (\Tm|Add0~112_cout\ & \Tm|Add0~2COUT1_116\)))))
-- \Tm|Add0~27\ = CARRY((\Tm|timer1\(2) & ((!\Tm|Add0~2\))))
-- \Tm|Add0~27COUT1_117\ = CARRY((\Tm|timer1\(2) & ((!\Tm|Add0~2COUT1_116\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(2),
	cin => \Tm|Add0~112_cout\,
	cin0 => \Tm|Add0~2\,
	cin1 => \Tm|Add0~2COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~25_combout\,
	cout0 => \Tm|Add0~27\,
	cout1 => \Tm|Add0~27COUT1_117\);

-- Location: LC_X5_Y5_N3
\Tm|timer1[2]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(2) = DFFEAS((\Tm|Add0~25_combout\ & (\Tm|Equal2~7_combout\ & ((!\reset~combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Tm|Add0~25_combout\,
	datab => \Tm|Equal2~7_combout\,
	datad => \reset~combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(2));

-- Location: LC_X5_Y5_N7
\Tm|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~30_combout\ = (\Tm|timer1\(3) $ (((!\Tm|Add0~112_cout\ & \Tm|Add0~27\) # (\Tm|Add0~112_cout\ & \Tm|Add0~27COUT1_117\))))
-- \Tm|Add0~32\ = CARRY(((!\Tm|Add0~27\) # (!\Tm|timer1\(3))))
-- \Tm|Add0~32COUT1_118\ = CARRY(((!\Tm|Add0~27COUT1_117\) # (!\Tm|timer1\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(3),
	cin => \Tm|Add0~112_cout\,
	cin0 => \Tm|Add0~27\,
	cin1 => \Tm|Add0~27COUT1_117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~30_combout\,
	cout0 => \Tm|Add0~32\,
	cout1 => \Tm|Add0~32COUT1_118\);

-- Location: LC_X5_Y5_N2
\Tm|timer1[3]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(3) = DFFEAS(((\Tm|Add0~30_combout\ & (\Tm|Equal2~7_combout\ & !\reset~combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Add0~30_combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \reset~combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(3));

-- Location: LC_X5_Y5_N8
\Tm|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~10_combout\ = \Tm|timer1\(4) $ ((((!(!\Tm|Add0~112_cout\ & \Tm|Add0~32\) # (\Tm|Add0~112_cout\ & \Tm|Add0~32COUT1_118\)))))
-- \Tm|Add0~12\ = CARRY((\Tm|timer1\(4) & ((!\Tm|Add0~32\))))
-- \Tm|Add0~12COUT1_119\ = CARRY((\Tm|timer1\(4) & ((!\Tm|Add0~32COUT1_118\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(4),
	cin => \Tm|Add0~112_cout\,
	cin0 => \Tm|Add0~32\,
	cin1 => \Tm|Add0~32COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~10_combout\,
	cout0 => \Tm|Add0~12\,
	cout1 => \Tm|Add0~12COUT1_119\);

-- Location: LC_X4_Y5_N5
\Tm|timer1[4]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(4) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~10_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~10_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(4));

-- Location: LC_X5_Y5_N9
\Tm|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~15_combout\ = (\Tm|timer1\(5) $ (((!\Tm|Add0~112_cout\ & \Tm|Add0~12\) # (\Tm|Add0~112_cout\ & \Tm|Add0~12COUT1_119\))))
-- \Tm|Add0~17\ = CARRY(((!\Tm|Add0~12COUT1_119\) # (!\Tm|timer1\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(5),
	cin => \Tm|Add0~112_cout\,
	cin0 => \Tm|Add0~12\,
	cin1 => \Tm|Add0~12COUT1_119\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~15_combout\,
	cout => \Tm|Add0~17\);

-- Location: LC_X4_Y5_N7
\Tm|timer1[5]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(5) = DFFEAS(((!\reset~combout\ & (\Tm|Add0~15_combout\ & \Tm|Equal2~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Add0~15_combout\,
	datad => \Tm|Equal2~7_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(5));

-- Location: LC_X6_Y5_N0
\Tm|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~20_combout\ = (\Tm|timer1\(6) $ ((!\Tm|Add0~17\)))
-- \Tm|Add0~22\ = CARRY(((\Tm|timer1\(6) & !\Tm|Add0~17\)))
-- \Tm|Add0~22COUT1_120\ = CARRY(((\Tm|timer1\(6) & !\Tm|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(6),
	cin => \Tm|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~20_combout\,
	cout0 => \Tm|Add0~22\,
	cout1 => \Tm|Add0~22COUT1_120\);

-- Location: LC_X4_Y5_N9
\Tm|timer1[6]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(6) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~20_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~20_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(6));

-- Location: LC_X6_Y5_N1
\Tm|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~5_combout\ = (\Tm|timer1\(7) $ (((!\Tm|Add0~17\ & \Tm|Add0~22\) # (\Tm|Add0~17\ & \Tm|Add0~22COUT1_120\))))
-- \Tm|Add0~7\ = CARRY(((!\Tm|Add0~22\) # (!\Tm|timer1\(7))))
-- \Tm|Add0~7COUT1_121\ = CARRY(((!\Tm|Add0~22COUT1_120\) # (!\Tm|timer1\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(7),
	cin => \Tm|Add0~17\,
	cin0 => \Tm|Add0~22\,
	cin1 => \Tm|Add0~22COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~5_combout\,
	cout0 => \Tm|Add0~7\,
	cout1 => \Tm|Add0~7COUT1_121\);

-- Location: LC_X4_Y5_N3
\Tm|timer1[7]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(7) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~5_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~5_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(7));

-- Location: LC_X6_Y5_N2
\Tm|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~40_combout\ = (\Tm|timer1\(8) $ ((!(!\Tm|Add0~17\ & \Tm|Add0~7\) # (\Tm|Add0~17\ & \Tm|Add0~7COUT1_121\))))
-- \Tm|Add0~42\ = CARRY(((\Tm|timer1\(8) & !\Tm|Add0~7\)))
-- \Tm|Add0~42COUT1_122\ = CARRY(((\Tm|timer1\(8) & !\Tm|Add0~7COUT1_121\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(8),
	cin => \Tm|Add0~17\,
	cin0 => \Tm|Add0~7\,
	cin1 => \Tm|Add0~7COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~40_combout\,
	cout0 => \Tm|Add0~42\,
	cout1 => \Tm|Add0~42COUT1_122\);

-- Location: LC_X3_Y5_N3
\Tm|timer1[8]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(8) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~40_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~40_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(8));

-- Location: LC_X6_Y5_N3
\Tm|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~35_combout\ = (\Tm|timer1\(9) $ (((!\Tm|Add0~17\ & \Tm|Add0~42\) # (\Tm|Add0~17\ & \Tm|Add0~42COUT1_122\))))
-- \Tm|Add0~37\ = CARRY(((!\Tm|Add0~42\) # (!\Tm|timer1\(9))))
-- \Tm|Add0~37COUT1_123\ = CARRY(((!\Tm|Add0~42COUT1_122\) # (!\Tm|timer1\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(9),
	cin => \Tm|Add0~17\,
	cin0 => \Tm|Add0~42\,
	cin1 => \Tm|Add0~42COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~35_combout\,
	cout0 => \Tm|Add0~37\,
	cout1 => \Tm|Add0~37COUT1_123\);

-- Location: LC_X3_Y5_N7
\Tm|timer1[9]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(9) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~35_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~35_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(9));

-- Location: LC_X6_Y5_N4
\Tm|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~45_combout\ = (\Tm|timer1\(10) $ ((!(!\Tm|Add0~17\ & \Tm|Add0~37\) # (\Tm|Add0~17\ & \Tm|Add0~37COUT1_123\))))
-- \Tm|Add0~47\ = CARRY(((\Tm|timer1\(10) & !\Tm|Add0~37COUT1_123\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(10),
	cin => \Tm|Add0~17\,
	cin0 => \Tm|Add0~37\,
	cin1 => \Tm|Add0~37COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~45_combout\,
	cout => \Tm|Add0~47\);

-- Location: LC_X3_Y5_N5
\Tm|timer1[10]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(10) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~45_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~45_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(10));

-- Location: LC_X6_Y5_N5
\Tm|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~50_combout\ = \Tm|timer1\(11) $ ((((\Tm|Add0~47\))))
-- \Tm|Add0~52\ = CARRY(((!\Tm|Add0~47\)) # (!\Tm|timer1\(11)))
-- \Tm|Add0~52COUT1_124\ = CARRY(((!\Tm|Add0~47\)) # (!\Tm|timer1\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(11),
	cin => \Tm|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~50_combout\,
	cout0 => \Tm|Add0~52\,
	cout1 => \Tm|Add0~52COUT1_124\);

-- Location: LC_X3_Y5_N2
\Tm|timer1[11]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(11) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~50_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~50_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(11));

-- Location: LC_X6_Y5_N6
\Tm|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~55_combout\ = (\Tm|timer1\(12) $ ((!(!\Tm|Add0~47\ & \Tm|Add0~52\) # (\Tm|Add0~47\ & \Tm|Add0~52COUT1_124\))))
-- \Tm|Add0~57\ = CARRY(((\Tm|timer1\(12) & !\Tm|Add0~52\)))
-- \Tm|Add0~57COUT1_125\ = CARRY(((\Tm|timer1\(12) & !\Tm|Add0~52COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(12),
	cin => \Tm|Add0~47\,
	cin0 => \Tm|Add0~52\,
	cin1 => \Tm|Add0~52COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~55_combout\,
	cout0 => \Tm|Add0~57\,
	cout1 => \Tm|Add0~57COUT1_125\);

-- Location: LC_X3_Y5_N1
\Tm|timer1[12]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(12) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~55_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~55_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(12));

-- Location: LC_X6_Y5_N7
\Tm|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~60_combout\ = (\Tm|timer1\(13) $ (((!\Tm|Add0~47\ & \Tm|Add0~57\) # (\Tm|Add0~47\ & \Tm|Add0~57COUT1_125\))))
-- \Tm|Add0~62\ = CARRY(((!\Tm|Add0~57\) # (!\Tm|timer1\(13))))
-- \Tm|Add0~62COUT1_126\ = CARRY(((!\Tm|Add0~57COUT1_125\) # (!\Tm|timer1\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(13),
	cin => \Tm|Add0~47\,
	cin0 => \Tm|Add0~57\,
	cin1 => \Tm|Add0~57COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~60_combout\,
	cout0 => \Tm|Add0~62\,
	cout1 => \Tm|Add0~62COUT1_126\);

-- Location: LC_X3_Y5_N4
\Tm|timer1[13]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(13) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~60_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~60_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(13));

-- Location: LC_X6_Y5_N8
\Tm|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~65_combout\ = \Tm|timer1\(14) $ ((((!(!\Tm|Add0~47\ & \Tm|Add0~62\) # (\Tm|Add0~47\ & \Tm|Add0~62COUT1_126\)))))
-- \Tm|Add0~67\ = CARRY((\Tm|timer1\(14) & ((!\Tm|Add0~62\))))
-- \Tm|Add0~67COUT1_127\ = CARRY((\Tm|timer1\(14) & ((!\Tm|Add0~62COUT1_126\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(14),
	cin => \Tm|Add0~47\,
	cin0 => \Tm|Add0~62\,
	cin1 => \Tm|Add0~62COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~65_combout\,
	cout0 => \Tm|Add0~67\,
	cout1 => \Tm|Add0~67COUT1_127\);

-- Location: LC_X3_Y5_N0
\Tm|timer1[14]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(14) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~65_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~65_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(14));

-- Location: LC_X6_Y5_N9
\Tm|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~70_combout\ = (\Tm|timer1\(15) $ (((!\Tm|Add0~47\ & \Tm|Add0~67\) # (\Tm|Add0~47\ & \Tm|Add0~67COUT1_127\))))
-- \Tm|Add0~72\ = CARRY(((!\Tm|Add0~67COUT1_127\) # (!\Tm|timer1\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(15),
	cin => \Tm|Add0~47\,
	cin0 => \Tm|Add0~67\,
	cin1 => \Tm|Add0~67COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~70_combout\,
	cout => \Tm|Add0~72\);

-- Location: LC_X3_Y5_N9
\Tm|timer1[15]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(15) = DFFEAS(((!\reset~combout\ & (\Tm|Equal2~7_combout\ & \Tm|Add0~70_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~70_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(15));

-- Location: LC_X3_Y5_N8
\Tm|Equal2~4\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~4_combout\ = (\Tm|timer1\(13)) # ((\Tm|timer1\(12)) # ((\Tm|timer1\(14)) # (!\Tm|timer1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(13),
	datab => \Tm|timer1\(12),
	datac => \Tm|timer1\(14),
	datad => \Tm|timer1\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~4_combout\);

-- Location: LC_X4_Y5_N0
\Tm|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~0_combout\ = (((\Tm|timer1\(0)) # (!\Tm|timer1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tm|timer1\(0),
	datad => \Tm|timer1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~0_combout\);

-- Location: LC_X4_Y5_N2
\Tm|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~1_combout\ = (\Tm|timer1\(7)) # (((!\Tm|timer1\(6)) # (!\Tm|timer1\(4))) # (!\Tm|timer1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(7),
	datab => \Tm|timer1\(5),
	datac => \Tm|timer1\(4),
	datad => \Tm|timer1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~1_combout\);

-- Location: LC_X4_Y5_N1
\Tm|Equal2~2\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~2_combout\ = (((\Tm|Equal2~0_combout\) # (\Tm|Equal2~1_combout\)) # (!\Tm|timer1\(3))) # (!\Tm|timer1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(2),
	datab => \Tm|timer1\(3),
	datac => \Tm|Equal2~0_combout\,
	datad => \Tm|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~2_combout\);

-- Location: LC_X3_Y5_N6
\Tm|Equal2~3\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~3_combout\ = (((\Tm|timer1\(9)) # (!\Tm|timer1\(8))) # (!\Tm|timer1\(11))) # (!\Tm|timer1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(10),
	datab => \Tm|timer1\(11),
	datac => \Tm|timer1\(9),
	datad => \Tm|timer1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~3_combout\);

-- Location: LC_X7_Y5_N0
\Tm|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~80_combout\ = (\Tm|timer1\(16) $ ((!\Tm|Add0~72\)))
-- \Tm|Add0~82\ = CARRY(((\Tm|timer1\(16) & !\Tm|Add0~72\)))
-- \Tm|Add0~82COUT1_128\ = CARRY(((\Tm|timer1\(16) & !\Tm|Add0~72\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(16),
	cin => \Tm|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~80_combout\,
	cout0 => \Tm|Add0~82\,
	cout1 => \Tm|Add0~82COUT1_128\);

-- Location: LC_X8_Y5_N5
\Tm|timer1[16]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(16) = DFFEAS((!\reset~combout\ & (((\Tm|Equal2~7_combout\ & \Tm|Add0~80_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~80_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(16));

-- Location: LC_X7_Y5_N1
\Tm|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~85_combout\ = (\Tm|timer1\(17) $ (((!\Tm|Add0~72\ & \Tm|Add0~82\) # (\Tm|Add0~72\ & \Tm|Add0~82COUT1_128\))))
-- \Tm|Add0~87\ = CARRY(((!\Tm|Add0~82\) # (!\Tm|timer1\(17))))
-- \Tm|Add0~87COUT1_129\ = CARRY(((!\Tm|Add0~82COUT1_128\) # (!\Tm|timer1\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(17),
	cin => \Tm|Add0~72\,
	cin0 => \Tm|Add0~82\,
	cin1 => \Tm|Add0~82COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~85_combout\,
	cout0 => \Tm|Add0~87\,
	cout1 => \Tm|Add0~87COUT1_129\);

-- Location: LC_X8_Y5_N2
\Tm|timer1[17]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(17) = DFFEAS((!\reset~combout\ & (\Tm|Equal2~7_combout\ & (\Tm|Add0~85_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \Tm|Equal2~7_combout\,
	datac => \Tm|Add0~85_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(17));

-- Location: LC_X7_Y5_N2
\Tm|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~75_combout\ = \Tm|timer1\(18) $ ((((!(!\Tm|Add0~72\ & \Tm|Add0~87\) # (\Tm|Add0~72\ & \Tm|Add0~87COUT1_129\)))))
-- \Tm|Add0~77\ = CARRY((\Tm|timer1\(18) & ((!\Tm|Add0~87\))))
-- \Tm|Add0~77COUT1_130\ = CARRY((\Tm|timer1\(18) & ((!\Tm|Add0~87COUT1_129\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(18),
	cin => \Tm|Add0~72\,
	cin0 => \Tm|Add0~87\,
	cin1 => \Tm|Add0~87COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~75_combout\,
	cout0 => \Tm|Add0~77\,
	cout1 => \Tm|Add0~77COUT1_130\);

-- Location: LC_X8_Y5_N3
\Tm|timer1[18]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(18) = DFFEAS(((\Tm|Equal2~7_combout\ & (!\reset~combout\ & \Tm|Add0~75_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal2~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add0~75_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(18));

-- Location: LC_X7_Y5_N3
\Tm|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~90_combout\ = (\Tm|timer1\(19) $ (((!\Tm|Add0~72\ & \Tm|Add0~77\) # (\Tm|Add0~72\ & \Tm|Add0~77COUT1_130\))))
-- \Tm|Add0~92\ = CARRY(((!\Tm|Add0~77\) # (!\Tm|timer1\(19))))
-- \Tm|Add0~92COUT1_131\ = CARRY(((!\Tm|Add0~77COUT1_130\) # (!\Tm|timer1\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(19),
	cin => \Tm|Add0~72\,
	cin0 => \Tm|Add0~77\,
	cin1 => \Tm|Add0~77COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~90_combout\,
	cout0 => \Tm|Add0~92\,
	cout1 => \Tm|Add0~92COUT1_131\);

-- Location: LC_X8_Y5_N8
\Tm|timer1[19]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(19) = DFFEAS((!\reset~combout\ & (((\Tm|Equal2~7_combout\ & \Tm|Add0~90_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~90_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(19));

-- Location: LC_X7_Y5_N4
\Tm|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~100_combout\ = \Tm|timer1\(20) $ ((((!(!\Tm|Add0~72\ & \Tm|Add0~92\) # (\Tm|Add0~72\ & \Tm|Add0~92COUT1_131\)))))
-- \Tm|Add0~102\ = CARRY((\Tm|timer1\(20) & ((!\Tm|Add0~92COUT1_131\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(20),
	cin => \Tm|Add0~72\,
	cin0 => \Tm|Add0~92\,
	cin1 => \Tm|Add0~92COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~100_combout\,
	cout => \Tm|Add0~102\);

-- Location: LC_X8_Y5_N1
\Tm|timer1[20]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(20) = DFFEAS((!\reset~combout\ & (((\Tm|Equal2~7_combout\ & \Tm|Add0~100_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~100_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(20));

-- Location: LC_X7_Y5_N5
\Tm|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~95_combout\ = (\Tm|timer1\(21) $ ((\Tm|Add0~102\)))
-- \Tm|Add0~97\ = CARRY(((!\Tm|Add0~102\) # (!\Tm|timer1\(21))))
-- \Tm|Add0~97COUT1_132\ = CARRY(((!\Tm|Add0~102\) # (!\Tm|timer1\(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer1\(21),
	cin => \Tm|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~95_combout\,
	cout0 => \Tm|Add0~97\,
	cout1 => \Tm|Add0~97COUT1_132\);

-- Location: LC_X8_Y5_N9
\Tm|timer1[21]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(21) = DFFEAS((!\reset~combout\ & (((\Tm|Equal2~7_combout\ & \Tm|Add0~95_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal2~7_combout\,
	datad => \Tm|Add0~95_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(21));

-- Location: LC_X7_Y5_N6
\Tm|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Tm|Add0~105_combout\ = (((!\Tm|Add0~102\ & \Tm|Add0~97\) # (\Tm|Add0~102\ & \Tm|Add0~97COUT1_132\) $ (!\Tm|timer1\(22))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tm|timer1\(22),
	cin => \Tm|Add0~102\,
	cin0 => \Tm|Add0~97\,
	cin1 => \Tm|Add0~97COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add0~105_combout\);

-- Location: LC_X8_Y5_N4
\Tm|timer1[22]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer1\(22) = DFFEAS((!\reset~combout\ & (\Tm|Equal2~7_combout\ & (\Tm|Add0~105_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer1[2]~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \Tm|Equal2~7_combout\,
	datac => \Tm|Add0~105_combout\,
	aclr => GND,
	ena => \Tm|timer1[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer1\(22));

-- Location: LC_X8_Y5_N6
\Tm|Equal2~5\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~5_combout\ = (\Tm|timer1\(18)) # (((!\Tm|timer1\(19)) # (!\Tm|timer1\(16))) # (!\Tm|timer1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(18),
	datab => \Tm|timer1\(17),
	datac => \Tm|timer1\(16),
	datad => \Tm|timer1\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~5_combout\);

-- Location: LC_X8_Y5_N7
\Tm|Equal2~6\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~6_combout\ = ((\Tm|timer1\(21)) # ((\Tm|Equal2~5_combout\) # (!\Tm|timer1\(20)))) # (!\Tm|timer1\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer1\(22),
	datab => \Tm|timer1\(21),
	datac => \Tm|timer1\(20),
	datad => \Tm|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~6_combout\);

-- Location: LC_X4_Y5_N6
\Tm|Equal2~7\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal2~7_combout\ = (\Tm|Equal2~4_combout\) # ((\Tm|Equal2~2_combout\) # ((\Tm|Equal2~3_combout\) # (\Tm|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|Equal2~4_combout\,
	datab => \Tm|Equal2~2_combout\,
	datac => \Tm|Equal2~3_combout\,
	datad => \Tm|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal2~7_combout\);

-- Location: LC_X5_Y8_N0
\out_sig[1]~1\ : maxv_lcell
-- Equation(s):
-- \out_sig[1]~1_combout\ = (((!\reset~combout\ & \Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_sig[1]~1_combout\);

-- Location: LC_X5_Y8_N1
\Tm|LED~0\ : maxv_lcell
-- Equation(s):
-- \Tm|LED~0_combout\ = (!\out_sig[1]~1_combout\ & ((\out_sig[0]~0_combout\ & ((\Tm|Equal2~7_combout\))) # (!\out_sig[0]~0_combout\ & (\Tm|LED\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out_sig[0]~0_combout\,
	datab => \Tm|LED\(0),
	datac => \Tm|Equal2~7_combout\,
	datad => \out_sig[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|LED~0_combout\);

-- Location: LC_X5_Y8_N2
\Tm|LED[0]\ : maxv_lcell
-- Equation(s):
-- \Tm|LED\(0) = DFFEAS((!\reset~combout\ & (\Tm|LED~0_combout\ & ((\Selector5~5_combout\) # (\Selector4~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Selector5~5_combout\,
	datab => \Selector4~0_combout\,
	datac => \reset~combout\,
	datad => \Tm|LED~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|LED\(0));

-- Location: LC_X5_Y7_N4
\Tm|Equal1~6\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal1~6_combout\ = (((\reset~combout\) # (\out_sig[0]~0_combout\)) # (!\Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~0_combout\,
	datac => \reset~combout\,
	datad => \out_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal1~6_combout\);

-- Location: LC_X6_Y7_N3
\Tm|timer2[0]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(0) = DFFEAS((!\reset~combout\ & ((\Tm|Equal1~6_combout\ & ((\Tm|timer2\(0)))) # (!\Tm|Equal1~6_combout\ & (\Tm|Equal4~7_combout\ & !\Tm|timer2\(0))))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4410",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \Tm|Equal1~6_combout\,
	datac => \Tm|Equal4~7_combout\,
	datad => \Tm|timer2\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(0));

-- Location: LC_X5_Y6_N3
\Tm|Add1~117\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~117_cout0\ = CARRY(((!\Tm|timer2\(0))))
-- \Tm|Add1~117COUT1_121\ = CARRY(((!\Tm|timer2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~115\,
	cout0 => \Tm|Add1~117_cout0\,
	cout1 => \Tm|Add1~117COUT1_121\);

-- Location: LC_X5_Y6_N4
\Tm|Add1~0\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~0_combout\ = (\Tm|timer2\(1) $ ((\Tm|Add1~117_cout0\)))
-- \Tm|Add1~2\ = CARRY(((!\Tm|Add1~117COUT1_121\) # (!\Tm|timer2\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(1),
	cin0 => \Tm|Add1~117_cout0\,
	cin1 => \Tm|Add1~117COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~0_combout\,
	cout => \Tm|Add1~2\);

-- Location: LC_X4_Y7_N5
\Tm|timer2[15]~26\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2[15]~26_combout\ = (\reset~combout\) # (((!\out_sig[0]~0_combout\ & \Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \out_sig[0]~0_combout\,
	datad => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|timer2[15]~26_combout\);

-- Location: LC_X6_Y7_N6
\Tm|timer2[1]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(1) = DFFEAS(((!\reset~combout\ & (\Tm|Add1~0_combout\ & \Tm|Equal4~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Add1~0_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(1));

-- Location: LC_X5_Y6_N5
\Tm|Add1~5\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~5_combout\ = (\Tm|timer2\(2) $ ((!\Tm|Add1~2\)))
-- \Tm|Add1~7\ = CARRY(((\Tm|timer2\(2) & !\Tm|Add1~2\)))
-- \Tm|Add1~7COUT1_122\ = CARRY(((\Tm|timer2\(2) & !\Tm|Add1~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(2),
	cin => \Tm|Add1~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~5_combout\,
	cout0 => \Tm|Add1~7\,
	cout1 => \Tm|Add1~7COUT1_122\);

-- Location: LC_X6_Y7_N9
\Tm|timer2[2]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(2) = DFFEAS(((!\reset~combout\ & (\Tm|Equal4~7_combout\ & \Tm|Add1~5_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal4~7_combout\,
	datad => \Tm|Add1~5_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(2));

-- Location: LC_X5_Y6_N6
\Tm|Add1~10\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~10_combout\ = (\Tm|timer2\(3) $ (((!\Tm|Add1~2\ & \Tm|Add1~7\) # (\Tm|Add1~2\ & \Tm|Add1~7COUT1_122\))))
-- \Tm|Add1~12\ = CARRY(((!\Tm|Add1~7\) # (!\Tm|timer2\(3))))
-- \Tm|Add1~12COUT1_123\ = CARRY(((!\Tm|Add1~7COUT1_122\) # (!\Tm|timer2\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(3),
	cin => \Tm|Add1~2\,
	cin0 => \Tm|Add1~7\,
	cin1 => \Tm|Add1~7COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~10_combout\,
	cout0 => \Tm|Add1~12\,
	cout1 => \Tm|Add1~12COUT1_123\);

-- Location: LC_X5_Y6_N0
\Tm|timer2[3]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(3) = DFFEAS(((!\reset~combout\ & (\Tm|Add1~10_combout\ & \Tm|Equal4~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Add1~10_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(3));

-- Location: LC_X5_Y6_N7
\Tm|Add1~20\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~20_combout\ = (\Tm|timer2\(4) $ ((!(!\Tm|Add1~2\ & \Tm|Add1~12\) # (\Tm|Add1~2\ & \Tm|Add1~12COUT1_123\))))
-- \Tm|Add1~22\ = CARRY(((\Tm|timer2\(4) & !\Tm|Add1~12\)))
-- \Tm|Add1~22COUT1_124\ = CARRY(((\Tm|timer2\(4) & !\Tm|Add1~12COUT1_123\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(4),
	cin => \Tm|Add1~2\,
	cin0 => \Tm|Add1~12\,
	cin1 => \Tm|Add1~12COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~20_combout\,
	cout0 => \Tm|Add1~22\,
	cout1 => \Tm|Add1~22COUT1_124\);

-- Location: LC_X5_Y6_N1
\Tm|timer2[4]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(4) = DFFEAS((!\reset~combout\ & (\Tm|Add1~20_combout\ & ((\Tm|Equal4~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \Tm|Add1~20_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(4));

-- Location: LC_X5_Y6_N8
\Tm|Add1~25\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~25_combout\ = (\Tm|timer2\(5) $ (((!\Tm|Add1~2\ & \Tm|Add1~22\) # (\Tm|Add1~2\ & \Tm|Add1~22COUT1_124\))))
-- \Tm|Add1~27\ = CARRY(((!\Tm|Add1~22\) # (!\Tm|timer2\(5))))
-- \Tm|Add1~27COUT1_125\ = CARRY(((!\Tm|Add1~22COUT1_124\) # (!\Tm|timer2\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(5),
	cin => \Tm|Add1~2\,
	cin0 => \Tm|Add1~22\,
	cin1 => \Tm|Add1~22COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~25_combout\,
	cout0 => \Tm|Add1~27\,
	cout1 => \Tm|Add1~27COUT1_125\);

-- Location: LC_X5_Y7_N3
\Tm|timer2[5]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(5) = DFFEAS(((\Tm|Equal4~7_combout\ & (!\reset~combout\ & \Tm|Add1~25_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal4~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add1~25_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(5));

-- Location: LC_X5_Y6_N9
\Tm|Add1~30\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~30_combout\ = (\Tm|timer2\(6) $ ((!(!\Tm|Add1~2\ & \Tm|Add1~27\) # (\Tm|Add1~2\ & \Tm|Add1~27COUT1_125\))))
-- \Tm|Add1~32\ = CARRY(((\Tm|timer2\(6) & !\Tm|Add1~27COUT1_125\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(6),
	cin => \Tm|Add1~2\,
	cin0 => \Tm|Add1~27\,
	cin1 => \Tm|Add1~27COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~30_combout\,
	cout => \Tm|Add1~32\);

-- Location: LC_X5_Y6_N2
\Tm|timer2[6]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(6) = DFFEAS((!\reset~combout\ & (\Tm|Add1~30_combout\ & ((\Tm|Equal4~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \Tm|Add1~30_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(6));

-- Location: LC_X6_Y6_N0
\Tm|Add1~15\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~15_combout\ = (\Tm|timer2\(7) $ ((\Tm|Add1~32\)))
-- \Tm|Add1~17\ = CARRY(((!\Tm|Add1~32\) # (!\Tm|timer2\(7))))
-- \Tm|Add1~17COUT1_126\ = CARRY(((!\Tm|Add1~32\) # (!\Tm|timer2\(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(7),
	cin => \Tm|Add1~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~15_combout\,
	cout0 => \Tm|Add1~17\,
	cout1 => \Tm|Add1~17COUT1_126\);

-- Location: LC_X5_Y7_N7
\Tm|timer2[7]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(7) = DFFEAS((!\reset~combout\ & (((\Tm|Add1~15_combout\ & \Tm|Equal4~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add1~15_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(7));

-- Location: LC_X6_Y6_N1
\Tm|Add1~35\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~35_combout\ = (\Tm|timer2\(8) $ ((!(!\Tm|Add1~32\ & \Tm|Add1~17\) # (\Tm|Add1~32\ & \Tm|Add1~17COUT1_126\))))
-- \Tm|Add1~37\ = CARRY(((\Tm|timer2\(8) & !\Tm|Add1~17\)))
-- \Tm|Add1~37COUT1_127\ = CARRY(((\Tm|timer2\(8) & !\Tm|Add1~17COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(8),
	cin => \Tm|Add1~32\,
	cin0 => \Tm|Add1~17\,
	cin1 => \Tm|Add1~17COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~35_combout\,
	cout0 => \Tm|Add1~37\,
	cout1 => \Tm|Add1~37COUT1_127\);

-- Location: LC_X6_Y7_N2
\Tm|timer2[8]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(8) = DFFEAS((\Tm|Equal4~7_combout\ & (((\Tm|Add1~35_combout\ & !\reset~combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Tm|Equal4~7_combout\,
	datac => \Tm|Add1~35_combout\,
	datad => \reset~combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(8));

-- Location: LC_X6_Y6_N2
\Tm|Add1~45\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~45_combout\ = \Tm|timer2\(9) $ (((((!\Tm|Add1~32\ & \Tm|Add1~37\) # (\Tm|Add1~32\ & \Tm|Add1~37COUT1_127\)))))
-- \Tm|Add1~47\ = CARRY(((!\Tm|Add1~37\)) # (!\Tm|timer2\(9)))
-- \Tm|Add1~47COUT1_128\ = CARRY(((!\Tm|Add1~37COUT1_127\)) # (!\Tm|timer2\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(9),
	cin => \Tm|Add1~32\,
	cin0 => \Tm|Add1~37\,
	cin1 => \Tm|Add1~37COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~45_combout\,
	cout0 => \Tm|Add1~47\,
	cout1 => \Tm|Add1~47COUT1_128\);

-- Location: LC_X6_Y7_N0
\Tm|timer2[9]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(9) = DFFEAS(((!\reset~combout\ & (\Tm|Equal4~7_combout\ & \Tm|Add1~45_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal4~7_combout\,
	datad => \Tm|Add1~45_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(9));

-- Location: LC_X6_Y6_N3
\Tm|Add1~50\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~50_combout\ = (\Tm|timer2\(10) $ ((!(!\Tm|Add1~32\ & \Tm|Add1~47\) # (\Tm|Add1~32\ & \Tm|Add1~47COUT1_128\))))
-- \Tm|Add1~52\ = CARRY(((\Tm|timer2\(10) & !\Tm|Add1~47\)))
-- \Tm|Add1~52COUT1_129\ = CARRY(((\Tm|timer2\(10) & !\Tm|Add1~47COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(10),
	cin => \Tm|Add1~32\,
	cin0 => \Tm|Add1~47\,
	cin1 => \Tm|Add1~47COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~50_combout\,
	cout0 => \Tm|Add1~52\,
	cout1 => \Tm|Add1~52COUT1_129\);

-- Location: LC_X5_Y7_N6
\Tm|timer2[10]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(10) = DFFEAS((!\reset~combout\ & (((\Tm|Add1~50_combout\ & \Tm|Equal4~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add1~50_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(10));

-- Location: LC_X6_Y6_N4
\Tm|Add1~40\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~40_combout\ = (\Tm|timer2\(11) $ (((!\Tm|Add1~32\ & \Tm|Add1~52\) # (\Tm|Add1~32\ & \Tm|Add1~52COUT1_129\))))
-- \Tm|Add1~42\ = CARRY(((!\Tm|Add1~52COUT1_129\) # (!\Tm|timer2\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(11),
	cin => \Tm|Add1~32\,
	cin0 => \Tm|Add1~52\,
	cin1 => \Tm|Add1~52COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~40_combout\,
	cout => \Tm|Add1~42\);

-- Location: LC_X5_Y7_N9
\Tm|timer2[11]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(11) = DFFEAS(((\Tm|Equal4~7_combout\ & (!\reset~combout\ & \Tm|Add1~40_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal4~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add1~40_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(11));

-- Location: LC_X6_Y6_N5
\Tm|Add1~65\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~65_combout\ = (\Tm|timer2\(12) $ ((!\Tm|Add1~42\)))
-- \Tm|Add1~67\ = CARRY(((\Tm|timer2\(12) & !\Tm|Add1~42\)))
-- \Tm|Add1~67COUT1_130\ = CARRY(((\Tm|timer2\(12) & !\Tm|Add1~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(12),
	cin => \Tm|Add1~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~65_combout\,
	cout0 => \Tm|Add1~67\,
	cout1 => \Tm|Add1~67COUT1_130\);

-- Location: LC_X5_Y7_N5
\Tm|timer2[12]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(12) = DFFEAS(((\Tm|Equal4~7_combout\ & (!\reset~combout\ & \Tm|Add1~65_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal4~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add1~65_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(12));

-- Location: LC_X6_Y6_N6
\Tm|Add1~55\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~55_combout\ = (\Tm|timer2\(13) $ (((!\Tm|Add1~42\ & \Tm|Add1~67\) # (\Tm|Add1~42\ & \Tm|Add1~67COUT1_130\))))
-- \Tm|Add1~57\ = CARRY(((!\Tm|Add1~67\) # (!\Tm|timer2\(13))))
-- \Tm|Add1~57COUT1_131\ = CARRY(((!\Tm|Add1~67COUT1_130\) # (!\Tm|timer2\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(13),
	cin => \Tm|Add1~42\,
	cin0 => \Tm|Add1~67\,
	cin1 => \Tm|Add1~67COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~55_combout\,
	cout0 => \Tm|Add1~57\,
	cout1 => \Tm|Add1~57COUT1_131\);

-- Location: LC_X5_Y7_N2
\Tm|timer2[13]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(13) = DFFEAS((\Tm|Add1~55_combout\ & (((!\reset~combout\ & \Tm|Equal4~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Tm|Add1~55_combout\,
	datac => \reset~combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(13));

-- Location: LC_X6_Y6_N7
\Tm|Add1~60\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~60_combout\ = (\Tm|timer2\(14) $ ((!(!\Tm|Add1~42\ & \Tm|Add1~57\) # (\Tm|Add1~42\ & \Tm|Add1~57COUT1_131\))))
-- \Tm|Add1~62\ = CARRY(((\Tm|timer2\(14) & !\Tm|Add1~57\)))
-- \Tm|Add1~62COUT1_132\ = CARRY(((\Tm|timer2\(14) & !\Tm|Add1~57COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(14),
	cin => \Tm|Add1~42\,
	cin0 => \Tm|Add1~57\,
	cin1 => \Tm|Add1~57COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~60_combout\,
	cout0 => \Tm|Add1~62\,
	cout1 => \Tm|Add1~62COUT1_132\);

-- Location: LC_X5_Y7_N1
\Tm|timer2[14]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(14) = DFFEAS((!\reset~combout\ & (((\Tm|Add1~60_combout\ & \Tm|Equal4~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add1~60_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(14));

-- Location: LC_X6_Y6_N8
\Tm|Add1~70\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~70_combout\ = (\Tm|timer2\(15) $ (((!\Tm|Add1~42\ & \Tm|Add1~62\) # (\Tm|Add1~42\ & \Tm|Add1~62COUT1_132\))))
-- \Tm|Add1~72\ = CARRY(((!\Tm|Add1~62\) # (!\Tm|timer2\(15))))
-- \Tm|Add1~72COUT1_133\ = CARRY(((!\Tm|Add1~62COUT1_132\) # (!\Tm|timer2\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(15),
	cin => \Tm|Add1~42\,
	cin0 => \Tm|Add1~62\,
	cin1 => \Tm|Add1~62COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~70_combout\,
	cout0 => \Tm|Add1~72\,
	cout1 => \Tm|Add1~72COUT1_133\);

-- Location: LC_X5_Y7_N0
\Tm|timer2[15]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(15) = DFFEAS(((\Tm|Equal4~7_combout\ & (!\reset~combout\ & \Tm|Add1~70_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal4~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add1~70_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(15));

-- Location: LC_X6_Y6_N9
\Tm|Add1~75\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~75_combout\ = (\Tm|timer2\(16) $ ((!(!\Tm|Add1~42\ & \Tm|Add1~72\) # (\Tm|Add1~42\ & \Tm|Add1~72COUT1_133\))))
-- \Tm|Add1~77\ = CARRY(((\Tm|timer2\(16) & !\Tm|Add1~72COUT1_133\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(16),
	cin => \Tm|Add1~42\,
	cin0 => \Tm|Add1~72\,
	cin1 => \Tm|Add1~72COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~75_combout\,
	cout => \Tm|Add1~77\);

-- Location: LC_X7_Y7_N9
\Tm|timer2[16]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(16) = DFFEAS(((!\reset~combout\ & (\Tm|Equal4~7_combout\ & \Tm|Add1~75_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal4~7_combout\,
	datad => \Tm|Add1~75_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(16));

-- Location: LC_X7_Y6_N0
\Tm|Add1~80\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~80_combout\ = (\Tm|timer2\(17) $ ((\Tm|Add1~77\)))
-- \Tm|Add1~82\ = CARRY(((!\Tm|Add1~77\) # (!\Tm|timer2\(17))))
-- \Tm|Add1~82COUT1_134\ = CARRY(((!\Tm|Add1~77\) # (!\Tm|timer2\(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(17),
	cin => \Tm|Add1~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~80_combout\,
	cout0 => \Tm|Add1~82\,
	cout1 => \Tm|Add1~82COUT1_134\);

-- Location: LC_X7_Y7_N5
\Tm|timer2[17]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(17) = DFFEAS(((!\reset~combout\ & (\Tm|Equal4~7_combout\ & \Tm|Add1~80_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal4~7_combout\,
	datad => \Tm|Add1~80_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(17));

-- Location: LC_X7_Y6_N1
\Tm|Add1~85\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~85_combout\ = (\Tm|timer2\(18) $ ((!(!\Tm|Add1~77\ & \Tm|Add1~82\) # (\Tm|Add1~77\ & \Tm|Add1~82COUT1_134\))))
-- \Tm|Add1~87\ = CARRY(((\Tm|timer2\(18) & !\Tm|Add1~82\)))
-- \Tm|Add1~87COUT1_135\ = CARRY(((\Tm|timer2\(18) & !\Tm|Add1~82COUT1_134\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(18),
	cin => \Tm|Add1~77\,
	cin0 => \Tm|Add1~82\,
	cin1 => \Tm|Add1~82COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~85_combout\,
	cout0 => \Tm|Add1~87\,
	cout1 => \Tm|Add1~87COUT1_135\);

-- Location: LC_X7_Y6_N9
\Tm|timer2[18]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(18) = DFFEAS(((\Tm|Equal4~7_combout\ & (!\reset~combout\ & \Tm|Add1~85_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal4~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add1~85_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(18));

-- Location: LC_X7_Y6_N2
\Tm|Add1~90\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~90_combout\ = (\Tm|timer2\(19) $ (((!\Tm|Add1~77\ & \Tm|Add1~87\) # (\Tm|Add1~77\ & \Tm|Add1~87COUT1_135\))))
-- \Tm|Add1~92\ = CARRY(((!\Tm|Add1~87\) # (!\Tm|timer2\(19))))
-- \Tm|Add1~92COUT1_136\ = CARRY(((!\Tm|Add1~87COUT1_135\) # (!\Tm|timer2\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(19),
	cin => \Tm|Add1~77\,
	cin0 => \Tm|Add1~87\,
	cin1 => \Tm|Add1~87COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~90_combout\,
	cout0 => \Tm|Add1~92\,
	cout1 => \Tm|Add1~92COUT1_136\);

-- Location: LC_X7_Y6_N7
\Tm|timer2[19]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(19) = DFFEAS(((\Tm|Equal4~7_combout\ & (!\reset~combout\ & \Tm|Add1~90_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal4~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add1~90_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(19));

-- Location: LC_X7_Y7_N4
\Tm|Equal4~5\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~5_combout\ = (\Tm|timer2\(17)) # ((\Tm|timer2\(16)) # ((\Tm|timer2\(18)) # (!\Tm|timer2\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(17),
	datab => \Tm|timer2\(16),
	datac => \Tm|timer2\(19),
	datad => \Tm|timer2\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~5_combout\);

-- Location: LC_X7_Y6_N3
\Tm|Add1~105\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~105_combout\ = \Tm|timer2\(20) $ ((((!(!\Tm|Add1~77\ & \Tm|Add1~92\) # (\Tm|Add1~77\ & \Tm|Add1~92COUT1_136\)))))
-- \Tm|Add1~107\ = CARRY((\Tm|timer2\(20) & ((!\Tm|Add1~92\))))
-- \Tm|Add1~107COUT1_137\ = CARRY((\Tm|timer2\(20) & ((!\Tm|Add1~92COUT1_136\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(20),
	cin => \Tm|Add1~77\,
	cin0 => \Tm|Add1~92\,
	cin1 => \Tm|Add1~92COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~105_combout\,
	cout0 => \Tm|Add1~107\,
	cout1 => \Tm|Add1~107COUT1_137\);

-- Location: LC_X7_Y6_N8
\Tm|timer2[20]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(20) = DFFEAS(((\Tm|Equal4~7_combout\ & (!\reset~combout\ & \Tm|Add1~105_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal4~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add1~105_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(20));

-- Location: LC_X7_Y6_N4
\Tm|Add1~95\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~95_combout\ = (\Tm|timer2\(21) $ (((!\Tm|Add1~77\ & \Tm|Add1~107\) # (\Tm|Add1~77\ & \Tm|Add1~107COUT1_137\))))
-- \Tm|Add1~97\ = CARRY(((!\Tm|Add1~107COUT1_137\) # (!\Tm|timer2\(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(21),
	cin => \Tm|Add1~77\,
	cin0 => \Tm|Add1~107\,
	cin1 => \Tm|Add1~107COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~95_combout\,
	cout => \Tm|Add1~97\);

-- Location: LC_X7_Y7_N6
\Tm|timer2[21]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(21) = DFFEAS(((!\reset~combout\ & (\Tm|Equal4~7_combout\ & \Tm|Add1~95_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal4~7_combout\,
	datad => \Tm|Add1~95_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(21));

-- Location: LC_X7_Y6_N5
\Tm|Add1~100\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~100_combout\ = (\Tm|timer2\(22) $ ((!\Tm|Add1~97\)))
-- \Tm|Add1~102\ = CARRY(((\Tm|timer2\(22) & !\Tm|Add1~97\)))
-- \Tm|Add1~102COUT1_138\ = CARRY(((\Tm|timer2\(22) & !\Tm|Add1~97\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer2\(22),
	cin => \Tm|Add1~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~100_combout\,
	cout0 => \Tm|Add1~102\,
	cout1 => \Tm|Add1~102COUT1_138\);

-- Location: LC_X7_Y7_N7
\Tm|timer2[22]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(22) = DFFEAS(((!\reset~combout\ & (\Tm|Equal4~7_combout\ & \Tm|Add1~100_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Equal4~7_combout\,
	datad => \Tm|Add1~100_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(22));

-- Location: LC_X7_Y6_N6
\Tm|Add1~110\ : maxv_lcell
-- Equation(s):
-- \Tm|Add1~110_combout\ = (((!\Tm|Add1~97\ & \Tm|Add1~102\) # (\Tm|Add1~97\ & \Tm|Add1~102COUT1_138\) $ (\Tm|timer2\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tm|timer2\(23),
	cin => \Tm|Add1~97\,
	cin0 => \Tm|Add1~102\,
	cin1 => \Tm|Add1~102COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add1~110_combout\);

-- Location: LC_X7_Y7_N8
\Tm|timer2[23]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer2\(23) = DFFEAS(((!\reset~combout\ & (\Tm|Add1~110_combout\ & \Tm|Equal4~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer2[15]~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datac => \Tm|Add1~110_combout\,
	datad => \Tm|Equal4~7_combout\,
	aclr => GND,
	ena => \Tm|timer2[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer2\(23));

-- Location: LC_X7_Y7_N2
\Tm|Equal4~6\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~6_combout\ = ((\Tm|timer2\(22)) # ((\Tm|timer2\(21)) # (!\Tm|timer2\(20)))) # (!\Tm|timer2\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(23),
	datab => \Tm|timer2\(22),
	datac => \Tm|timer2\(21),
	datad => \Tm|timer2\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~6_combout\);

-- Location: LC_X5_Y7_N8
\Tm|Equal4~3\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~3_combout\ = ((\Tm|timer2\(13)) # ((\Tm|timer2\(14)) # (!\Tm|timer2\(15)))) # (!\Tm|timer2\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(12),
	datab => \Tm|timer2\(13),
	datac => \Tm|timer2\(15),
	datad => \Tm|timer2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~3_combout\);

-- Location: LC_X6_Y7_N1
\Tm|Equal4~2\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~2_combout\ = (\Tm|timer2\(8)) # (((\Tm|timer2\(11)) # (!\Tm|timer2\(10))) # (!\Tm|timer2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(8),
	datab => \Tm|timer2\(9),
	datac => \Tm|timer2\(10),
	datad => \Tm|timer2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~2_combout\);

-- Location: LC_X6_Y7_N7
\Tm|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~0_combout\ = (((\Tm|timer2\(0)) # (!\Tm|timer2\(3))) # (!\Tm|timer2\(2))) # (!\Tm|timer2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(1),
	datab => \Tm|timer2\(2),
	datac => \Tm|timer2\(3),
	datad => \Tm|timer2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~0_combout\);

-- Location: LC_X6_Y7_N8
\Tm|Equal4~1\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~1_combout\ = ((\Tm|timer2\(7)) # ((!\Tm|timer2\(6)) # (!\Tm|timer2\(4)))) # (!\Tm|timer2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer2\(5),
	datab => \Tm|timer2\(7),
	datac => \Tm|timer2\(4),
	datad => \Tm|timer2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~1_combout\);

-- Location: LC_X6_Y7_N4
\Tm|Equal4~4\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~4_combout\ = (\Tm|Equal4~3_combout\) # ((\Tm|Equal4~2_combout\) # ((\Tm|Equal4~0_combout\) # (\Tm|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|Equal4~3_combout\,
	datab => \Tm|Equal4~2_combout\,
	datac => \Tm|Equal4~0_combout\,
	datad => \Tm|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~4_combout\);

-- Location: LC_X6_Y7_N5
\Tm|Equal4~7\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal4~7_combout\ = ((\Tm|Equal4~5_combout\) # ((\Tm|Equal4~6_combout\) # (\Tm|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|Equal4~5_combout\,
	datac => \Tm|Equal4~6_combout\,
	datad => \Tm|Equal4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal4~7_combout\);

-- Location: LC_X5_Y8_N7
\Tm|LED~1\ : maxv_lcell
-- Equation(s):
-- \Tm|LED~1_combout\ = (!\out_sig[0]~0_combout\ & ((\out_sig[1]~1_combout\ & ((\Tm|Equal4~7_combout\))) # (!\out_sig[1]~1_combout\ & (\Tm|LED\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|LED\(1),
	datab => \out_sig[0]~0_combout\,
	datac => \out_sig[1]~1_combout\,
	datad => \Tm|Equal4~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|LED~1_combout\);

-- Location: LC_X5_Y8_N8
\Tm|LED[1]\ : maxv_lcell
-- Equation(s):
-- \Tm|LED\(1) = DFFEAS((!\reset~combout\ & (\Tm|LED~1_combout\ & ((\Selector5~5_combout\) # (\Selector4~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Selector5~5_combout\,
	datab => \Selector4~0_combout\,
	datac => \reset~combout\,
	datad => \Tm|LED~1_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|LED\(1));

-- Location: LC_X4_Y8_N5
\Tm|Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal1~4_combout\ = (((!\out_sig[0]~0_combout\) # (!\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Selector4~0_combout\,
	datad => \out_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal1~4_combout\);

-- Location: LC_X3_Y8_N4
\Tm|timer3[0]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(0) = DFFEAS((!\reset~combout\ & ((\Tm|timer3\(0) & ((\Tm|Equal1~4_combout\))) # (!\Tm|timer3\(0) & (\Tm|Equal6~7_combout\ & !\Tm|Equal1~4_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5004",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \Tm|Equal6~7_combout\,
	datac => \Tm|timer3\(0),
	datad => \Tm|Equal1~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(0));

-- Location: LC_X2_Y9_N4
\Tm|Add2~112\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~112_cout\ = CARRY(((!\Tm|timer3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~110\,
	cout => \Tm|Add2~112_cout\);

-- Location: LC_X2_Y9_N5
\Tm|Add2~0\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~0_combout\ = (\Tm|timer3\(1) $ ((\Tm|Add2~112_cout\)))
-- \Tm|Add2~2\ = CARRY(((!\Tm|Add2~112_cout\) # (!\Tm|timer3\(1))))
-- \Tm|Add2~2COUT1_116\ = CARRY(((!\Tm|Add2~112_cout\) # (!\Tm|timer3\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(1),
	cin => \Tm|Add2~112_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~0_combout\,
	cout0 => \Tm|Add2~2\,
	cout1 => \Tm|Add2~2COUT1_116\);

-- Location: LC_X4_Y7_N8
\Tm|timer3[8]~2\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3[8]~2_combout\ = (\reset~combout\) # ((\Selector4~0_combout\ & ((\out_sig[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Selector4~0_combout\,
	datad => \out_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|timer3[8]~2_combout\);

-- Location: LC_X3_Y8_N6
\Tm|timer3[1]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(1) = DFFEAS(((\Tm|Equal6~7_combout\ & (!\reset~combout\ & \Tm|Add2~0_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal6~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add2~0_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(1));

-- Location: LC_X2_Y9_N6
\Tm|Add2~25\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~25_combout\ = \Tm|timer3\(2) $ ((((!(!\Tm|Add2~112_cout\ & \Tm|Add2~2\) # (\Tm|Add2~112_cout\ & \Tm|Add2~2COUT1_116\)))))
-- \Tm|Add2~27\ = CARRY((\Tm|timer3\(2) & ((!\Tm|Add2~2\))))
-- \Tm|Add2~27COUT1_117\ = CARRY((\Tm|timer3\(2) & ((!\Tm|Add2~2COUT1_116\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(2),
	cin => \Tm|Add2~112_cout\,
	cin0 => \Tm|Add2~2\,
	cin1 => \Tm|Add2~2COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~25_combout\,
	cout0 => \Tm|Add2~27\,
	cout1 => \Tm|Add2~27COUT1_117\);

-- Location: LC_X2_Y9_N3
\Tm|timer3[2]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(2) = DFFEAS((!\reset~combout\ & (((\Tm|Add2~25_combout\ & \Tm|Equal6~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add2~25_combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(2));

-- Location: LC_X2_Y9_N7
\Tm|Add2~30\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~30_combout\ = (\Tm|timer3\(3) $ (((!\Tm|Add2~112_cout\ & \Tm|Add2~27\) # (\Tm|Add2~112_cout\ & \Tm|Add2~27COUT1_117\))))
-- \Tm|Add2~32\ = CARRY(((!\Tm|Add2~27\) # (!\Tm|timer3\(3))))
-- \Tm|Add2~32COUT1_118\ = CARRY(((!\Tm|Add2~27COUT1_117\) # (!\Tm|timer3\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(3),
	cin => \Tm|Add2~112_cout\,
	cin0 => \Tm|Add2~27\,
	cin1 => \Tm|Add2~27COUT1_117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~30_combout\,
	cout0 => \Tm|Add2~32\,
	cout1 => \Tm|Add2~32COUT1_118\);

-- Location: LC_X2_Y9_N1
\Tm|timer3[3]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(3) = DFFEAS(((\Tm|Add2~30_combout\ & (!\reset~combout\ & \Tm|Equal6~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Add2~30_combout\,
	datac => \reset~combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(3));

-- Location: LC_X2_Y9_N8
\Tm|Add2~15\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~15_combout\ = (\Tm|timer3\(4) $ ((!(!\Tm|Add2~112_cout\ & \Tm|Add2~32\) # (\Tm|Add2~112_cout\ & \Tm|Add2~32COUT1_118\))))
-- \Tm|Add2~17\ = CARRY(((\Tm|timer3\(4) & !\Tm|Add2~32\)))
-- \Tm|Add2~17COUT1_119\ = CARRY(((\Tm|timer3\(4) & !\Tm|Add2~32COUT1_118\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(4),
	cin => \Tm|Add2~112_cout\,
	cin0 => \Tm|Add2~32\,
	cin1 => \Tm|Add2~32COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~15_combout\,
	cout0 => \Tm|Add2~17\,
	cout1 => \Tm|Add2~17COUT1_119\);

-- Location: LC_X2_Y9_N2
\Tm|timer3[4]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(4) = DFFEAS((\Tm|Add2~15_combout\ & (((!\reset~combout\ & \Tm|Equal6~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Tm|Add2~15_combout\,
	datac => \reset~combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(4));

-- Location: LC_X2_Y9_N9
\Tm|Add2~20\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~20_combout\ = (\Tm|timer3\(5) $ (((!\Tm|Add2~112_cout\ & \Tm|Add2~17\) # (\Tm|Add2~112_cout\ & \Tm|Add2~17COUT1_119\))))
-- \Tm|Add2~22\ = CARRY(((!\Tm|Add2~17COUT1_119\) # (!\Tm|timer3\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(5),
	cin => \Tm|Add2~112_cout\,
	cin0 => \Tm|Add2~17\,
	cin1 => \Tm|Add2~17COUT1_119\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~20_combout\,
	cout => \Tm|Add2~22\);

-- Location: LC_X2_Y9_N0
\Tm|timer3[5]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(5) = DFFEAS(((\Tm|Add2~20_combout\ & (!\reset~combout\ & \Tm|Equal6~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Add2~20_combout\,
	datac => \reset~combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(5));

-- Location: LC_X3_Y9_N0
\Tm|Add2~5\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~5_combout\ = (\Tm|timer3\(6) $ ((!\Tm|Add2~22\)))
-- \Tm|Add2~7\ = CARRY(((\Tm|timer3\(6) & !\Tm|Add2~22\)))
-- \Tm|Add2~7COUT1_120\ = CARRY(((\Tm|timer3\(6) & !\Tm|Add2~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(6),
	cin => \Tm|Add2~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~5_combout\,
	cout0 => \Tm|Add2~7\,
	cout1 => \Tm|Add2~7COUT1_120\);

-- Location: LC_X3_Y8_N8
\Tm|timer3[6]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(6) = DFFEAS((!\reset~combout\ & (((\Tm|Add2~5_combout\ & \Tm|Equal6~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add2~5_combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(6));

-- Location: LC_X3_Y9_N1
\Tm|Add2~10\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~10_combout\ = (\Tm|timer3\(7) $ (((!\Tm|Add2~22\ & \Tm|Add2~7\) # (\Tm|Add2~22\ & \Tm|Add2~7COUT1_120\))))
-- \Tm|Add2~12\ = CARRY(((!\Tm|Add2~7\) # (!\Tm|timer3\(7))))
-- \Tm|Add2~12COUT1_121\ = CARRY(((!\Tm|Add2~7COUT1_120\) # (!\Tm|timer3\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(7),
	cin => \Tm|Add2~22\,
	cin0 => \Tm|Add2~7\,
	cin1 => \Tm|Add2~7COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~10_combout\,
	cout0 => \Tm|Add2~12\,
	cout1 => \Tm|Add2~12COUT1_121\);

-- Location: LC_X3_Y8_N7
\Tm|timer3[7]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(7) = DFFEAS(((\Tm|Equal6~7_combout\ & (!\reset~combout\ & \Tm|Add2~10_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal6~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add2~10_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(7));

-- Location: LC_X3_Y9_N2
\Tm|Add2~40\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~40_combout\ = (\Tm|timer3\(8) $ ((!(!\Tm|Add2~22\ & \Tm|Add2~12\) # (\Tm|Add2~22\ & \Tm|Add2~12COUT1_121\))))
-- \Tm|Add2~42\ = CARRY(((\Tm|timer3\(8) & !\Tm|Add2~12\)))
-- \Tm|Add2~42COUT1_122\ = CARRY(((\Tm|timer3\(8) & !\Tm|Add2~12COUT1_121\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(8),
	cin => \Tm|Add2~22\,
	cin0 => \Tm|Add2~12\,
	cin1 => \Tm|Add2~12COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~40_combout\,
	cout0 => \Tm|Add2~42\,
	cout1 => \Tm|Add2~42COUT1_122\);

-- Location: LC_X3_Y7_N6
\Tm|timer3[8]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(8) = DFFEAS((!\reset~combout\ & (((\Tm|Add2~40_combout\ & \Tm|Equal6~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add2~40_combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(8));

-- Location: LC_X3_Y9_N3
\Tm|Add2~45\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~45_combout\ = (\Tm|timer3\(9) $ (((!\Tm|Add2~22\ & \Tm|Add2~42\) # (\Tm|Add2~22\ & \Tm|Add2~42COUT1_122\))))
-- \Tm|Add2~47\ = CARRY(((!\Tm|Add2~42\) # (!\Tm|timer3\(9))))
-- \Tm|Add2~47COUT1_123\ = CARRY(((!\Tm|Add2~42COUT1_122\) # (!\Tm|timer3\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(9),
	cin => \Tm|Add2~22\,
	cin0 => \Tm|Add2~42\,
	cin1 => \Tm|Add2~42COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~45_combout\,
	cout0 => \Tm|Add2~47\,
	cout1 => \Tm|Add2~47COUT1_123\);

-- Location: LC_X3_Y7_N2
\Tm|timer3[9]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(9) = DFFEAS(((\Tm|Add2~45_combout\ & (!\reset~combout\ & \Tm|Equal6~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Add2~45_combout\,
	datac => \reset~combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(9));

-- Location: LC_X3_Y9_N4
\Tm|Add2~35\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~35_combout\ = (\Tm|timer3\(10) $ ((!(!\Tm|Add2~22\ & \Tm|Add2~47\) # (\Tm|Add2~22\ & \Tm|Add2~47COUT1_123\))))
-- \Tm|Add2~37\ = CARRY(((\Tm|timer3\(10) & !\Tm|Add2~47COUT1_123\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(10),
	cin => \Tm|Add2~22\,
	cin0 => \Tm|Add2~47\,
	cin1 => \Tm|Add2~47COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~35_combout\,
	cout => \Tm|Add2~37\);

-- Location: LC_X3_Y7_N3
\Tm|timer3[10]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(10) = DFFEAS(((\Tm|Add2~35_combout\ & (!\reset~combout\ & \Tm|Equal6~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Add2~35_combout\,
	datac => \reset~combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(10));

-- Location: LC_X3_Y9_N5
\Tm|Add2~50\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~50_combout\ = (\Tm|timer3\(11) $ ((\Tm|Add2~37\)))
-- \Tm|Add2~52\ = CARRY(((!\Tm|Add2~37\) # (!\Tm|timer3\(11))))
-- \Tm|Add2~52COUT1_124\ = CARRY(((!\Tm|Add2~37\) # (!\Tm|timer3\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(11),
	cin => \Tm|Add2~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~50_combout\,
	cout0 => \Tm|Add2~52\,
	cout1 => \Tm|Add2~52COUT1_124\);

-- Location: LC_X3_Y7_N1
\Tm|timer3[11]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(11) = DFFEAS((!\reset~combout\ & (((\Tm|Add2~50_combout\ & \Tm|Equal6~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add2~50_combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(11));

-- Location: LC_X3_Y9_N6
\Tm|Add2~55\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~55_combout\ = \Tm|timer3\(12) $ ((((!(!\Tm|Add2~37\ & \Tm|Add2~52\) # (\Tm|Add2~37\ & \Tm|Add2~52COUT1_124\)))))
-- \Tm|Add2~57\ = CARRY((\Tm|timer3\(12) & ((!\Tm|Add2~52\))))
-- \Tm|Add2~57COUT1_125\ = CARRY((\Tm|timer3\(12) & ((!\Tm|Add2~52COUT1_124\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(12),
	cin => \Tm|Add2~37\,
	cin0 => \Tm|Add2~52\,
	cin1 => \Tm|Add2~52COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~55_combout\,
	cout0 => \Tm|Add2~57\,
	cout1 => \Tm|Add2~57COUT1_125\);

-- Location: LC_X4_Y8_N2
\Tm|timer3[12]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(12) = DFFEAS((!\reset~combout\ & (((\Tm|Equal6~7_combout\ & \Tm|Add2~55_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal6~7_combout\,
	datad => \Tm|Add2~55_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(12));

-- Location: LC_X3_Y9_N7
\Tm|Add2~60\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~60_combout\ = (\Tm|timer3\(13) $ (((!\Tm|Add2~37\ & \Tm|Add2~57\) # (\Tm|Add2~37\ & \Tm|Add2~57COUT1_125\))))
-- \Tm|Add2~62\ = CARRY(((!\Tm|Add2~57\) # (!\Tm|timer3\(13))))
-- \Tm|Add2~62COUT1_126\ = CARRY(((!\Tm|Add2~57COUT1_125\) # (!\Tm|timer3\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(13),
	cin => \Tm|Add2~37\,
	cin0 => \Tm|Add2~57\,
	cin1 => \Tm|Add2~57COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~60_combout\,
	cout0 => \Tm|Add2~62\,
	cout1 => \Tm|Add2~62COUT1_126\);

-- Location: LC_X3_Y8_N5
\Tm|timer3[13]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(13) = DFFEAS((!\reset~combout\ & (((\Tm|Add2~60_combout\ & \Tm|Equal6~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add2~60_combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(13));

-- Location: LC_X3_Y9_N8
\Tm|Add2~70\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~70_combout\ = (\Tm|timer3\(14) $ ((!(!\Tm|Add2~37\ & \Tm|Add2~62\) # (\Tm|Add2~37\ & \Tm|Add2~62COUT1_126\))))
-- \Tm|Add2~72\ = CARRY(((\Tm|timer3\(14) & !\Tm|Add2~62\)))
-- \Tm|Add2~72COUT1_127\ = CARRY(((\Tm|timer3\(14) & !\Tm|Add2~62COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(14),
	cin => \Tm|Add2~37\,
	cin0 => \Tm|Add2~62\,
	cin1 => \Tm|Add2~62COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~70_combout\,
	cout0 => \Tm|Add2~72\,
	cout1 => \Tm|Add2~72COUT1_127\);

-- Location: LC_X4_Y8_N6
\Tm|timer3[14]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(14) = DFFEAS((!\reset~combout\ & (((\Tm|Equal6~7_combout\ & \Tm|Add2~70_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal6~7_combout\,
	datad => \Tm|Add2~70_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(14));

-- Location: LC_X3_Y9_N9
\Tm|Add2~65\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~65_combout\ = (\Tm|timer3\(15) $ (((!\Tm|Add2~37\ & \Tm|Add2~72\) # (\Tm|Add2~37\ & \Tm|Add2~72COUT1_127\))))
-- \Tm|Add2~67\ = CARRY(((!\Tm|Add2~72COUT1_127\) # (!\Tm|timer3\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(15),
	cin => \Tm|Add2~37\,
	cin0 => \Tm|Add2~72\,
	cin1 => \Tm|Add2~72COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~65_combout\,
	cout => \Tm|Add2~67\);

-- Location: LC_X4_Y8_N4
\Tm|timer3[15]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(15) = DFFEAS((!\reset~combout\ & (\Tm|Add2~65_combout\ & (\Tm|Equal6~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datab => \Tm|Add2~65_combout\,
	datac => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(15));

-- Location: LC_X3_Y8_N3
\Tm|Equal6~4\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~4_combout\ = (\Tm|timer3\(13)) # ((\Tm|timer3\(12)) # ((\Tm|timer3\(15)) # (!\Tm|timer3\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(13),
	datab => \Tm|timer3\(12),
	datac => \Tm|timer3\(14),
	datad => \Tm|timer3\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~4_combout\);

-- Location: LC_X3_Y7_N8
\Tm|Equal6~3\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~3_combout\ = (\Tm|timer3\(10)) # (((!\Tm|timer3\(11)) # (!\Tm|timer3\(8))) # (!\Tm|timer3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(10),
	datab => \Tm|timer3\(9),
	datac => \Tm|timer3\(8),
	datad => \Tm|timer3\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~3_combout\);

-- Location: LC_X4_Y9_N0
\Tm|Add2~75\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~75_combout\ = (\Tm|timer3\(16) $ ((!\Tm|Add2~67\)))
-- \Tm|Add2~77\ = CARRY(((\Tm|timer3\(16) & !\Tm|Add2~67\)))
-- \Tm|Add2~77COUT1_128\ = CARRY(((\Tm|timer3\(16) & !\Tm|Add2~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(16),
	cin => \Tm|Add2~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~75_combout\,
	cout0 => \Tm|Add2~77\,
	cout1 => \Tm|Add2~77COUT1_128\);

-- Location: LC_X4_Y9_N9
\Tm|timer3[16]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(16) = DFFEAS((!\reset~combout\ & (((\Tm|Add2~75_combout\ & \Tm|Equal6~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Add2~75_combout\,
	datad => \Tm|Equal6~7_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(16));

-- Location: LC_X4_Y9_N1
\Tm|Add2~80\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~80_combout\ = (\Tm|timer3\(17) $ (((!\Tm|Add2~67\ & \Tm|Add2~77\) # (\Tm|Add2~67\ & \Tm|Add2~77COUT1_128\))))
-- \Tm|Add2~82\ = CARRY(((!\Tm|Add2~77\) # (!\Tm|timer3\(17))))
-- \Tm|Add2~82COUT1_129\ = CARRY(((!\Tm|Add2~77COUT1_128\) # (!\Tm|timer3\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(17),
	cin => \Tm|Add2~67\,
	cin0 => \Tm|Add2~77\,
	cin1 => \Tm|Add2~77COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~80_combout\,
	cout0 => \Tm|Add2~82\,
	cout1 => \Tm|Add2~82COUT1_129\);

-- Location: LC_X4_Y8_N3
\Tm|timer3[17]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(17) = DFFEAS((!\reset~combout\ & (((\Tm|Equal6~7_combout\ & \Tm|Add2~80_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal6~7_combout\,
	datad => \Tm|Add2~80_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(17));

-- Location: LC_X4_Y9_N2
\Tm|Add2~85\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~85_combout\ = \Tm|timer3\(18) $ ((((!(!\Tm|Add2~67\ & \Tm|Add2~82\) # (\Tm|Add2~67\ & \Tm|Add2~82COUT1_129\)))))
-- \Tm|Add2~87\ = CARRY((\Tm|timer3\(18) & ((!\Tm|Add2~82\))))
-- \Tm|Add2~87COUT1_130\ = CARRY((\Tm|timer3\(18) & ((!\Tm|Add2~82COUT1_129\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(18),
	cin => \Tm|Add2~67\,
	cin0 => \Tm|Add2~82\,
	cin1 => \Tm|Add2~82COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~85_combout\,
	cout0 => \Tm|Add2~87\,
	cout1 => \Tm|Add2~87COUT1_130\);

-- Location: LC_X4_Y9_N8
\Tm|timer3[18]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(18) = DFFEAS(((\Tm|Equal6~7_combout\ & (!\reset~combout\ & \Tm|Add2~85_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal6~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add2~85_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(18));

-- Location: LC_X4_Y9_N3
\Tm|Add2~90\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~90_combout\ = (\Tm|timer3\(19) $ (((!\Tm|Add2~67\ & \Tm|Add2~87\) # (\Tm|Add2~67\ & \Tm|Add2~87COUT1_130\))))
-- \Tm|Add2~92\ = CARRY(((!\Tm|Add2~87\) # (!\Tm|timer3\(19))))
-- \Tm|Add2~92COUT1_131\ = CARRY(((!\Tm|Add2~87COUT1_130\) # (!\Tm|timer3\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(19),
	cin => \Tm|Add2~67\,
	cin0 => \Tm|Add2~87\,
	cin1 => \Tm|Add2~87COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~90_combout\,
	cout0 => \Tm|Add2~92\,
	cout1 => \Tm|Add2~92COUT1_131\);

-- Location: LC_X4_Y9_N7
\Tm|timer3[19]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(19) = DFFEAS(((\Tm|Equal6~7_combout\ & (!\reset~combout\ & \Tm|Add2~90_combout\))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \Tm|Equal6~7_combout\,
	datac => \reset~combout\,
	datad => \Tm|Add2~90_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(19));

-- Location: LC_X4_Y9_N4
\Tm|Add2~95\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~95_combout\ = (\Tm|timer3\(20) $ ((!(!\Tm|Add2~67\ & \Tm|Add2~92\) # (\Tm|Add2~67\ & \Tm|Add2~92COUT1_131\))))
-- \Tm|Add2~97\ = CARRY(((\Tm|timer3\(20) & !\Tm|Add2~92COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tm|timer3\(20),
	cin => \Tm|Add2~67\,
	cin0 => \Tm|Add2~92\,
	cin1 => \Tm|Add2~92COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~95_combout\,
	cout => \Tm|Add2~97\);

-- Location: LC_X4_Y8_N0
\Tm|timer3[20]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(20) = DFFEAS((!\reset~combout\ & (((\Tm|Equal6~7_combout\ & \Tm|Add2~95_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal6~7_combout\,
	datad => \Tm|Add2~95_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(20));

-- Location: LC_X4_Y9_N5
\Tm|Add2~100\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~100_combout\ = \Tm|timer3\(21) $ ((((\Tm|Add2~97\))))
-- \Tm|Add2~102\ = CARRY(((!\Tm|Add2~97\)) # (!\Tm|timer3\(21)))
-- \Tm|Add2~102COUT1_132\ = CARRY(((!\Tm|Add2~97\)) # (!\Tm|timer3\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(21),
	cin => \Tm|Add2~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~100_combout\,
	cout0 => \Tm|Add2~102\,
	cout1 => \Tm|Add2~102COUT1_132\);

-- Location: LC_X4_Y8_N1
\Tm|timer3[21]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(21) = DFFEAS((!\reset~combout\ & (((\Tm|Equal6~7_combout\ & \Tm|Add2~100_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal6~7_combout\,
	datad => \Tm|Add2~100_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(21));

-- Location: LC_X4_Y9_N6
\Tm|Add2~105\ : maxv_lcell
-- Equation(s):
-- \Tm|Add2~105_combout\ = (((!\Tm|Add2~97\ & \Tm|Add2~102\) # (\Tm|Add2~97\ & \Tm|Add2~102COUT1_132\) $ (!\Tm|timer3\(22))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tm|timer3\(22),
	cin => \Tm|Add2~97\,
	cin0 => \Tm|Add2~102\,
	cin1 => \Tm|Add2~102COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Add2~105_combout\);

-- Location: LC_X4_Y8_N7
\Tm|timer3[22]\ : maxv_lcell
-- Equation(s):
-- \Tm|timer3\(22) = DFFEAS((!\reset~combout\ & (((\Tm|Equal6~7_combout\ & \Tm|Add2~105_combout\)))), GLOBAL(\clock_50~combout\), VCC, , \Tm|timer3[8]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \reset~combout\,
	datac => \Tm|Equal6~7_combout\,
	datad => \Tm|Add2~105_combout\,
	aclr => GND,
	ena => \Tm|timer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|timer3\(22));

-- Location: LC_X4_Y8_N8
\Tm|Equal6~5\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~5_combout\ = (\Tm|timer3\(17)) # ((\Tm|timer3\(16)) # ((!\Tm|timer3\(18)) # (!\Tm|timer3\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(17),
	datab => \Tm|timer3\(16),
	datac => \Tm|timer3\(19),
	datad => \Tm|timer3\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~5_combout\);

-- Location: LC_X4_Y8_N9
\Tm|Equal6~6\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~6_combout\ = ((\Tm|timer3\(21)) # ((\Tm|timer3\(20)) # (\Tm|Equal6~5_combout\))) # (!\Tm|timer3\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(22),
	datab => \Tm|timer3\(21),
	datac => \Tm|timer3\(20),
	datad => \Tm|Equal6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~6_combout\);

-- Location: LC_X3_Y8_N2
\Tm|Equal6~0\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~0_combout\ = (((\Tm|timer3\(0)))) # (!\Tm|timer3\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(1),
	datac => \Tm|timer3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~0_combout\);

-- Location: LC_X3_Y8_N9
\Tm|Equal6~1\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~1_combout\ = (\Tm|timer3\(6)) # (((\Tm|timer3\(7)) # (!\Tm|timer3\(4))) # (!\Tm|timer3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(6),
	datab => \Tm|timer3\(5),
	datac => \Tm|timer3\(7),
	datad => \Tm|timer3\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~1_combout\);

-- Location: LC_X3_Y8_N0
\Tm|Equal6~2\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~2_combout\ = ((\Tm|Equal6~0_combout\) # ((\Tm|Equal6~1_combout\) # (!\Tm|timer3\(3)))) # (!\Tm|timer3\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|timer3\(2),
	datab => \Tm|Equal6~0_combout\,
	datac => \Tm|timer3\(3),
	datad => \Tm|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~2_combout\);

-- Location: LC_X3_Y8_N1
\Tm|Equal6~7\ : maxv_lcell
-- Equation(s):
-- \Tm|Equal6~7_combout\ = (\Tm|Equal6~4_combout\) # ((\Tm|Equal6~3_combout\) # ((\Tm|Equal6~6_combout\) # (\Tm|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|Equal6~4_combout\,
	datab => \Tm|Equal6~3_combout\,
	datac => \Tm|Equal6~6_combout\,
	datad => \Tm|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|Equal6~7_combout\);

-- Location: LC_X5_Y8_N4
\Tm|LED~2\ : maxv_lcell
-- Equation(s):
-- \Tm|LED~2_combout\ = (\out_sig[0]~0_combout\ & (((\out_sig[1]~1_combout\ & \Tm|Equal6~7_combout\)))) # (!\out_sig[0]~0_combout\ & (\Tm|LED\(2) & (!\out_sig[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|LED\(2),
	datab => \out_sig[0]~0_combout\,
	datac => \out_sig[1]~1_combout\,
	datad => \Tm|Equal6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|LED~2_combout\);

-- Location: LC_X5_Y8_N5
\Tm|LED[2]\ : maxv_lcell
-- Equation(s):
-- \Tm|LED\(2) = DFFEAS((!\reset~combout\ & (\Tm|LED~2_combout\ & ((\Selector5~5_combout\) # (\Selector4~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \Selector5~5_combout\,
	datab => \Selector4~0_combout\,
	datac => \reset~combout\,
	datad => \Tm|LED~2_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|LED\(2));

-- Location: LC_X6_Y8_N3
\Tm|LED~3\ : maxv_lcell
-- Equation(s):
-- \Tm|LED~3_combout\ = (\Tm|LED\(3) & ((\reset~combout\) # ((!\Selector5~5_combout\ & !\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tm|LED\(3),
	datab => \Selector5~5_combout\,
	datac => \reset~combout\,
	datad => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tm|LED~3_combout\);

-- Location: LC_X6_Y8_N4
\Tm|LED[3]\ : maxv_lcell
-- Equation(s):
-- \Tm|LED\(3) = DFFEAS(((\Tm|LED~3_combout\) # ((!\out_sig[1]~1_combout\ & !\out_sig[0]~0_combout\))), GLOBAL(\clock_50~combout\), VCC, , , VCC, , , \reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \out_sig[1]~1_combout\,
	datab => \out_sig[0]~0_combout\,
	datac => VCC,
	datad => \Tm|LED~3_combout\,
	aclr => GND,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tm|LED\(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_1);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Tm|LED\(0),
	oe => VCC,
	padio => ww_out_LED(0));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Tm|LED\(1),
	oe => VCC,
	padio => ww_out_LED(1));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Tm|LED\(2),
	oe => VCC,
	padio => ww_out_LED(2));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Tm|LED\(3),
	oe => VCC,
	padio => ww_out_LED(3));
END structure;


