-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "02/01/2018 15:13:11"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Uni_Shift_Reg IS
    PORT (
	CLOCK : IN std_logic;
	BUTTON : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0)
	);
END Uni_Shift_Reg;

-- Design Ports Information
-- BUTTON[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Uni_Shift_Reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_BUTTON : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL \Clk1sec~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~0_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~1_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~3_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~5_combout\ : std_logic;
SIGNAL \BUTTON[1]~input_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDG[9]~output_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \BUTTON[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~9_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~8_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~6_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~2_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Clk1sec_cnt~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Clk1sec~0_combout\ : std_logic;
SIGNAL \Clk1sec~feeder_combout\ : std_logic;
SIGNAL \Clk1sec~q\ : std_logic;
SIGNAL \Clk1sec~clkctrl_outclk\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \unishftreg8~9_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \unishftreg8~16_combout\ : std_logic;
SIGNAL \unishftreg8[7]~7_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \BUTTON[2]~input_o\ : std_logic;
SIGNAL \unishftreg8~15_combout\ : std_logic;
SIGNAL \unishftreg8[6]~6_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \unishftreg8~14_combout\ : std_logic;
SIGNAL \unishftreg8[5]~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \unishftreg8~13_combout\ : std_logic;
SIGNAL \unishftreg8[4]~4_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \unishftreg8~12_combout\ : std_logic;
SIGNAL \unishftreg8[3]~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \unishftreg8~11_combout\ : std_logic;
SIGNAL \unishftreg8[2]~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \unishftreg8~10_combout\ : std_logic;
SIGNAL \unishftreg8[1]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \unishftreg8~8_combout\ : std_logic;
SIGNAL \unishftreg8[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL unishftreg8 : std_logic_vector(7 DOWNTO 0);
SIGNAL Clk1sec_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_BUTTON[2]~input_o\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_BUTTON <= BUTTON;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk1sec~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk1sec~q\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\ALT_INV_BUTTON[2]~input_o\ <= NOT \BUTTON[2]~input_o\;

-- Location: LCCOMB_X23_Y4_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (Clk1sec_cnt(3) & (!\Add0~5\)) # (!Clk1sec_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!Clk1sec_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y4_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (Clk1sec_cnt(11) & (!\Add0~21\)) # (!Clk1sec_cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!Clk1sec_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X23_Y4_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (Clk1sec_cnt(12) & (\Add0~23\ $ (GND))) # (!Clk1sec_cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((Clk1sec_cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X23_Y4_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (Clk1sec_cnt(14) & (\Add0~27\ $ (GND))) # (!Clk1sec_cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((Clk1sec_cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X23_Y3_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (Clk1sec_cnt(16) & (\Add0~31\ $ (GND))) # (!Clk1sec_cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((Clk1sec_cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X23_Y3_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (Clk1sec_cnt(19) & (!\Add0~37\)) # (!Clk1sec_cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!Clk1sec_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X23_Y3_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (Clk1sec_cnt(22) & (\Add0~43\ $ (GND))) # (!Clk1sec_cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((Clk1sec_cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X23_Y3_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (Clk1sec_cnt(30) & (\Add0~59\ $ (GND))) # (!Clk1sec_cnt(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((Clk1sec_cnt(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X23_Y3_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = Clk1sec_cnt(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X23_Y3_N31
\Clk1sec_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(31));

-- Location: FF_X23_Y3_N13
\Clk1sec_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(22));

-- Location: FF_X22_Y3_N27
\Clk1sec_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(19));

-- Location: FF_X22_Y3_N11
\Clk1sec_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~1_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(16));

-- Location: LCCOMB_X22_Y3_N30
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (Clk1sec_cnt(16) & (Clk1sec_cnt(19) & (!Clk1sec_cnt(18) & !Clk1sec_cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(16),
	datab => Clk1sec_cnt(19),
	datac => Clk1sec_cnt(18),
	datad => Clk1sec_cnt(17),
	combout => \Equal0~3_combout\);

-- Location: FF_X22_Y4_N11
\Clk1sec_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~3_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(14));

-- Location: FF_X22_Y4_N15
\Clk1sec_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~5_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(12));

-- Location: LCCOMB_X22_Y4_N8
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (Clk1sec_cnt(14) & (Clk1sec_cnt(15) & (Clk1sec_cnt(12) & Clk1sec_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(14),
	datab => Clk1sec_cnt(15),
	datac => Clk1sec_cnt(12),
	datad => Clk1sec_cnt(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X22_Y4_N12
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (Clk1sec_cnt(9) & !Clk1sec_cnt(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Clk1sec_cnt(9),
	datad => Clk1sec_cnt(8),
	combout => \Equal0~6_combout\);

-- Location: FF_X23_Y4_N23
\Clk1sec_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(11));

-- Location: LCCOMB_X22_Y4_N30
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!Clk1sec_cnt(10) & (!Clk1sec_cnt(11) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(10),
	datab => Clk1sec_cnt(11),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: FF_X23_Y4_N7
\Clk1sec_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(3));

-- Location: LCCOMB_X22_Y3_N26
\Clk1sec_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~0_combout\ = (!\Equal0~10_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~38_combout\,
	combout => \Clk1sec_cnt~0_combout\);

-- Location: LCCOMB_X22_Y3_N10
\Clk1sec_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~1_combout\ = (\Add0~32_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~10_combout\,
	combout => \Clk1sec_cnt~1_combout\);

-- Location: LCCOMB_X22_Y4_N10
\Clk1sec_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~3_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \Clk1sec_cnt~3_combout\);

-- Location: LCCOMB_X22_Y4_N14
\Clk1sec_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~5_combout\ = (!\Equal0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \Clk1sec_cnt~5_combout\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G9
\CLOCK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unishftreg8(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[9]~output_o\);

-- Location: LCCOMB_X23_Y4_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Clk1sec_cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(Clk1sec_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y21_N8
\BUTTON[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(0),
	o => \BUTTON[0]~input_o\);

-- Location: FF_X23_Y4_N1
\Clk1sec_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(0));

-- Location: LCCOMB_X23_Y4_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (Clk1sec_cnt(1) & (!\Add0~1\)) # (!Clk1sec_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!Clk1sec_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X23_Y4_N3
\Clk1sec_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(1));

-- Location: LCCOMB_X23_Y4_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (Clk1sec_cnt(2) & (\Add0~3\ $ (GND))) # (!Clk1sec_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((Clk1sec_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X23_Y4_N5
\Clk1sec_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(2));

-- Location: LCCOMB_X23_Y4_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (Clk1sec_cnt(4) & (\Add0~7\ $ (GND))) # (!Clk1sec_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((Clk1sec_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X23_Y4_N9
\Clk1sec_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(4));

-- Location: LCCOMB_X23_Y4_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (Clk1sec_cnt(5) & (!\Add0~9\)) # (!Clk1sec_cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!Clk1sec_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X22_Y4_N16
\Clk1sec_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~9_combout\ = (\Add0~10_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal0~10_combout\,
	combout => \Clk1sec_cnt~9_combout\);

-- Location: FF_X23_Y4_N19
\Clk1sec_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Clk1sec_cnt~9_combout\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(5));

-- Location: LCCOMB_X23_Y4_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (Clk1sec_cnt(6) & (\Add0~11\ $ (GND))) # (!Clk1sec_cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((Clk1sec_cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X22_Y4_N26
\Clk1sec_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~8_combout\ = (\Add0~12_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Equal0~10_combout\,
	combout => \Clk1sec_cnt~8_combout\);

-- Location: FF_X23_Y4_N29
\Clk1sec_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Clk1sec_cnt~8_combout\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(6));

-- Location: LCCOMB_X23_Y4_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (Clk1sec_cnt(7) & (!\Add0~13\)) # (!Clk1sec_cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!Clk1sec_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X23_Y4_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (Clk1sec_cnt(8) & (\Add0~15\ $ (GND))) # (!Clk1sec_cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((Clk1sec_cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X23_Y4_N17
\Clk1sec_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(8));

-- Location: LCCOMB_X23_Y4_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (Clk1sec_cnt(9) & (!\Add0~17\)) # (!Clk1sec_cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!Clk1sec_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X22_Y4_N22
\Clk1sec_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~6_combout\ = (\Add0~18_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~10_combout\,
	combout => \Clk1sec_cnt~6_combout\);

-- Location: FF_X22_Y4_N23
\Clk1sec_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~6_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(9));

-- Location: LCCOMB_X23_Y4_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (Clk1sec_cnt(10) & (\Add0~19\ $ (GND))) # (!Clk1sec_cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((Clk1sec_cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X23_Y4_N21
\Clk1sec_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(10));

-- Location: LCCOMB_X23_Y4_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (Clk1sec_cnt(13) & (!\Add0~25\)) # (!Clk1sec_cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!Clk1sec_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X22_Y4_N28
\Clk1sec_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~4_combout\ = (!\Equal0~10_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~26_combout\,
	combout => \Clk1sec_cnt~4_combout\);

-- Location: FF_X22_Y4_N29
\Clk1sec_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~4_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(13));

-- Location: LCCOMB_X23_Y4_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (Clk1sec_cnt(15) & (!\Add0~29\)) # (!Clk1sec_cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!Clk1sec_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X22_Y4_N4
\Clk1sec_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~2_combout\ = (\Add0~30_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~10_combout\,
	combout => \Clk1sec_cnt~2_combout\);

-- Location: FF_X22_Y4_N5
\Clk1sec_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~2_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(15));

-- Location: LCCOMB_X23_Y3_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (Clk1sec_cnt(17) & (!\Add0~33\)) # (!Clk1sec_cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!Clk1sec_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X23_Y3_N3
\Clk1sec_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(17));

-- Location: LCCOMB_X23_Y3_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (Clk1sec_cnt(18) & (\Add0~35\ $ (GND))) # (!Clk1sec_cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((Clk1sec_cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X23_Y3_N5
\Clk1sec_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(18));

-- Location: LCCOMB_X23_Y3_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (Clk1sec_cnt(20) & (\Add0~39\ $ (GND))) # (!Clk1sec_cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((Clk1sec_cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X23_Y3_N9
\Clk1sec_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(20));

-- Location: LCCOMB_X23_Y3_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (Clk1sec_cnt(21) & (!\Add0~41\)) # (!Clk1sec_cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!Clk1sec_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X23_Y3_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (Clk1sec_cnt(23) & (!\Add0~45\)) # (!Clk1sec_cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!Clk1sec_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X23_Y3_N15
\Clk1sec_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(23));

-- Location: LCCOMB_X23_Y3_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (Clk1sec_cnt(24) & (\Add0~47\ $ (GND))) # (!Clk1sec_cnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((Clk1sec_cnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X23_Y3_N17
\Clk1sec_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(24));

-- Location: LCCOMB_X23_Y3_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (Clk1sec_cnt(25) & (!\Add0~49\)) # (!Clk1sec_cnt(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!Clk1sec_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X23_Y3_N19
\Clk1sec_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(25));

-- Location: LCCOMB_X23_Y3_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (Clk1sec_cnt(26) & (\Add0~51\ $ (GND))) # (!Clk1sec_cnt(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((Clk1sec_cnt(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X23_Y3_N21
\Clk1sec_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(26));

-- Location: LCCOMB_X23_Y3_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (Clk1sec_cnt(27) & (!\Add0~53\)) # (!Clk1sec_cnt(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!Clk1sec_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X23_Y3_N23
\Clk1sec_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(27));

-- Location: LCCOMB_X22_Y3_N28
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!Clk1sec_cnt(26) & (!Clk1sec_cnt(25) & (!Clk1sec_cnt(27) & !Clk1sec_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(26),
	datab => Clk1sec_cnt(25),
	datac => Clk1sec_cnt(27),
	datad => Clk1sec_cnt(24),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y3_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (Clk1sec_cnt(28) & (\Add0~55\ $ (GND))) # (!Clk1sec_cnt(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((Clk1sec_cnt(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Clk1sec_cnt(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X23_Y3_N25
\Clk1sec_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(28));

-- Location: LCCOMB_X23_Y3_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (Clk1sec_cnt(29) & (!\Add0~57\)) # (!Clk1sec_cnt(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!Clk1sec_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X23_Y3_N27
\Clk1sec_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(29));

-- Location: FF_X23_Y3_N29
\Clk1sec_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(30));

-- Location: LCCOMB_X22_Y3_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!Clk1sec_cnt(31) & (!Clk1sec_cnt(29) & (!Clk1sec_cnt(28) & !Clk1sec_cnt(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(31),
	datab => Clk1sec_cnt(29),
	datac => Clk1sec_cnt(28),
	datad => Clk1sec_cnt(30),
	combout => \Equal0~0_combout\);

-- Location: FF_X23_Y3_N11
\Clk1sec_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(21));

-- Location: LCCOMB_X22_Y3_N12
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!Clk1sec_cnt(22) & (!Clk1sec_cnt(21) & (!Clk1sec_cnt(20) & !Clk1sec_cnt(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(22),
	datab => Clk1sec_cnt(21),
	datac => Clk1sec_cnt(20),
	datad => Clk1sec_cnt(23),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X22_Y3_N20
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y3_N24
\Clk1sec_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec_cnt~7_combout\ = (!\Equal0~10_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~14_combout\,
	combout => \Clk1sec_cnt~7_combout\);

-- Location: FF_X22_Y3_N25
\Clk1sec_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec_cnt~7_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Clk1sec_cnt(7));

-- Location: LCCOMB_X22_Y3_N8
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!Clk1sec_cnt(5) & (Clk1sec_cnt(7) & (Clk1sec_cnt(4) & Clk1sec_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(5),
	datab => Clk1sec_cnt(7),
	datac => Clk1sec_cnt(4),
	datad => Clk1sec_cnt(6),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (Clk1sec_cnt(3) & (Clk1sec_cnt(1) & (Clk1sec_cnt(0) & Clk1sec_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Clk1sec_cnt(3),
	datab => Clk1sec_cnt(1),
	datac => Clk1sec_cnt(0),
	datad => Clk1sec_cnt(2),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X22_Y3_N0
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (\Equal0~4_combout\ & (\Equal0~8_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X22_Y3_N18
\Clk1sec~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec~0_combout\ = \Clk1sec~q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clk1sec~q\,
	datad => \Equal0~10_combout\,
	combout => \Clk1sec~0_combout\);

-- Location: LCCOMB_X22_Y3_N16
\Clk1sec~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Clk1sec~feeder_combout\ = \Clk1sec~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clk1sec~0_combout\,
	combout => \Clk1sec~feeder_combout\);

-- Location: FF_X22_Y3_N17
Clk1sec : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Clk1sec~feeder_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clk1sec~q\);

-- Location: CLKCTRL_G15
\Clk1sec~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk1sec~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk1sec~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X1_Y25_N20
\unishftreg8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~9_combout\ = \SW[9]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \unishftreg8~9_combout\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\unishftreg8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~16_combout\ = (\SW[9]~input_o\ & (unishftreg8(6))) # (!\SW[9]~input_o\ & ((unishftreg8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unishftreg8(6),
	datac => \SW[9]~input_o\,
	datad => unishftreg8(0),
	combout => \unishftreg8~16_combout\);

-- Location: LCCOMB_X1_Y24_N26
\unishftreg8[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[7]~7_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~16_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(7),
	datad => \unishftreg8~16_combout\,
	combout => \unishftreg8[7]~7_combout\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\BUTTON[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(2),
	o => \BUTTON[2]~input_o\);

-- Location: FF_X1_Y24_N27
\unishftreg8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[7]~7_combout\,
	asdata => \SW[7]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(7));

-- Location: LCCOMB_X1_Y24_N28
\unishftreg8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~15_combout\ = (\SW[9]~input_o\ & (unishftreg8(5))) # (!\SW[9]~input_o\ & ((unishftreg8(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => unishftreg8(5),
	datad => unishftreg8(7),
	combout => \unishftreg8~15_combout\);

-- Location: LCCOMB_X1_Y24_N0
\unishftreg8[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[6]~6_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~15_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(6),
	datad => \unishftreg8~15_combout\,
	combout => \unishftreg8[6]~6_combout\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X1_Y24_N1
\unishftreg8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[6]~6_combout\,
	asdata => \SW[6]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(6));

-- Location: LCCOMB_X1_Y24_N6
\unishftreg8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~14_combout\ = (\SW[9]~input_o\ & (unishftreg8(4))) # (!\SW[9]~input_o\ & ((unishftreg8(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => unishftreg8(4),
	datad => unishftreg8(6),
	combout => \unishftreg8~14_combout\);

-- Location: LCCOMB_X1_Y24_N14
\unishftreg8[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[5]~5_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~14_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(5),
	datad => \unishftreg8~14_combout\,
	combout => \unishftreg8[5]~5_combout\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X1_Y24_N15
\unishftreg8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[5]~5_combout\,
	asdata => \SW[5]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(5));

-- Location: LCCOMB_X1_Y24_N20
\unishftreg8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~13_combout\ = (\SW[9]~input_o\ & ((unishftreg8(3)))) # (!\SW[9]~input_o\ & (unishftreg8(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => unishftreg8(5),
	datad => unishftreg8(3),
	combout => \unishftreg8~13_combout\);

-- Location: LCCOMB_X1_Y24_N4
\unishftreg8[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[4]~4_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~13_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(4),
	datad => \unishftreg8~13_combout\,
	combout => \unishftreg8[4]~4_combout\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X1_Y24_N5
\unishftreg8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[4]~4_combout\,
	asdata => \SW[4]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(4));

-- Location: LCCOMB_X1_Y24_N10
\unishftreg8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~12_combout\ = (\SW[9]~input_o\ & ((unishftreg8(2)))) # (!\SW[9]~input_o\ & (unishftreg8(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => unishftreg8(4),
	datad => unishftreg8(2),
	combout => \unishftreg8~12_combout\);

-- Location: LCCOMB_X1_Y24_N30
\unishftreg8[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[3]~3_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~12_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(3),
	datad => \unishftreg8~12_combout\,
	combout => \unishftreg8[3]~3_combout\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X1_Y24_N31
\unishftreg8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[3]~3_combout\,
	asdata => \SW[3]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(3));

-- Location: LCCOMB_X1_Y24_N16
\unishftreg8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~11_combout\ = (\SW[9]~input_o\ & ((unishftreg8(1)))) # (!\SW[9]~input_o\ & (unishftreg8(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => unishftreg8(3),
	datad => unishftreg8(1),
	combout => \unishftreg8~11_combout\);

-- Location: LCCOMB_X1_Y24_N8
\unishftreg8[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[2]~2_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~11_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(2),
	datad => \unishftreg8~11_combout\,
	combout => \unishftreg8[2]~2_combout\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X1_Y24_N9
\unishftreg8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[2]~2_combout\,
	asdata => \SW[2]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(2));

-- Location: LCCOMB_X1_Y24_N2
\unishftreg8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~10_combout\ = (\SW[9]~input_o\ & ((unishftreg8(0)))) # (!\SW[9]~input_o\ & (unishftreg8(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => unishftreg8(2),
	datad => unishftreg8(0),
	combout => \unishftreg8~10_combout\);

-- Location: LCCOMB_X1_Y24_N22
\unishftreg8[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[1]~1_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~10_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(1),
	datad => \unishftreg8~10_combout\,
	combout => \unishftreg8[1]~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X1_Y24_N23
\unishftreg8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[1]~1_combout\,
	asdata => \SW[1]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(1));

-- Location: LCCOMB_X1_Y24_N24
\unishftreg8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8~8_combout\ = (\SW[9]~input_o\ & ((unishftreg8(7)))) # (!\SW[9]~input_o\ & (unishftreg8(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => unishftreg8(1),
	datad => unishftreg8(7),
	combout => \unishftreg8~8_combout\);

-- Location: LCCOMB_X1_Y24_N12
\unishftreg8[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unishftreg8[0]~0_combout\ = (\unishftreg8~9_combout\ & ((\unishftreg8~8_combout\))) # (!\unishftreg8~9_combout\ & (unishftreg8(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unishftreg8~9_combout\,
	datac => unishftreg8(0),
	datad => \unishftreg8~8_combout\,
	combout => \unishftreg8[0]~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X1_Y24_N13
\unishftreg8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1sec~clkctrl_outclk\,
	d => \unishftreg8[0]~0_combout\,
	asdata => \SW[0]~input_o\,
	clrn => \BUTTON[0]~input_o\,
	sload => \ALT_INV_BUTTON[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unishftreg8(0));

-- Location: IOIBUF_X0_Y23_N15
\BUTTON[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(1),
	o => \BUTTON[1]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDG(9) <= \LEDG[9]~output_o\;
END structure;


