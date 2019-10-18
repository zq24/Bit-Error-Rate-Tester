-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/17/2019 21:02:08"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bert IS
    PORT (
	i_clk : IN std_logic;
	i_rst_l : IN std_logic;
	i_data_en : IN std_logic;
	i_pattern_sel : IN std_logic_vector(1 DOWNTO 0);
	i_fixed_pn_pattern_sel : IN std_logic;
	i_inject_signal : IN std_logic_vector(1 DOWNTO 0);
	i_fp_length : IN std_logic_vector(4 DOWNTO 0);
	i_fixed_pattern : IN std_logic_vector(31 DOWNTO 0);
	i_fixed_pattern_wr : IN std_logic;
	i_data_from_gen_to_det : IN std_logic;
	i_en_from_gen_to_det : IN std_logic;
	o_data_from_gen : OUT std_logic;
	o_en_from_gen : OUT std_logic;
	o_lock : OUT std_logic;
	o_bit_error : OUT std_logic
	);
END bert;

-- Design Ports Information
-- o_data_from_gen	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_en_from_gen	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lock	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_bit_error	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_en	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_pattern_sel[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_pattern_sel[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pn_pattern_sel	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern_wr	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst_l	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_en_from_gen_to_det	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_from_gen_to_det	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fp_length[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fp_length[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fp_length[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fp_length[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fp_length[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[21]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[25]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[17]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[29]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[24]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[20]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[16]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[28]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[19]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[23]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[15]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[27]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[26]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[22]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[18]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[30]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[9]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[8]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[10]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[3]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[31]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[12]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[13]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[11]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fixed_pattern[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_inject_signal[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_inject_signal[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bert IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rst_l : std_logic;
SIGNAL ww_i_data_en : std_logic;
SIGNAL ww_i_pattern_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_fixed_pn_pattern_sel : std_logic;
SIGNAL ww_i_inject_signal : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_fp_length : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_i_fixed_pattern : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i_fixed_pattern_wr : std_logic;
SIGNAL ww_i_data_from_gen_to_det : std_logic;
SIGNAL ww_i_en_from_gen_to_det : std_logic;
SIGNAL ww_o_data_from_gen : std_logic;
SIGNAL ww_o_en_from_gen : std_logic;
SIGNAL ww_o_lock : std_logic;
SIGNAL ww_o_bit_error : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_rst_l~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_data_from_gen~output_o\ : std_logic;
SIGNAL \o_en_from_gen~output_o\ : std_logic;
SIGNAL \o_lock~output_o\ : std_logic;
SIGNAL \o_bit_error~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_data_en~input_o\ : std_logic;
SIGNAL \i_fixed_pn_pattern_sel~input_o\ : std_logic;
SIGNAL \i_fixed_pattern_wr~input_o\ : std_logic;
SIGNAL \i_rst_l~input_o\ : std_logic;
SIGNAL \i_fp_length[1]~input_o\ : std_logic;
SIGNAL \U0|U1|length_const[1]~feeder_combout\ : std_logic;
SIGNAL \i_rst_l~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|length_vary[1]~13_combout\ : std_logic;
SIGNAL \i_fp_length[4]~input_o\ : std_logic;
SIGNAL \U0|U1|length_vary[4]~1_combout\ : std_logic;
SIGNAL \U0|U1|length_const[4]~feeder_combout\ : std_logic;
SIGNAL \i_fp_length[3]~input_o\ : std_logic;
SIGNAL \U0|U1|length_vary[3]~5_combout\ : std_logic;
SIGNAL \i_fp_length[2]~input_o\ : std_logic;
SIGNAL \U0|U1|length_vary[2]~9_combout\ : std_logic;
SIGNAL \i_fp_length[0]~input_o\ : std_logic;
SIGNAL \U0|U1|length_vary[0]~17_combout\ : std_logic;
SIGNAL \U0|U1|Add0~0_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[0]~19_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[0]~_emulated_q\ : std_logic;
SIGNAL \U0|U1|length_vary[0]~18_combout\ : std_logic;
SIGNAL \U0|U1|Add0~1\ : std_logic;
SIGNAL \U0|U1|Add0~3\ : std_logic;
SIGNAL \U0|U1|Add0~4_combout\ : std_logic;
SIGNAL \U0|U1|length_const[2]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[2]~11_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[2]~_emulated_q\ : std_logic;
SIGNAL \U0|U1|length_vary[2]~10_combout\ : std_logic;
SIGNAL \U0|U1|Add0~5\ : std_logic;
SIGNAL \U0|U1|Add0~6_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[3]~7_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[3]~_emulated_q\ : std_logic;
SIGNAL \U0|U1|length_vary[3]~6_combout\ : std_logic;
SIGNAL \U0|U1|Add0~7\ : std_logic;
SIGNAL \U0|U1|Add0~8_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[4]~3_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[4]~_emulated_q\ : std_logic;
SIGNAL \U0|U1|length_vary[4]~2_combout\ : std_logic;
SIGNAL \U0|U1|Add0~9\ : std_logic;
SIGNAL \U0|U1|Add0~10_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~51_combout\ : std_logic;
SIGNAL \U0|U1|Add0~11\ : std_logic;
SIGNAL \U0|U1|Add0~12_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~50_combout\ : std_logic;
SIGNAL \U0|U1|Add0~13\ : std_logic;
SIGNAL \U0|U1|Add0~14_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~49_combout\ : std_logic;
SIGNAL \U0|U1|Add0~15\ : std_logic;
SIGNAL \U0|U1|Add0~16_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~48_combout\ : std_logic;
SIGNAL \U0|U1|Add0~17\ : std_logic;
SIGNAL \U0|U1|Add0~18_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~47_combout\ : std_logic;
SIGNAL \U0|U1|Add0~19\ : std_logic;
SIGNAL \U0|U1|Add0~20_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~46_combout\ : std_logic;
SIGNAL \U0|U1|Add0~21\ : std_logic;
SIGNAL \U0|U1|Add0~22_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~45_combout\ : std_logic;
SIGNAL \U0|U1|Add0~23\ : std_logic;
SIGNAL \U0|U1|Add0~24_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~44_combout\ : std_logic;
SIGNAL \U0|U1|Add0~25\ : std_logic;
SIGNAL \U0|U1|Add0~26_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~43_combout\ : std_logic;
SIGNAL \U0|U1|Add0~27\ : std_logic;
SIGNAL \U0|U1|Add0~28_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~42_combout\ : std_logic;
SIGNAL \U0|U1|Add0~29\ : std_logic;
SIGNAL \U0|U1|Add0~30_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~41_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~5_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~6_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~7_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~8_combout\ : std_logic;
SIGNAL \U0|U1|Add0~31\ : std_logic;
SIGNAL \U0|U1|Add0~32_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~40_combout\ : std_logic;
SIGNAL \U0|U1|Add0~33\ : std_logic;
SIGNAL \U0|U1|Add0~34_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~39_combout\ : std_logic;
SIGNAL \U0|U1|Add0~35\ : std_logic;
SIGNAL \U0|U1|Add0~36_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~38_combout\ : std_logic;
SIGNAL \U0|U1|Add0~37\ : std_logic;
SIGNAL \U0|U1|Add0~38_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~37_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~3_combout\ : std_logic;
SIGNAL \U0|U1|Add0~39\ : std_logic;
SIGNAL \U0|U1|Add0~40_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~36_combout\ : std_logic;
SIGNAL \U0|U1|Add0~41\ : std_logic;
SIGNAL \U0|U1|Add0~42_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~35_combout\ : std_logic;
SIGNAL \U0|U1|Add0~43\ : std_logic;
SIGNAL \U0|U1|Add0~44_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~34_combout\ : std_logic;
SIGNAL \U0|U1|Add0~45\ : std_logic;
SIGNAL \U0|U1|Add0~46_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~33_combout\ : std_logic;
SIGNAL \U0|U1|Add0~47\ : std_logic;
SIGNAL \U0|U1|Add0~48_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~32_combout\ : std_logic;
SIGNAL \U0|U1|Add0~49\ : std_logic;
SIGNAL \U0|U1|Add0~50_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~31_combout\ : std_logic;
SIGNAL \U0|U1|Add0~51\ : std_logic;
SIGNAL \U0|U1|Add0~52_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~30_combout\ : std_logic;
SIGNAL \U0|U1|Add0~53\ : std_logic;
SIGNAL \U0|U1|Add0~54_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~29_combout\ : std_logic;
SIGNAL \U0|U1|Add0~55\ : std_logic;
SIGNAL \U0|U1|Add0~56_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~28_combout\ : std_logic;
SIGNAL \U0|U1|Add0~57\ : std_logic;
SIGNAL \U0|U1|Add0~58_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~27_combout\ : std_logic;
SIGNAL \U0|U1|Add0~59\ : std_logic;
SIGNAL \U0|U1|Add0~60_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~26_combout\ : std_logic;
SIGNAL \U0|U1|Add0~61\ : std_logic;
SIGNAL \U0|U1|Add0~62_combout\ : std_logic;
SIGNAL \U0|U1|length_vary~25_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~0_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~2_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~1_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~4_combout\ : std_logic;
SIGNAL \U0|U1|Equal0~9_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[1]~15_combout\ : std_logic;
SIGNAL \U0|U1|length_vary[1]~_emulated_q\ : std_logic;
SIGNAL \U0|U1|length_vary[1]~14_combout\ : std_logic;
SIGNAL \U0|U1|Add0~2_combout\ : std_logic;
SIGNAL \i_fixed_pattern[18]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[26]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[26]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~0_combout\ : std_logic;
SIGNAL \i_fixed_pattern[22]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[30]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[30]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~1_combout\ : std_logic;
SIGNAL \i_fixed_pattern[21]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[17]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~2_combout\ : std_logic;
SIGNAL \i_fixed_pattern[25]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[25]~feeder_combout\ : std_logic;
SIGNAL \i_fixed_pattern[29]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~3_combout\ : std_logic;
SIGNAL \i_fixed_pattern[24]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[16]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~4_combout\ : std_logic;
SIGNAL \i_fixed_pattern[20]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[20]~feeder_combout\ : std_logic;
SIGNAL \i_fixed_pattern[28]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~5_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~6_combout\ : std_logic;
SIGNAL \i_fixed_pattern[27]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[27]~feeder_combout\ : std_logic;
SIGNAL \i_fixed_pattern[31]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[19]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[23]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~7_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~8_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~9_combout\ : std_logic;
SIGNAL \i_fixed_pattern[13]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[13]~feeder_combout\ : std_logic;
SIGNAL \i_fixed_pattern[15]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[12]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[14]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~17_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~18_combout\ : std_logic;
SIGNAL \i_fixed_pattern[6]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[4]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~12_combout\ : std_logic;
SIGNAL \i_fixed_pattern[7]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[5]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[5]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~13_combout\ : std_logic;
SIGNAL \i_fixed_pattern[1]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[0]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~14_combout\ : std_logic;
SIGNAL \i_fixed_pattern[2]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[2]~feeder_combout\ : std_logic;
SIGNAL \i_fixed_pattern[3]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~15_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~16_combout\ : std_logic;
SIGNAL \i_fixed_pattern[8]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[9]~input_o\ : std_logic;
SIGNAL \U0|U1|fixed_pattern_signal[9]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~10_combout\ : std_logic;
SIGNAL \i_fixed_pattern[11]~input_o\ : std_logic;
SIGNAL \i_fixed_pattern[10]~input_o\ : std_logic;
SIGNAL \U0|U1|Mux0~11_combout\ : std_logic;
SIGNAL \U0|U1|Mux0~19_combout\ : std_logic;
SIGNAL \U0|U1|Equal1~0_combout\ : std_logic;
SIGNAL \U0|U1|output_data~0_combout\ : std_logic;
SIGNAL \U0|U1|output_data~q\ : std_logic;
SIGNAL \U0|U3|o_data~3_combout\ : std_logic;
SIGNAL \i_pattern_sel[1]~input_o\ : std_logic;
SIGNAL \i_pattern_sel[0]~input_o\ : std_logic;
SIGNAL \U0|U2|U1|reg~6_combout\ : std_logic;
SIGNAL \U0|U2|U1|reg~5_combout\ : std_logic;
SIGNAL \U0|U2|U1|reg~4_combout\ : std_logic;
SIGNAL \U0|U2|U1|reg~3_combout\ : std_logic;
SIGNAL \U0|U2|U1|reg~2_combout\ : std_logic;
SIGNAL \U0|U2|U1|reg~1_combout\ : std_logic;
SIGNAL \U0|U2|U1|reg~0_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~14_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~13_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~12_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~11_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~10_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~9_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~8_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~7_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~6_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~5_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~4_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~3_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~2_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~1_combout\ : std_logic;
SIGNAL \U0|U2|U2|reg~0_combout\ : std_logic;
SIGNAL \U0|U3|o_data~0_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~30_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~29_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~28_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~27_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~26_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~25_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~24_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~23_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~22_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~21_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~20_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~19_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~18_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~17_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~16_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~15_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~14_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~13_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~12_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~11_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~10_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~9_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~8_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~7_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~6_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~5_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~4_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~3_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~2_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~1_combout\ : std_logic;
SIGNAL \U0|U2|U3|reg~0_combout\ : std_logic;
SIGNAL \U0|U2|U0|reg~3_combout\ : std_logic;
SIGNAL \U0|U2|U0|reg~2_combout\ : std_logic;
SIGNAL \U0|U2|U0|reg~1_combout\ : std_logic;
SIGNAL \U0|U2|U0|reg~0_combout\ : std_logic;
SIGNAL \U0|U3|o_data~1_combout\ : std_logic;
SIGNAL \U0|U3|o_data~2_combout\ : std_logic;
SIGNAL \i_inject_signal[1]~input_o\ : std_logic;
SIGNAL \U0|U0|delay1[1]~feeder_combout\ : std_logic;
SIGNAL \U0|U0|delay2[1]~feeder_combout\ : std_logic;
SIGNAL \U0|U0|delay3[1]~feeder_combout\ : std_logic;
SIGNAL \i_inject_signal[0]~input_o\ : std_logic;
SIGNAL \U0|U0|delay1[0]~feeder_combout\ : std_logic;
SIGNAL \U0|U0|delay3[0]~feeder_combout\ : std_logic;
SIGNAL \U0|U4|state~0_combout\ : std_logic;
SIGNAL \U0|U4|count[0]~31_combout\ : std_logic;
SIGNAL \U0|U4|count~39_combout\ : std_logic;
SIGNAL \U0|U4|Equal1~0_combout\ : std_logic;
SIGNAL \U0|U4|count[2]~36\ : std_logic;
SIGNAL \U0|U4|count[3]~37_combout\ : std_logic;
SIGNAL \U0|U4|count[9]~41_combout\ : std_logic;
SIGNAL \U0|U4|count[3]~38\ : std_logic;
SIGNAL \U0|U4|count[4]~42_combout\ : std_logic;
SIGNAL \U0|U4|count[4]~43\ : std_logic;
SIGNAL \U0|U4|count[5]~44_combout\ : std_logic;
SIGNAL \U0|U4|count[5]~45\ : std_logic;
SIGNAL \U0|U4|count[6]~46_combout\ : std_logic;
SIGNAL \U0|U4|count[6]~47\ : std_logic;
SIGNAL \U0|U4|count[7]~48_combout\ : std_logic;
SIGNAL \U0|U4|count[7]~49\ : std_logic;
SIGNAL \U0|U4|count[8]~50_combout\ : std_logic;
SIGNAL \U0|U4|count[8]~51\ : std_logic;
SIGNAL \U0|U4|count[9]~52_combout\ : std_logic;
SIGNAL \U0|U4|count[9]~53\ : std_logic;
SIGNAL \U0|U4|count[10]~54_combout\ : std_logic;
SIGNAL \U0|U4|count[10]~55\ : std_logic;
SIGNAL \U0|U4|count[11]~56_combout\ : std_logic;
SIGNAL \U0|U4|count[11]~57\ : std_logic;
SIGNAL \U0|U4|count[12]~58_combout\ : std_logic;
SIGNAL \U0|U4|count[12]~59\ : std_logic;
SIGNAL \U0|U4|count[13]~60_combout\ : std_logic;
SIGNAL \U0|U4|count[13]~61\ : std_logic;
SIGNAL \U0|U4|count[14]~62_combout\ : std_logic;
SIGNAL \U0|U4|count[14]~63\ : std_logic;
SIGNAL \U0|U4|count[15]~64_combout\ : std_logic;
SIGNAL \U0|U4|count[15]~65\ : std_logic;
SIGNAL \U0|U4|count[16]~66_combout\ : std_logic;
SIGNAL \U0|U4|count[16]~67\ : std_logic;
SIGNAL \U0|U4|count[17]~68_combout\ : std_logic;
SIGNAL \U0|U4|count[17]~69\ : std_logic;
SIGNAL \U0|U4|count[18]~70_combout\ : std_logic;
SIGNAL \U0|U4|count[18]~71\ : std_logic;
SIGNAL \U0|U4|count[19]~72_combout\ : std_logic;
SIGNAL \U0|U4|count[19]~73\ : std_logic;
SIGNAL \U0|U4|count[20]~74_combout\ : std_logic;
SIGNAL \U0|U4|count[20]~75\ : std_logic;
SIGNAL \U0|U4|count[21]~76_combout\ : std_logic;
SIGNAL \U0|U4|count[21]~77\ : std_logic;
SIGNAL \U0|U4|count[22]~78_combout\ : std_logic;
SIGNAL \U0|U4|count[22]~79\ : std_logic;
SIGNAL \U0|U4|count[23]~80_combout\ : std_logic;
SIGNAL \U0|U4|count[23]~81\ : std_logic;
SIGNAL \U0|U4|count[24]~82_combout\ : std_logic;
SIGNAL \U0|U4|count[24]~83\ : std_logic;
SIGNAL \U0|U4|count[25]~84_combout\ : std_logic;
SIGNAL \U0|U4|count[25]~85\ : std_logic;
SIGNAL \U0|U4|count[26]~86_combout\ : std_logic;
SIGNAL \U0|U4|count[26]~87\ : std_logic;
SIGNAL \U0|U4|count[27]~88_combout\ : std_logic;
SIGNAL \U0|U4|count[27]~89\ : std_logic;
SIGNAL \U0|U4|count[28]~90_combout\ : std_logic;
SIGNAL \U0|U4|count[28]~91\ : std_logic;
SIGNAL \U0|U4|count[29]~92_combout\ : std_logic;
SIGNAL \U0|U4|count[29]~93\ : std_logic;
SIGNAL \U0|U4|count[30]~94_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~7_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~5_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~0_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~2_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~1_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~3_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~4_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~6_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~8_combout\ : std_logic;
SIGNAL \U0|U4|max_count[0]~0_combout\ : std_logic;
SIGNAL \U0|U4|Equal0~0_combout\ : std_logic;
SIGNAL \U0|U4|Equal3~0_combout\ : std_logic;
SIGNAL \U0|U4|Equal3~1_combout\ : std_logic;
SIGNAL \U0|U4|count[9]~40_combout\ : std_logic;
SIGNAL \U0|U4|count[0]~32\ : std_logic;
SIGNAL \U0|U4|count[1]~33_combout\ : std_logic;
SIGNAL \U0|U4|count[1]~34\ : std_logic;
SIGNAL \U0|U4|count[2]~35_combout\ : std_logic;
SIGNAL \U0|U4|Equal2~9_combout\ : std_logic;
SIGNAL \U0|U4|state~1_combout\ : std_logic;
SIGNAL \U0|U4|state~2_combout\ : std_logic;
SIGNAL \U0|U4|state~q\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[0]~5_combout\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[2]~10\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[3]~11_combout\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[3]~12\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[4]~13_combout\ : std_logic;
SIGNAL \i_en_from_gen_to_det~input_o\ : std_logic;
SIGNAL \U1|U4|o_pn_det~combout\ : std_logic;
SIGNAL \U1|U2|U0|seed_cnt~1_combout\ : std_logic;
SIGNAL \U1|U2|U0|seed_cnt~0_combout\ : std_logic;
SIGNAL \U1|U3|Add0~4_combout\ : std_logic;
SIGNAL \U1|U3|Add0~95_combout\ : std_logic;
SIGNAL \U1|U3|Add0~5\ : std_logic;
SIGNAL \U1|U3|Add0~6_combout\ : std_logic;
SIGNAL \U1|U3|Add0~94_combout\ : std_logic;
SIGNAL \U1|U3|Add0~7\ : std_logic;
SIGNAL \U1|U3|Add0~8_combout\ : std_logic;
SIGNAL \U1|U3|Add0~97_combout\ : std_logic;
SIGNAL \U1|U3|Add0~9\ : std_logic;
SIGNAL \U1|U3|Add0~10_combout\ : std_logic;
SIGNAL \U1|U3|Add0~96_combout\ : std_logic;
SIGNAL \U1|U3|Add0~11\ : std_logic;
SIGNAL \U1|U3|Add0~12_combout\ : std_logic;
SIGNAL \U1|U3|Add0~93_combout\ : std_logic;
SIGNAL \U1|U3|Add0~13\ : std_logic;
SIGNAL \U1|U3|Add0~14_combout\ : std_logic;
SIGNAL \U1|U3|Add0~92_combout\ : std_logic;
SIGNAL \U1|U3|Add0~15\ : std_logic;
SIGNAL \U1|U3|Add0~16_combout\ : std_logic;
SIGNAL \U1|U3|Add0~91_combout\ : std_logic;
SIGNAL \U1|U3|Add0~17\ : std_logic;
SIGNAL \U1|U3|Add0~18_combout\ : std_logic;
SIGNAL \U1|U3|Add0~90_combout\ : std_logic;
SIGNAL \U1|U3|Add0~19\ : std_logic;
SIGNAL \U1|U3|Add0~20_combout\ : std_logic;
SIGNAL \U1|U3|Add0~89_combout\ : std_logic;
SIGNAL \U1|U3|Add0~21\ : std_logic;
SIGNAL \U1|U3|Add0~23\ : std_logic;
SIGNAL \U1|U3|Add0~25\ : std_logic;
SIGNAL \U1|U3|Add0~26_combout\ : std_logic;
SIGNAL \U1|U3|Add0~37_combout\ : std_logic;
SIGNAL \U1|U3|Add0~27\ : std_logic;
SIGNAL \U1|U3|Add0~28_combout\ : std_logic;
SIGNAL \U1|U3|Add0~36_combout\ : std_logic;
SIGNAL \U1|U3|Add0~29\ : std_logic;
SIGNAL \U1|U3|Add0~30_combout\ : std_logic;
SIGNAL \U1|U3|Add0~35_combout\ : std_logic;
SIGNAL \U1|U3|Add0~31\ : std_logic;
SIGNAL \U1|U3|Add0~32_combout\ : std_logic;
SIGNAL \U1|U3|Add0~34_combout\ : std_logic;
SIGNAL \U1|U3|Add0~33\ : std_logic;
SIGNAL \U1|U3|Add0~38_combout\ : std_logic;
SIGNAL \U1|U3|Add0~82_combout\ : std_logic;
SIGNAL \U1|U3|Add0~39\ : std_logic;
SIGNAL \U1|U3|Add0~40_combout\ : std_logic;
SIGNAL \U1|U3|Add0~81_combout\ : std_logic;
SIGNAL \U1|U3|Add0~41\ : std_logic;
SIGNAL \U1|U3|Add0~42_combout\ : std_logic;
SIGNAL \U1|U3|Add0~80_combout\ : std_logic;
SIGNAL \U1|U3|Add0~43\ : std_logic;
SIGNAL \U1|U3|Add0~44_combout\ : std_logic;
SIGNAL \U1|U3|Add0~79_combout\ : std_logic;
SIGNAL \U1|U3|Add0~45\ : std_logic;
SIGNAL \U1|U3|Add0~46_combout\ : std_logic;
SIGNAL \U1|U3|Add0~78_combout\ : std_logic;
SIGNAL \U1|U3|Add0~47\ : std_logic;
SIGNAL \U1|U3|Add0~48_combout\ : std_logic;
SIGNAL \U1|U3|Add0~77_combout\ : std_logic;
SIGNAL \U1|U3|Add0~49\ : std_logic;
SIGNAL \U1|U3|Add0~50_combout\ : std_logic;
SIGNAL \U1|U3|Add0~84_combout\ : std_logic;
SIGNAL \U1|U3|Add0~51\ : std_logic;
SIGNAL \U1|U3|Add0~52_combout\ : std_logic;
SIGNAL \U1|U3|Add0~83_combout\ : std_logic;
SIGNAL \U1|U3|Add0~53\ : std_logic;
SIGNAL \U1|U3|Add0~54_combout\ : std_logic;
SIGNAL \U1|U3|Add0~76_combout\ : std_logic;
SIGNAL \U1|U3|Add0~55\ : std_logic;
SIGNAL \U1|U3|Add0~56_combout\ : std_logic;
SIGNAL \U1|U3|Add0~75_combout\ : std_logic;
SIGNAL \U1|U3|Add0~57\ : std_logic;
SIGNAL \U1|U3|Add0~58_combout\ : std_logic;
SIGNAL \U1|U3|Add0~74_combout\ : std_logic;
SIGNAL \U1|U3|Add0~59\ : std_logic;
SIGNAL \U1|U3|Add0~60_combout\ : std_logic;
SIGNAL \U1|U3|Add0~73_combout\ : std_logic;
SIGNAL \U1|U3|Add0~61\ : std_logic;
SIGNAL \U1|U3|Add0~62_combout\ : std_logic;
SIGNAL \U1|U3|Add0~72_combout\ : std_logic;
SIGNAL \U1|U3|Add0~63\ : std_logic;
SIGNAL \U1|U3|Add0~65\ : std_logic;
SIGNAL \U1|U3|Add0~66_combout\ : std_logic;
SIGNAL \U1|U3|Add0~70_combout\ : std_logic;
SIGNAL \U1|U3|Add0~67\ : std_logic;
SIGNAL \U1|U3|Add0~68_combout\ : std_logic;
SIGNAL \U1|U3|Add0~98_combout\ : std_logic;
SIGNAL \U1|U3|Add0~69\ : std_logic;
SIGNAL \U1|U3|Add0~86_combout\ : std_logic;
SIGNAL \U1|U3|Add0~99_combout\ : std_logic;
SIGNAL \U1|U3|Add0~64_combout\ : std_logic;
SIGNAL \U1|U3|Add0~71_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~4_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~5_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~6_combout\ : std_logic;
SIGNAL \U1|U3|Add0~24_combout\ : std_logic;
SIGNAL \U1|U3|Add0~85_combout\ : std_logic;
SIGNAL \U1|U3|Add0~22_combout\ : std_logic;
SIGNAL \U1|U3|Add0~88_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~7_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~9_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~8_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~10_combout\ : std_logic;
SIGNAL \U1|U3|count_error[0]~0_combout\ : std_logic;
SIGNAL \U1|U3|Add1~0_combout\ : std_logic;
SIGNAL \U1|U3|Add1~62_combout\ : std_logic;
SIGNAL \U1|U3|count_error[0]~28_combout\ : std_logic;
SIGNAL \U1|U3|Add1~1\ : std_logic;
SIGNAL \U1|U3|Add1~2_combout\ : std_logic;
SIGNAL \U1|U3|Add1~67_combout\ : std_logic;
SIGNAL \U1|U3|Add1~3\ : std_logic;
SIGNAL \U1|U3|Add1~4_combout\ : std_logic;
SIGNAL \U1|U3|Add1~66_combout\ : std_logic;
SIGNAL \U1|U3|Add1~5\ : std_logic;
SIGNAL \U1|U3|Add1~6_combout\ : std_logic;
SIGNAL \U1|U3|Add1~65_combout\ : std_logic;
SIGNAL \U1|U3|Add1~7\ : std_logic;
SIGNAL \U1|U3|Add1~8_combout\ : std_logic;
SIGNAL \U1|U3|count_error[4]~27_combout\ : std_logic;
SIGNAL \U1|U3|Add1~9\ : std_logic;
SIGNAL \U1|U3|Add1~10_combout\ : std_logic;
SIGNAL \U1|U3|count_error[5]~26_combout\ : std_logic;
SIGNAL \U1|U3|Add1~11\ : std_logic;
SIGNAL \U1|U3|Add1~12_combout\ : std_logic;
SIGNAL \U1|U3|count_error[6]~25_combout\ : std_logic;
SIGNAL \U1|U3|Add1~13\ : std_logic;
SIGNAL \U1|U3|Add1~14_combout\ : std_logic;
SIGNAL \U1|U3|count_error[7]~24_combout\ : std_logic;
SIGNAL \U1|U3|Add1~15\ : std_logic;
SIGNAL \U1|U3|Add1~16_combout\ : std_logic;
SIGNAL \U1|U3|count_error[8]~23_combout\ : std_logic;
SIGNAL \U1|U3|Add1~17\ : std_logic;
SIGNAL \U1|U3|Add1~18_combout\ : std_logic;
SIGNAL \U1|U3|count_error[9]~22_combout\ : std_logic;
SIGNAL \U1|U3|Add1~19\ : std_logic;
SIGNAL \U1|U3|Add1~20_combout\ : std_logic;
SIGNAL \U1|U3|count_error[10]~21_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~6_combout\ : std_logic;
SIGNAL \U1|U3|Add1~21\ : std_logic;
SIGNAL \U1|U3|Add1~22_combout\ : std_logic;
SIGNAL \U1|U3|count_error[11]~20_combout\ : std_logic;
SIGNAL \U1|U3|Add1~23\ : std_logic;
SIGNAL \U1|U3|Add1~24_combout\ : std_logic;
SIGNAL \U1|U3|count_error[12]~19_combout\ : std_logic;
SIGNAL \U1|U3|Add1~25\ : std_logic;
SIGNAL \U1|U3|Add1~26_combout\ : std_logic;
SIGNAL \U1|U3|count_error[13]~18_combout\ : std_logic;
SIGNAL \U1|U3|Add1~27\ : std_logic;
SIGNAL \U1|U3|Add1~28_combout\ : std_logic;
SIGNAL \U1|U3|count_error[14]~17_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~5_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~7_combout\ : std_logic;
SIGNAL \U1|U3|Add1~29\ : std_logic;
SIGNAL \U1|U3|Add1~30_combout\ : std_logic;
SIGNAL \U1|U3|count_error[15]~16_combout\ : std_logic;
SIGNAL \U1|U3|Add1~31\ : std_logic;
SIGNAL \U1|U3|Add1~32_combout\ : std_logic;
SIGNAL \U1|U3|count_error[16]~15_combout\ : std_logic;
SIGNAL \U1|U3|Add1~33\ : std_logic;
SIGNAL \U1|U3|Add1~34_combout\ : std_logic;
SIGNAL \U1|U3|count_error[17]~14_combout\ : std_logic;
SIGNAL \U1|U3|Add1~35\ : std_logic;
SIGNAL \U1|U3|Add1~36_combout\ : std_logic;
SIGNAL \U1|U3|count_error[18]~13_combout\ : std_logic;
SIGNAL \U1|U3|Add1~37\ : std_logic;
SIGNAL \U1|U3|Add1~38_combout\ : std_logic;
SIGNAL \U1|U3|count_error[19]~12_combout\ : std_logic;
SIGNAL \U1|U3|Add1~39\ : std_logic;
SIGNAL \U1|U3|Add1~40_combout\ : std_logic;
SIGNAL \U1|U3|count_error[20]~11_combout\ : std_logic;
SIGNAL \U1|U3|Add1~41\ : std_logic;
SIGNAL \U1|U3|Add1~42_combout\ : std_logic;
SIGNAL \U1|U3|count_error[21]~10_combout\ : std_logic;
SIGNAL \U1|U3|Add1~43\ : std_logic;
SIGNAL \U1|U3|Add1~44_combout\ : std_logic;
SIGNAL \U1|U3|count_error[22]~9_combout\ : std_logic;
SIGNAL \U1|U3|Add1~45\ : std_logic;
SIGNAL \U1|U3|Add1~46_combout\ : std_logic;
SIGNAL \U1|U3|count_error[23]~8_combout\ : std_logic;
SIGNAL \U1|U3|Add1~47\ : std_logic;
SIGNAL \U1|U3|Add1~48_combout\ : std_logic;
SIGNAL \U1|U3|count_error[24]~7_combout\ : std_logic;
SIGNAL \U1|U3|Add1~49\ : std_logic;
SIGNAL \U1|U3|Add1~50_combout\ : std_logic;
SIGNAL \U1|U3|count_error[25]~6_combout\ : std_logic;
SIGNAL \U1|U3|Add1~51\ : std_logic;
SIGNAL \U1|U3|Add1~52_combout\ : std_logic;
SIGNAL \U1|U3|count_error[26]~5_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~1_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~3_combout\ : std_logic;
SIGNAL \U1|U3|Add1~53\ : std_logic;
SIGNAL \U1|U3|Add1~54_combout\ : std_logic;
SIGNAL \U1|U3|count_error[27]~4_combout\ : std_logic;
SIGNAL \U1|U3|Add1~55\ : std_logic;
SIGNAL \U1|U3|Add1~56_combout\ : std_logic;
SIGNAL \U1|U3|count_error[28]~3_combout\ : std_logic;
SIGNAL \U1|U3|Add1~57\ : std_logic;
SIGNAL \U1|U3|Add1~58_combout\ : std_logic;
SIGNAL \U1|U3|count_error[29]~2_combout\ : std_logic;
SIGNAL \U1|U3|Add1~59\ : std_logic;
SIGNAL \U1|U3|Add1~60_combout\ : std_logic;
SIGNAL \U1|U3|count_error[30]~1_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~0_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~2_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~4_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~11_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[0]~9_combout\ : std_logic;
SIGNAL \U1|U2|U1|seed_cnt~3_combout\ : std_logic;
SIGNAL \U1|U2|U1|seed_cnt~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|nstate.LOSS_OF_LOCK~2_combout\ : std_logic;
SIGNAL \U1|U2|U1|pstate.LOSS_OF_LOCK~q\ : std_logic;
SIGNAL \U1|U2|U1|Selector0~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|pstate.IDLE~q\ : std_logic;
SIGNAL \U1|U2|U1|pn_data~2_combout\ : std_logic;
SIGNAL \i_data_from_gen_to_det~input_o\ : std_logic;
SIGNAL \U1|U0|o_pn_det~combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data~1_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data~3_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|pn_cmp~q\ : std_logic;
SIGNAL \U1|U2|U1|Selector1~2_combout\ : std_logic;
SIGNAL \U1|U2|U1|Selector1~3_combout\ : std_logic;
SIGNAL \U1|U2|U1|pstate.GENERATE_SEED~q\ : std_logic;
SIGNAL \U1|U2|U1|seed_cnt~2_combout\ : std_logic;
SIGNAL \U1|U2|U1|seed_cnt~1_combout\ : std_logic;
SIGNAL \U1|U2|U1|Selector2~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|Selector2~1_combout\ : std_logic;
SIGNAL \U1|U2|U1|pstate.COMPARE~q\ : std_logic;
SIGNAL \U1|U2|U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[1]~8_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[0]~10\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[1]~11_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[1]~12\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[2]~13_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[2]~14\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[3]~15_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[3]~16\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[4]~17_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[4]~18\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[5]~19_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[5]~20\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[6]~21_combout\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[6]~22\ : std_logic;
SIGNAL \U1|U2|U1|cmp_cnt[7]~23_combout\ : std_logic;
SIGNAL \U1|U2|U1|Equal1~1_combout\ : std_logic;
SIGNAL \U1|U2|U1|Selector3~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|Selector3~1_combout\ : std_logic;
SIGNAL \U1|U2|U1|pstate.PATTERN_LOCK~q\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[0]~33_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[0]~34\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[1]~35_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[1]~36\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[2]~37_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[2]~38\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[3]~39_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[3]~40\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[4]~41_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[4]~42\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[5]~43_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[5]~44\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[6]~45_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[6]~46\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[7]~47_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[7]~48\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[8]~49_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[8]~50\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[9]~51_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[9]~52\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[10]~53_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[10]~54\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[11]~55_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[11]~56\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[12]~57_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[12]~58\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[13]~59_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[13]~60\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[14]~61_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[14]~62\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[15]~63_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~3_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~2_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~1_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~4_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[15]~64\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[16]~65_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[16]~66\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[17]~67_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[17]~68\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[18]~69_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[18]~70\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[19]~71_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~5_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[19]~72\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[20]~73_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[20]~74\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[21]~75_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[21]~76\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[22]~77_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[22]~78\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[23]~79_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[23]~80\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[24]~81_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[24]~82\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[25]~83_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[25]~84\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[26]~85_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[26]~86\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[27]~87_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[27]~88\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[28]~89_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[28]~90\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[29]~91_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[29]~92\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[30]~93_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[30]~94\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[31]~95_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~8_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~7_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~6_combout\ : std_logic;
SIGNAL \U1|U2|U3|Equal1~9_combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt[21]~32_combout\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[0]~6_combout\ : std_logic;
SIGNAL \U1|U2|U3|nstate.LOSS_OF_LOCK~2_combout\ : std_logic;
SIGNAL \U1|U2|U3|pstate.LOSS_OF_LOCK~q\ : std_logic;
SIGNAL \U1|U2|U3|Selector0~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|pstate.IDLE~q\ : std_logic;
SIGNAL \U1|U2|U3|Selector1~2_combout\ : std_logic;
SIGNAL \U1|U2|U3|Selector1~3_combout\ : std_logic;
SIGNAL \U1|U2|U3|pstate.GENERATE_SEED~q\ : std_logic;
SIGNAL \U1|U2|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[1]~5_combout\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[0]~7\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[1]~8_combout\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[1]~9\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[2]~10_combout\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[2]~11\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[3]~12_combout\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[3]~13\ : std_logic;
SIGNAL \U1|U2|U3|seed_cnt[4]~14_combout\ : std_logic;
SIGNAL \U1|U2|U3|Selector2~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|Selector2~1_combout\ : std_logic;
SIGNAL \U1|U2|U3|pstate.COMPARE~q\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[28]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[29]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[30]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data~2_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data~1_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data~3_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[8]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[9]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[10]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[11]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[12]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[13]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[14]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[15]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[16]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[17]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[18]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[19]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[20]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[21]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[22]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[23]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[24]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[25]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[26]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_data[27]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|pn_cmp~q\ : std_logic;
SIGNAL \U1|U2|U3|Selector3~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|Selector3~1_combout\ : std_logic;
SIGNAL \U1|U2|U3|pstate.PATTERN_LOCK~q\ : std_logic;
SIGNAL \U1|U2|U2|nstate.LOSS_OF_LOCK~2_combout\ : std_logic;
SIGNAL \U1|U2|U2|pstate.LOSS_OF_LOCK~q\ : std_logic;
SIGNAL \U1|U2|U2|Selector0~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|pstate.IDLE~q\ : std_logic;
SIGNAL \U1|U2|U2|Selector1~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|Selector1~1_combout\ : std_logic;
SIGNAL \U1|U2|U2|pstate.GENERATE_SEED~q\ : std_logic;
SIGNAL \U1|U2|U2|seed_cnt~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|seed_cnt~3_combout\ : std_logic;
SIGNAL \U1|U2|U2|Add0~1_combout\ : std_logic;
SIGNAL \U1|U2|U2|seed_cnt~2_combout\ : std_logic;
SIGNAL \U1|U2|U2|Add0~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|seed_cnt~1_combout\ : std_logic;
SIGNAL \U1|U2|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[0]~17_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[0]~18\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[1]~19_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[1]~20\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[2]~21_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[2]~22\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[3]~23_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[3]~24\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[4]~25_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[4]~26\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[5]~27_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[5]~28\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[6]~29_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[6]~30\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[7]~31_combout\ : std_logic;
SIGNAL \U1|U2|U2|Equal1~1_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[7]~32\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[8]~33_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[8]~34\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[9]~35_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[9]~36\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[10]~37_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[10]~38\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[11]~39_combout\ : std_logic;
SIGNAL \U1|U2|U2|Equal1~2_combout\ : std_logic;
SIGNAL \U1|U2|U2|Equal1~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[11]~40\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[12]~41_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[12]~42\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[13]~43_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[13]~44\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[14]~45_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[14]~46\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[15]~47_combout\ : std_logic;
SIGNAL \U1|U2|U2|Equal1~3_combout\ : std_logic;
SIGNAL \U1|U2|U2|Equal1~4_combout\ : std_logic;
SIGNAL \U1|U2|U2|cmp_cnt[0]~16_combout\ : std_logic;
SIGNAL \U1|U2|U2|Selector2~2_combout\ : std_logic;
SIGNAL \U1|U2|U2|Selector2~3_combout\ : std_logic;
SIGNAL \U1|U2|U2|pstate.COMPARE~q\ : std_logic;
SIGNAL \U1|U2|U2|pn_data~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data~2_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data~1_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data~3_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[8]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[9]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[10]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[11]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_data[12]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|pn_cmp~q\ : std_logic;
SIGNAL \U1|U2|U2|Selector3~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|Selector3~1_combout\ : std_logic;
SIGNAL \U1|U2|U2|pstate.PATTERN_LOCK~q\ : std_logic;
SIGNAL \U1|U1|data_cnt[0]~7_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[21]~65_combout\ : std_logic;
SIGNAL \U1|U4|o_fp_det~combout\ : std_logic;
SIGNAL \U1|U1|detector_en_dly~q\ : std_logic;
SIGNAL \U1|U1|detector_en~q\ : std_logic;
SIGNAL \U1|U1|nstate.LOSS_OF_LOCK~0_combout\ : std_logic;
SIGNAL \U1|U1|pstate.LOSS_OF_LOCK~q\ : std_logic;
SIGNAL \U1|U1|pstate.FIND_FIRST_BIT~q\ : std_logic;
SIGNAL \U1|U1|first_bit_cmp~0_combout\ : std_logic;
SIGNAL \U1|U1|first_bit_cmp~q\ : std_logic;
SIGNAL \U1|U1|Selector2~0_combout\ : std_logic;
SIGNAL \U1|U1|Selector2~1_combout\ : std_logic;
SIGNAL \U1|U1|pstate.FIND_PATTERN~q\ : std_logic;
SIGNAL \U1|U1|Selector3~0_combout\ : std_logic;
SIGNAL \U1|U1|Selector3~1_combout\ : std_logic;
SIGNAL \U1|U1|pstate.WAIT_PATTERN_LENGTH~q\ : std_logic;
SIGNAL \U1|U1|pstate.IDLE~q\ : std_logic;
SIGNAL \U1|U1|Selector0~0_combout\ : std_logic;
SIGNAL \U1|U1|Selector0~1_combout\ : std_logic;
SIGNAL \U1|U1|process_3~0_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[20]~85_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[19]~97_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[18]~121_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[17]~73_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[16]~89_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[14]~61_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[13]~53_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[12]~49_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[11]~57_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[10]~13_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[9]~1_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[8]~5_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[7]~9_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[6]~29_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[2]~45_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[1]~33_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[0]~37_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[0]~39_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[2]~160_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[0]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[0]~38_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[1]~35_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[1]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[1]~34_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[2]~47_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[2]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[2]~46_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[3]~25_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[3]~27_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[3]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[3]~26_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[4]~17_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[4]~19_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[4]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[4]~18_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[5]~21_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[5]~23_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[5]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[5]~22_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[6]~31_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[6]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[6]~30_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[7]~11_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[7]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[7]~10_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[8]~7_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[8]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[8]~6_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[9]~3_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[9]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[9]~2_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[10]~15_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[10]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[10]~14_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[11]~59_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[11]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[11]~58_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[12]~51_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[12]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[12]~50_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[13]~55_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[13]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[13]~54_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[14]~63_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[14]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[14]~62_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[15]~105_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[15]~107_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[15]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[15]~106_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[16]~91_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[16]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[16]~90_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[17]~75_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[17]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[17]~74_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[18]~123_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[18]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[18]~122_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[19]~99_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[19]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[19]~98_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[20]~87_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[20]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[20]~86_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[21]~67_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[21]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[21]~66_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[22]~117_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[22]~119_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[22]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[22]~118_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~7_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[30]~125_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[29]~77_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[28]~93_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[27]~109_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[26]~113_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[25]~69_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[24]~81_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[23]~101_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[23]~103_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[23]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[23]~102_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[24]~83_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[24]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[24]~82_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[25]~71_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[25]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[25]~70_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[26]~115_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[26]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[26]~114_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[27]~111_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[27]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[27]~110_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[28]~95_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[28]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[28]~94_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[29]~79_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[29]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[29]~78_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[30]~127_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[30]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[30]~126_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~8_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~0_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~1_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~4_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~5_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~2_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~3_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~6_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~9_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[31]~41_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[31]~43_combout\ : std_logic;
SIGNAL \U1|U1|pattern_shift[31]~_emulated_q\ : std_logic;
SIGNAL \U1|U1|pattern_shift[31]~42_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~14_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~15_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~12_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~13_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~16_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~10_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~11_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~17_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~18_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~19_combout\ : std_logic;
SIGNAL \U1|U1|Mux0~20_combout\ : std_logic;
SIGNAL \U1|U0|o_fp_det~combout\ : std_logic;
SIGNAL \U1|U1|data_delay~q\ : std_logic;
SIGNAL \U1|U1|pattern_cmp~0_combout\ : std_logic;
SIGNAL \U1|U1|pattern_cmp~q\ : std_logic;
SIGNAL \U1|U1|Selector1~1_combout\ : std_logic;
SIGNAL \U1|U1|nstate.RESTART~0_combout\ : std_logic;
SIGNAL \U1|U1|pstate.RESTART~q\ : std_logic;
SIGNAL \U1|U1|Selector1~0_combout\ : std_logic;
SIGNAL \U1|U1|Selector1~2_combout\ : std_logic;
SIGNAL \U1|U1|data_cnt[1]~18_combout\ : std_logic;
SIGNAL \U1|U1|data_cnt[1]~11_combout\ : std_logic;
SIGNAL \U1|U1|data_cnt[0]~8\ : std_logic;
SIGNAL \U1|U1|data_cnt[1]~9_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U1|U1|data_cnt[1]~10\ : std_logic;
SIGNAL \U1|U1|data_cnt[2]~12_combout\ : std_logic;
SIGNAL \U1|U1|data_cnt[2]~13\ : std_logic;
SIGNAL \U1|U1|data_cnt[3]~14_combout\ : std_logic;
SIGNAL \U1|U1|Add1~1\ : std_logic;
SIGNAL \U1|U1|Add1~3\ : std_logic;
SIGNAL \U1|U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|U1|Add1~5\ : std_logic;
SIGNAL \U1|U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U1|data_cnt[3]~15\ : std_logic;
SIGNAL \U1|U1|data_cnt[4]~16_combout\ : std_logic;
SIGNAL \U1|U1|Add1~7\ : std_logic;
SIGNAL \U1|U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U1|data_cnt_tc~q\ : std_logic;
SIGNAL \U1|U1|Selector4~0_combout\ : std_logic;
SIGNAL \U1|U1|Selector4~1_combout\ : std_logic;
SIGNAL \U1|U1|o_lock~q\ : std_logic;
SIGNAL \U1|lock_into_counter~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|data_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U3|data_cmp~q\ : std_logic;
SIGNAL \U1|U2|U0|data_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|data_cmp~q\ : std_logic;
SIGNAL \U1|U2|U1|data_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|data_cmp~q\ : std_logic;
SIGNAL \U1|U1|fixed_data_cmp~0_combout\ : std_logic;
SIGNAL \U1|U1|fixed_data_cmp~q\ : std_logic;
SIGNAL \U1|U2|U2|data_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U2|data_cmp~q\ : std_logic;
SIGNAL \U1|error_into_counter~0_combout\ : std_logic;
SIGNAL \U1|U3|process_1~0_combout\ : std_logic;
SIGNAL \U1|U3|process_1~1_combout\ : std_logic;
SIGNAL \U1|U3|Add1~61\ : std_logic;
SIGNAL \U1|U3|Add1~63_combout\ : std_logic;
SIGNAL \U1|U3|count_error[31]~29_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~8_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~9_combout\ : std_logic;
SIGNAL \U1|U3|Equal1~10_combout\ : std_logic;
SIGNAL \U1|U2|U0|nstate.LOSS_OF_LOCK~2_combout\ : std_logic;
SIGNAL \U1|U2|U0|pstate.LOSS_OF_LOCK~q\ : std_logic;
SIGNAL \U1|U2|U0|Selector0~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|pstate.IDLE~q\ : std_logic;
SIGNAL \U1|U2|U0|Selector1~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|Selector1~1_combout\ : std_logic;
SIGNAL \U1|U2|U0|pstate.GENERATE_SEED~q\ : std_logic;
SIGNAL \U1|U2|U0|pn_data~2_combout\ : std_logic;
SIGNAL \U1|U2|U0|pn_data~1_combout\ : std_logic;
SIGNAL \U1|U2|U0|pn_data~3_combout\ : std_logic;
SIGNAL \U1|U2|U0|pn_data[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U0|pn_data~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|pn_data[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U0|pn_cmp~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|pn_cmp~q\ : std_logic;
SIGNAL \U1|U2|U0|Selector2~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|Selector2~1_combout\ : std_logic;
SIGNAL \U1|U2|U0|pstate.COMPARE~q\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[3]~15_combout\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[0]~6\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[1]~7_combout\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[1]~8\ : std_logic;
SIGNAL \U1|U2|U0|cmp_cnt[2]~9_combout\ : std_logic;
SIGNAL \U1|U2|U0|Equal1~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|Selector3~0_combout\ : std_logic;
SIGNAL \U1|U2|U0|Selector3~1_combout\ : std_logic;
SIGNAL \U1|U2|U0|pstate.PATTERN_LOCK~q\ : std_logic;
SIGNAL \U1|lock_into_counter~combout\ : std_logic;
SIGNAL \U1|error_into_counter~combout\ : std_logic;
SIGNAL \U1|U2|U3|cmp_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|U4|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \U1|U2|U0|cmp_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|U2|U2|cmp_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|U2|U1|cmp_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|U1|data_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|U2|U3|seed_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|U2|U2|reg\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \U0|U2|U1|reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|U2|U0|seed_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|U2|U0|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U3|count_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|U2|U3|reg\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \U0|U0|delay3\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|U0|delay2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|U4|max_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \U1|U3|count_error\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|U2|U3|pn_data\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \U1|U2|U0|pn_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U2|U1|pn_data\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|U2|U2|pn_data\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \U0|U1|fixed_pattern_signal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|U1|length_vary\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|U0|delay1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|U2|U2|seed_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U2|U1|seed_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|U1|length_const\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_rst_l <= i_rst_l;
ww_i_data_en <= i_data_en;
ww_i_pattern_sel <= i_pattern_sel;
ww_i_fixed_pn_pattern_sel <= i_fixed_pn_pattern_sel;
ww_i_inject_signal <= i_inject_signal;
ww_i_fp_length <= i_fp_length;
ww_i_fixed_pattern <= i_fixed_pattern;
ww_i_fixed_pattern_wr <= i_fixed_pattern_wr;
ww_i_data_from_gen_to_det <= i_data_from_gen_to_det;
ww_i_en_from_gen_to_det <= i_en_from_gen_to_det;
o_data_from_gen <= ww_o_data_from_gen;
o_en_from_gen <= ww_o_en_from_gen;
o_lock <= ww_o_lock;
o_bit_error <= ww_o_bit_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\i_rst_l~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_rst_l~input_o\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N23
\o_data_from_gen~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U4|state~q\,
	devoe => ww_devoe,
	o => \o_data_from_gen~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\o_en_from_gen~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_data_en~input_o\,
	devoe => ww_devoe,
	o => \o_en_from_gen~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\o_lock~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|lock_into_counter~combout\,
	devoe => ww_devoe,
	o => \o_lock~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\o_bit_error~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|error_into_counter~combout\,
	devoe => ww_devoe,
	o => \o_bit_error~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G3
\i_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y13_N22
\i_data_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_en,
	o => \i_data_en~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\i_fixed_pn_pattern_sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pn_pattern_sel,
	o => \i_fixed_pn_pattern_sel~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\i_fixed_pattern_wr~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern_wr,
	o => \i_fixed_pattern_wr~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\i_rst_l~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst_l,
	o => \i_rst_l~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\i_fp_length[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fp_length(1),
	o => \i_fp_length[1]~input_o\);

-- Location: LCCOMB_X1_Y18_N22
\U0|U1|length_const[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_const[1]~feeder_combout\ = \i_fp_length[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fp_length[1]~input_o\,
	combout => \U0|U1|length_const[1]~feeder_combout\);

-- Location: CLKCTRL_G4
\i_rst_l~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_rst_l~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_rst_l~inputclkctrl_outclk\);

-- Location: FF_X1_Y18_N23
\U0|U1|length_const[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_const[1]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_const\(1));

-- Location: LCCOMB_X1_Y18_N28
\U0|U1|length_vary[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[1]~13_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U0|U1|length_vary[1]~13_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fp_length[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary[1]~13_combout\,
	datac => \i_fp_length[1]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U0|U1|length_vary[1]~13_combout\);

-- Location: IOIBUF_X0_Y26_N22
\i_fp_length[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fp_length(4),
	o => \i_fp_length[4]~input_o\);

-- Location: LCCOMB_X2_Y18_N30
\U0|U1|length_vary[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[4]~1_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U0|U1|length_vary[4]~1_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fp_length[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fp_length[4]~input_o\,
	datac => \U0|U1|length_vary[4]~1_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U0|U1|length_vary[4]~1_combout\);

-- Location: LCCOMB_X2_Y18_N20
\U0|U1|length_const[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_const[4]~feeder_combout\ = \i_fp_length[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fp_length[4]~input_o\,
	combout => \U0|U1|length_const[4]~feeder_combout\);

-- Location: FF_X2_Y18_N21
\U0|U1|length_const[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_const[4]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_const\(4));

-- Location: IOIBUF_X0_Y16_N15
\i_fp_length[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fp_length(3),
	o => \i_fp_length[3]~input_o\);

-- Location: LCCOMB_X1_Y18_N10
\U0|U1|length_vary[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[3]~5_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U0|U1|length_vary[3]~5_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fp_length[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary[3]~5_combout\,
	datac => \i_fp_length[3]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U0|U1|length_vary[3]~5_combout\);

-- Location: FF_X1_Y18_N13
\U0|U1|length_const[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fp_length[3]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_const\(3));

-- Location: IOIBUF_X0_Y26_N1
\i_fp_length[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fp_length(2),
	o => \i_fp_length[2]~input_o\);

-- Location: LCCOMB_X1_Y18_N6
\U0|U1|length_vary[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[2]~9_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U0|U1|length_vary[2]~9_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fp_length[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary[2]~9_combout\,
	datab => \i_fp_length[2]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U0|U1|length_vary[2]~9_combout\);

-- Location: IOIBUF_X0_Y26_N8
\i_fp_length[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fp_length(0),
	o => \i_fp_length[0]~input_o\);

-- Location: LCCOMB_X1_Y21_N28
\U0|U1|length_vary[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[0]~17_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U0|U1|length_vary[0]~17_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fp_length[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary[0]~17_combout\,
	datac => \i_fp_length[0]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U0|U1|length_vary[0]~17_combout\);

-- Location: LCCOMB_X2_Y21_N0
\U0|U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~0_combout\ = \U0|U1|length_vary[0]~18_combout\ $ (VCC)
-- \U0|U1|Add0~1\ = CARRY(\U0|U1|length_vary[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary[0]~18_combout\,
	datad => VCC,
	combout => \U0|U1|Add0~0_combout\,
	cout => \U0|U1|Add0~1\);

-- Location: FF_X1_Y21_N7
\U0|U1|length_const[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fp_length[0]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_const\(0));

-- Location: LCCOMB_X1_Y21_N0
\U0|U1|length_vary[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[0]~19_combout\ = \U0|U1|length_vary[0]~17_combout\ $ (((\U0|U1|Equal0~9_combout\ & ((\U0|U1|length_const\(0)))) # (!\U0|U1|Equal0~9_combout\ & (\U0|U1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Equal0~9_combout\,
	datab => \U0|U1|length_vary[0]~17_combout\,
	datac => \U0|U1|Add0~0_combout\,
	datad => \U0|U1|length_const\(0),
	combout => \U0|U1|length_vary[0]~19_combout\);

-- Location: FF_X1_Y21_N1
\U0|U1|length_vary[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary[0]~19_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary[0]~_emulated_q\);

-- Location: LCCOMB_X1_Y21_N6
\U0|U1|length_vary[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[0]~18_combout\ = (\i_rst_l~input_o\ & (\U0|U1|length_vary[0]~_emulated_q\ $ (((\U0|U1|length_vary[0]~17_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fp_length[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \U0|U1|length_vary[0]~_emulated_q\,
	datac => \i_fp_length[0]~input_o\,
	datad => \U0|U1|length_vary[0]~17_combout\,
	combout => \U0|U1|length_vary[0]~18_combout\);

-- Location: LCCOMB_X2_Y21_N2
\U0|U1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~2_combout\ = (\U0|U1|length_vary[1]~14_combout\ & (\U0|U1|Add0~1\ & VCC)) # (!\U0|U1|length_vary[1]~14_combout\ & (!\U0|U1|Add0~1\))
-- \U0|U1|Add0~3\ = CARRY((!\U0|U1|length_vary[1]~14_combout\ & !\U0|U1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary[1]~14_combout\,
	datad => VCC,
	cin => \U0|U1|Add0~1\,
	combout => \U0|U1|Add0~2_combout\,
	cout => \U0|U1|Add0~3\);

-- Location: LCCOMB_X2_Y21_N4
\U0|U1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~4_combout\ = (\U0|U1|length_vary[2]~10_combout\ & ((GND) # (!\U0|U1|Add0~3\))) # (!\U0|U1|length_vary[2]~10_combout\ & (\U0|U1|Add0~3\ $ (GND)))
-- \U0|U1|Add0~5\ = CARRY((\U0|U1|length_vary[2]~10_combout\) # (!\U0|U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary[2]~10_combout\,
	datad => VCC,
	cin => \U0|U1|Add0~3\,
	combout => \U0|U1|Add0~4_combout\,
	cout => \U0|U1|Add0~5\);

-- Location: LCCOMB_X1_Y18_N20
\U0|U1|length_const[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_const[2]~feeder_combout\ = \i_fp_length[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fp_length[2]~input_o\,
	combout => \U0|U1|length_const[2]~feeder_combout\);

-- Location: FF_X1_Y18_N21
\U0|U1|length_const[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_const[2]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_const\(2));

-- Location: LCCOMB_X1_Y18_N24
\U0|U1|length_vary[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[2]~11_combout\ = \U0|U1|length_vary[2]~9_combout\ $ (((\U0|U1|Equal0~9_combout\ & ((\U0|U1|length_const\(2)))) # (!\U0|U1|Equal0~9_combout\ & (\U0|U1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary[2]~9_combout\,
	datab => \U0|U1|Add0~4_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|length_const\(2),
	combout => \U0|U1|length_vary[2]~11_combout\);

-- Location: FF_X1_Y18_N25
\U0|U1|length_vary[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary[2]~11_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary[2]~_emulated_q\);

-- Location: LCCOMB_X1_Y18_N30
\U0|U1|length_vary[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[2]~10_combout\ = (\i_rst_l~input_o\ & ((\U0|U1|length_vary[2]~9_combout\ $ (\U0|U1|length_vary[2]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fp_length[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[2]~input_o\,
	datab => \i_rst_l~input_o\,
	datac => \U0|U1|length_vary[2]~9_combout\,
	datad => \U0|U1|length_vary[2]~_emulated_q\,
	combout => \U0|U1|length_vary[2]~10_combout\);

-- Location: LCCOMB_X2_Y21_N6
\U0|U1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~6_combout\ = (\U0|U1|length_vary[3]~6_combout\ & (\U0|U1|Add0~5\ & VCC)) # (!\U0|U1|length_vary[3]~6_combout\ & (!\U0|U1|Add0~5\))
-- \U0|U1|Add0~7\ = CARRY((!\U0|U1|length_vary[3]~6_combout\ & !\U0|U1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary[3]~6_combout\,
	datad => VCC,
	cin => \U0|U1|Add0~5\,
	combout => \U0|U1|Add0~6_combout\,
	cout => \U0|U1|Add0~7\);

-- Location: LCCOMB_X1_Y18_N4
\U0|U1|length_vary[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[3]~7_combout\ = \U0|U1|length_vary[3]~5_combout\ $ (((\U0|U1|Equal0~9_combout\ & (\U0|U1|length_const\(3))) # (!\U0|U1|Equal0~9_combout\ & ((\U0|U1|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary[3]~5_combout\,
	datab => \U0|U1|length_const\(3),
	datac => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~6_combout\,
	combout => \U0|U1|length_vary[3]~7_combout\);

-- Location: FF_X1_Y18_N5
\U0|U1|length_vary[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary[3]~7_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary[3]~_emulated_q\);

-- Location: LCCOMB_X1_Y18_N14
\U0|U1|length_vary[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[3]~6_combout\ = (\i_rst_l~input_o\ & ((\U0|U1|length_vary[3]~_emulated_q\ $ (\U0|U1|length_vary[3]~5_combout\)))) # (!\i_rst_l~input_o\ & (\i_fp_length[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[3]~input_o\,
	datab => \i_rst_l~input_o\,
	datac => \U0|U1|length_vary[3]~_emulated_q\,
	datad => \U0|U1|length_vary[3]~5_combout\,
	combout => \U0|U1|length_vary[3]~6_combout\);

-- Location: LCCOMB_X2_Y21_N8
\U0|U1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~8_combout\ = (\U0|U1|length_vary[4]~2_combout\ & ((GND) # (!\U0|U1|Add0~7\))) # (!\U0|U1|length_vary[4]~2_combout\ & (\U0|U1|Add0~7\ $ (GND)))
-- \U0|U1|Add0~9\ = CARRY((\U0|U1|length_vary[4]~2_combout\) # (!\U0|U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary[4]~2_combout\,
	datad => VCC,
	cin => \U0|U1|Add0~7\,
	combout => \U0|U1|Add0~8_combout\,
	cout => \U0|U1|Add0~9\);

-- Location: LCCOMB_X2_Y18_N28
\U0|U1|length_vary[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[4]~3_combout\ = \U0|U1|length_vary[4]~1_combout\ $ (((\U0|U1|Equal0~9_combout\ & (\U0|U1|length_const\(4))) # (!\U0|U1|Equal0~9_combout\ & ((\U0|U1|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary[4]~1_combout\,
	datab => \U0|U1|length_const\(4),
	datac => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~8_combout\,
	combout => \U0|U1|length_vary[4]~3_combout\);

-- Location: FF_X2_Y18_N29
\U0|U1|length_vary[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary[4]~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary[4]~_emulated_q\);

-- Location: LCCOMB_X2_Y18_N18
\U0|U1|length_vary[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[4]~2_combout\ = (\i_rst_l~input_o\ & ((\U0|U1|length_vary[4]~1_combout\ $ (\U0|U1|length_vary[4]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fp_length[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fp_length[4]~input_o\,
	datac => \U0|U1|length_vary[4]~1_combout\,
	datad => \U0|U1|length_vary[4]~_emulated_q\,
	combout => \U0|U1|length_vary[4]~2_combout\);

-- Location: LCCOMB_X2_Y21_N10
\U0|U1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~10_combout\ = (\U0|U1|length_vary\(5) & (\U0|U1|Add0~9\ & VCC)) # (!\U0|U1|length_vary\(5) & (!\U0|U1|Add0~9\))
-- \U0|U1|Add0~11\ = CARRY((!\U0|U1|length_vary\(5) & !\U0|U1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(5),
	datad => VCC,
	cin => \U0|U1|Add0~9\,
	combout => \U0|U1|Add0~10_combout\,
	cout => \U0|U1|Add0~11\);

-- Location: LCCOMB_X2_Y18_N24
\U0|U1|length_vary~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~51_combout\ = (\U0|U1|Add0~10_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~10_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~51_combout\);

-- Location: FF_X2_Y18_N25
\U0|U1|length_vary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~51_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(5));

-- Location: LCCOMB_X2_Y21_N12
\U0|U1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~12_combout\ = (\U0|U1|length_vary\(6) & ((GND) # (!\U0|U1|Add0~11\))) # (!\U0|U1|length_vary\(6) & (\U0|U1|Add0~11\ $ (GND)))
-- \U0|U1|Add0~13\ = CARRY((\U0|U1|length_vary\(6)) # (!\U0|U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(6),
	datad => VCC,
	cin => \U0|U1|Add0~11\,
	combout => \U0|U1|Add0~12_combout\,
	cout => \U0|U1|Add0~13\);

-- Location: LCCOMB_X2_Y18_N14
\U0|U1|length_vary~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~50_combout\ = (\U0|U1|Add0~12_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~12_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~50_combout\);

-- Location: FF_X2_Y18_N15
\U0|U1|length_vary[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~50_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(6));

-- Location: LCCOMB_X2_Y21_N14
\U0|U1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~14_combout\ = (\U0|U1|length_vary\(7) & (\U0|U1|Add0~13\ & VCC)) # (!\U0|U1|length_vary\(7) & (!\U0|U1|Add0~13\))
-- \U0|U1|Add0~15\ = CARRY((!\U0|U1|length_vary\(7) & !\U0|U1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(7),
	datad => VCC,
	cin => \U0|U1|Add0~13\,
	combout => \U0|U1|Add0~14_combout\,
	cout => \U0|U1|Add0~15\);

-- Location: LCCOMB_X1_Y18_N16
\U0|U1|length_vary~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~49_combout\ = (\U0|U1|Add0~14_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~14_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~49_combout\);

-- Location: FF_X1_Y18_N17
\U0|U1|length_vary[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~49_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(7));

-- Location: LCCOMB_X2_Y21_N16
\U0|U1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~16_combout\ = (\U0|U1|length_vary\(8) & ((GND) # (!\U0|U1|Add0~15\))) # (!\U0|U1|length_vary\(8) & (\U0|U1|Add0~15\ $ (GND)))
-- \U0|U1|Add0~17\ = CARRY((\U0|U1|length_vary\(8)) # (!\U0|U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(8),
	datad => VCC,
	cin => \U0|U1|Add0~15\,
	combout => \U0|U1|Add0~16_combout\,
	cout => \U0|U1|Add0~17\);

-- Location: LCCOMB_X1_Y20_N14
\U0|U1|length_vary~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~48_combout\ = (\U0|U1|Add0~16_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~16_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~48_combout\);

-- Location: FF_X1_Y20_N15
\U0|U1|length_vary[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~48_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(8));

-- Location: LCCOMB_X2_Y21_N18
\U0|U1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~18_combout\ = (\U0|U1|length_vary\(9) & (\U0|U1|Add0~17\ & VCC)) # (!\U0|U1|length_vary\(9) & (!\U0|U1|Add0~17\))
-- \U0|U1|Add0~19\ = CARRY((!\U0|U1|length_vary\(9) & !\U0|U1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(9),
	datad => VCC,
	cin => \U0|U1|Add0~17\,
	combout => \U0|U1|Add0~18_combout\,
	cout => \U0|U1|Add0~19\);

-- Location: LCCOMB_X1_Y21_N16
\U0|U1|length_vary~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~47_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Equal0~9_combout\,
	datab => \U0|U1|Add0~18_combout\,
	combout => \U0|U1|length_vary~47_combout\);

-- Location: FF_X1_Y21_N17
\U0|U1|length_vary[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~47_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(9));

-- Location: LCCOMB_X2_Y21_N20
\U0|U1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~20_combout\ = (\U0|U1|length_vary\(10) & ((GND) # (!\U0|U1|Add0~19\))) # (!\U0|U1|length_vary\(10) & (\U0|U1|Add0~19\ $ (GND)))
-- \U0|U1|Add0~21\ = CARRY((\U0|U1|length_vary\(10)) # (!\U0|U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(10),
	datad => VCC,
	cin => \U0|U1|Add0~19\,
	combout => \U0|U1|Add0~20_combout\,
	cout => \U0|U1|Add0~21\);

-- Location: LCCOMB_X1_Y20_N24
\U0|U1|length_vary~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~46_combout\ = (\U0|U1|Add0~20_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~20_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~46_combout\);

-- Location: FF_X1_Y20_N25
\U0|U1|length_vary[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~46_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(10));

-- Location: LCCOMB_X2_Y21_N22
\U0|U1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~22_combout\ = (\U0|U1|length_vary\(11) & (\U0|U1|Add0~21\ & VCC)) # (!\U0|U1|length_vary\(11) & (!\U0|U1|Add0~21\))
-- \U0|U1|Add0~23\ = CARRY((!\U0|U1|length_vary\(11) & !\U0|U1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(11),
	datad => VCC,
	cin => \U0|U1|Add0~21\,
	combout => \U0|U1|Add0~22_combout\,
	cout => \U0|U1|Add0~23\);

-- Location: LCCOMB_X1_Y20_N10
\U0|U1|length_vary~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~45_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~22_combout\,
	combout => \U0|U1|length_vary~45_combout\);

-- Location: FF_X1_Y20_N11
\U0|U1|length_vary[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~45_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(11));

-- Location: LCCOMB_X2_Y21_N24
\U0|U1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~24_combout\ = (\U0|U1|length_vary\(12) & ((GND) # (!\U0|U1|Add0~23\))) # (!\U0|U1|length_vary\(12) & (\U0|U1|Add0~23\ $ (GND)))
-- \U0|U1|Add0~25\ = CARRY((\U0|U1|length_vary\(12)) # (!\U0|U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(12),
	datad => VCC,
	cin => \U0|U1|Add0~23\,
	combout => \U0|U1|Add0~24_combout\,
	cout => \U0|U1|Add0~25\);

-- Location: LCCOMB_X3_Y20_N18
\U0|U1|length_vary~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~44_combout\ = (\U0|U1|Add0~24_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~24_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~44_combout\);

-- Location: FF_X3_Y20_N19
\U0|U1|length_vary[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~44_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(12));

-- Location: LCCOMB_X2_Y21_N26
\U0|U1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~26_combout\ = (\U0|U1|length_vary\(13) & (\U0|U1|Add0~25\ & VCC)) # (!\U0|U1|length_vary\(13) & (!\U0|U1|Add0~25\))
-- \U0|U1|Add0~27\ = CARRY((!\U0|U1|length_vary\(13) & !\U0|U1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(13),
	datad => VCC,
	cin => \U0|U1|Add0~25\,
	combout => \U0|U1|Add0~26_combout\,
	cout => \U0|U1|Add0~27\);

-- Location: LCCOMB_X3_Y20_N0
\U0|U1|length_vary~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~43_combout\ = (\U0|U1|Add0~26_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~26_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~43_combout\);

-- Location: FF_X3_Y20_N1
\U0|U1|length_vary[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~43_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(13));

-- Location: LCCOMB_X2_Y21_N28
\U0|U1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~28_combout\ = (\U0|U1|length_vary\(14) & ((GND) # (!\U0|U1|Add0~27\))) # (!\U0|U1|length_vary\(14) & (\U0|U1|Add0~27\ $ (GND)))
-- \U0|U1|Add0~29\ = CARRY((\U0|U1|length_vary\(14)) # (!\U0|U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(14),
	datad => VCC,
	cin => \U0|U1|Add0~27\,
	combout => \U0|U1|Add0~28_combout\,
	cout => \U0|U1|Add0~29\);

-- Location: LCCOMB_X3_Y20_N30
\U0|U1|length_vary~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~42_combout\ = (\U0|U1|Add0~28_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~28_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~42_combout\);

-- Location: FF_X3_Y20_N31
\U0|U1|length_vary[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~42_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(14));

-- Location: LCCOMB_X2_Y21_N30
\U0|U1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~30_combout\ = (\U0|U1|length_vary\(15) & (\U0|U1|Add0~29\ & VCC)) # (!\U0|U1|length_vary\(15) & (!\U0|U1|Add0~29\))
-- \U0|U1|Add0~31\ = CARRY((!\U0|U1|length_vary\(15) & !\U0|U1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(15),
	datad => VCC,
	cin => \U0|U1|Add0~29\,
	combout => \U0|U1|Add0~30_combout\,
	cout => \U0|U1|Add0~31\);

-- Location: LCCOMB_X3_Y20_N16
\U0|U1|length_vary~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~41_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Equal0~9_combout\,
	datac => \U0|U1|Add0~30_combout\,
	combout => \U0|U1|length_vary~41_combout\);

-- Location: FF_X3_Y20_N17
\U0|U1|length_vary[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~41_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(15));

-- Location: LCCOMB_X3_Y20_N12
\U0|U1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~5_combout\ = (!\U0|U1|length_vary\(15) & (!\U0|U1|length_vary\(13) & (!\U0|U1|length_vary\(14) & !\U0|U1|length_vary\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(15),
	datab => \U0|U1|length_vary\(13),
	datac => \U0|U1|length_vary\(14),
	datad => \U0|U1|length_vary\(12),
	combout => \U0|U1|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y20_N20
\U0|U1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~6_combout\ = (!\U0|U1|length_vary\(11) & (!\U0|U1|length_vary\(10) & (!\U0|U1|length_vary\(8) & !\U0|U1|length_vary\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(11),
	datab => \U0|U1|length_vary\(10),
	datac => \U0|U1|length_vary\(8),
	datad => \U0|U1|length_vary\(9),
	combout => \U0|U1|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y18_N22
\U0|U1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~7_combout\ = (!\U0|U1|length_vary\(7) & (!\U0|U1|length_vary[4]~2_combout\ & (!\U0|U1|length_vary\(6) & !\U0|U1|length_vary\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(7),
	datab => \U0|U1|length_vary[4]~2_combout\,
	datac => \U0|U1|length_vary\(6),
	datad => \U0|U1|length_vary\(5),
	combout => \U0|U1|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y18_N18
\U0|U1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~8_combout\ = (!\U0|U1|length_vary[2]~10_combout\ & (!\U0|U1|length_vary[3]~6_combout\ & (!\U0|U1|length_vary[1]~14_combout\ & \U0|U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary[2]~10_combout\,
	datab => \U0|U1|length_vary[3]~6_combout\,
	datac => \U0|U1|length_vary[1]~14_combout\,
	datad => \U0|U1|Equal0~7_combout\,
	combout => \U0|U1|Equal0~8_combout\);

-- Location: LCCOMB_X2_Y20_N0
\U0|U1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~32_combout\ = (\U0|U1|length_vary\(16) & ((GND) # (!\U0|U1|Add0~31\))) # (!\U0|U1|length_vary\(16) & (\U0|U1|Add0~31\ $ (GND)))
-- \U0|U1|Add0~33\ = CARRY((\U0|U1|length_vary\(16)) # (!\U0|U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(16),
	datad => VCC,
	cin => \U0|U1|Add0~31\,
	combout => \U0|U1|Add0~32_combout\,
	cout => \U0|U1|Add0~33\);

-- Location: LCCOMB_X1_Y20_N0
\U0|U1|length_vary~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~40_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~32_combout\,
	combout => \U0|U1|length_vary~40_combout\);

-- Location: FF_X1_Y20_N1
\U0|U1|length_vary[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~40_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(16));

-- Location: LCCOMB_X2_Y20_N2
\U0|U1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~34_combout\ = (\U0|U1|length_vary\(17) & (\U0|U1|Add0~33\ & VCC)) # (!\U0|U1|length_vary\(17) & (!\U0|U1|Add0~33\))
-- \U0|U1|Add0~35\ = CARRY((!\U0|U1|length_vary\(17) & !\U0|U1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(17),
	datad => VCC,
	cin => \U0|U1|Add0~33\,
	combout => \U0|U1|Add0~34_combout\,
	cout => \U0|U1|Add0~35\);

-- Location: LCCOMB_X1_Y20_N6
\U0|U1|length_vary~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~39_combout\ = (\U0|U1|Add0~34_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~34_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~39_combout\);

-- Location: FF_X1_Y20_N7
\U0|U1|length_vary[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~39_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(17));

-- Location: LCCOMB_X2_Y20_N4
\U0|U1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~36_combout\ = (\U0|U1|length_vary\(18) & ((GND) # (!\U0|U1|Add0~35\))) # (!\U0|U1|length_vary\(18) & (\U0|U1|Add0~35\ $ (GND)))
-- \U0|U1|Add0~37\ = CARRY((\U0|U1|length_vary\(18)) # (!\U0|U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(18),
	datad => VCC,
	cin => \U0|U1|Add0~35\,
	combout => \U0|U1|Add0~36_combout\,
	cout => \U0|U1|Add0~37\);

-- Location: LCCOMB_X1_Y20_N8
\U0|U1|length_vary~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~38_combout\ = (\U0|U1|Add0~36_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~36_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~38_combout\);

-- Location: FF_X1_Y20_N9
\U0|U1|length_vary[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~38_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(18));

-- Location: LCCOMB_X2_Y20_N6
\U0|U1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~38_combout\ = (\U0|U1|length_vary\(19) & (\U0|U1|Add0~37\ & VCC)) # (!\U0|U1|length_vary\(19) & (!\U0|U1|Add0~37\))
-- \U0|U1|Add0~39\ = CARRY((!\U0|U1|length_vary\(19) & !\U0|U1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(19),
	datad => VCC,
	cin => \U0|U1|Add0~37\,
	combout => \U0|U1|Add0~38_combout\,
	cout => \U0|U1|Add0~39\);

-- Location: LCCOMB_X1_Y20_N22
\U0|U1|length_vary~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~37_combout\ = (\U0|U1|Add0~38_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~38_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~37_combout\);

-- Location: FF_X1_Y20_N23
\U0|U1|length_vary[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~37_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(19));

-- Location: LCCOMB_X1_Y20_N26
\U0|U1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~3_combout\ = (!\U0|U1|length_vary\(19) & (!\U0|U1|length_vary\(16) & (!\U0|U1|length_vary\(18) & !\U0|U1|length_vary\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(19),
	datab => \U0|U1|length_vary\(16),
	datac => \U0|U1|length_vary\(18),
	datad => \U0|U1|length_vary\(17),
	combout => \U0|U1|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y20_N8
\U0|U1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~40_combout\ = (\U0|U1|length_vary\(20) & ((GND) # (!\U0|U1|Add0~39\))) # (!\U0|U1|length_vary\(20) & (\U0|U1|Add0~39\ $ (GND)))
-- \U0|U1|Add0~41\ = CARRY((\U0|U1|length_vary\(20)) # (!\U0|U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(20),
	datad => VCC,
	cin => \U0|U1|Add0~39\,
	combout => \U0|U1|Add0~40_combout\,
	cout => \U0|U1|Add0~41\);

-- Location: LCCOMB_X3_Y20_N20
\U0|U1|length_vary~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~36_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Equal0~9_combout\,
	datac => \U0|U1|Add0~40_combout\,
	combout => \U0|U1|length_vary~36_combout\);

-- Location: FF_X3_Y20_N21
\U0|U1|length_vary[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~36_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(20));

-- Location: LCCOMB_X2_Y20_N10
\U0|U1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~42_combout\ = (\U0|U1|length_vary\(21) & (\U0|U1|Add0~41\ & VCC)) # (!\U0|U1|length_vary\(21) & (!\U0|U1|Add0~41\))
-- \U0|U1|Add0~43\ = CARRY((!\U0|U1|length_vary\(21) & !\U0|U1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(21),
	datad => VCC,
	cin => \U0|U1|Add0~41\,
	combout => \U0|U1|Add0~42_combout\,
	cout => \U0|U1|Add0~43\);

-- Location: LCCOMB_X3_Y20_N2
\U0|U1|length_vary~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~35_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Equal0~9_combout\,
	datac => \U0|U1|Add0~42_combout\,
	combout => \U0|U1|length_vary~35_combout\);

-- Location: FF_X3_Y20_N3
\U0|U1|length_vary[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~35_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(21));

-- Location: LCCOMB_X2_Y20_N12
\U0|U1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~44_combout\ = (\U0|U1|length_vary\(22) & ((GND) # (!\U0|U1|Add0~43\))) # (!\U0|U1|length_vary\(22) & (\U0|U1|Add0~43\ $ (GND)))
-- \U0|U1|Add0~45\ = CARRY((\U0|U1|length_vary\(22)) # (!\U0|U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(22),
	datad => VCC,
	cin => \U0|U1|Add0~43\,
	combout => \U0|U1|Add0~44_combout\,
	cout => \U0|U1|Add0~45\);

-- Location: LCCOMB_X3_Y20_N4
\U0|U1|length_vary~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~34_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~44_combout\,
	combout => \U0|U1|length_vary~34_combout\);

-- Location: FF_X3_Y20_N5
\U0|U1|length_vary[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~34_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(22));

-- Location: LCCOMB_X2_Y20_N14
\U0|U1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~46_combout\ = (\U0|U1|length_vary\(23) & (\U0|U1|Add0~45\ & VCC)) # (!\U0|U1|length_vary\(23) & (!\U0|U1|Add0~45\))
-- \U0|U1|Add0~47\ = CARRY((!\U0|U1|length_vary\(23) & !\U0|U1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(23),
	datad => VCC,
	cin => \U0|U1|Add0~45\,
	combout => \U0|U1|Add0~46_combout\,
	cout => \U0|U1|Add0~47\);

-- Location: LCCOMB_X3_Y20_N26
\U0|U1|length_vary~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~33_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~46_combout\,
	combout => \U0|U1|length_vary~33_combout\);

-- Location: FF_X3_Y20_N27
\U0|U1|length_vary[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~33_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(23));

-- Location: LCCOMB_X2_Y20_N16
\U0|U1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~48_combout\ = (\U0|U1|length_vary\(24) & ((GND) # (!\U0|U1|Add0~47\))) # (!\U0|U1|length_vary\(24) & (\U0|U1|Add0~47\ $ (GND)))
-- \U0|U1|Add0~49\ = CARRY((\U0|U1|length_vary\(24)) # (!\U0|U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(24),
	datad => VCC,
	cin => \U0|U1|Add0~47\,
	combout => \U0|U1|Add0~48_combout\,
	cout => \U0|U1|Add0~49\);

-- Location: LCCOMB_X1_Y20_N30
\U0|U1|length_vary~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~32_combout\ = (\U0|U1|Add0~48_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~48_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~32_combout\);

-- Location: FF_X1_Y20_N31
\U0|U1|length_vary[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~32_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(24));

-- Location: LCCOMB_X2_Y20_N18
\U0|U1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~50_combout\ = (\U0|U1|length_vary\(25) & (\U0|U1|Add0~49\ & VCC)) # (!\U0|U1|length_vary\(25) & (!\U0|U1|Add0~49\))
-- \U0|U1|Add0~51\ = CARRY((!\U0|U1|length_vary\(25) & !\U0|U1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(25),
	datad => VCC,
	cin => \U0|U1|Add0~49\,
	combout => \U0|U1|Add0~50_combout\,
	cout => \U0|U1|Add0~51\);

-- Location: LCCOMB_X1_Y20_N16
\U0|U1|length_vary~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~31_combout\ = (\U0|U1|Add0~50_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~50_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~31_combout\);

-- Location: FF_X1_Y20_N17
\U0|U1|length_vary[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~31_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(25));

-- Location: LCCOMB_X2_Y20_N20
\U0|U1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~52_combout\ = (\U0|U1|length_vary\(26) & ((GND) # (!\U0|U1|Add0~51\))) # (!\U0|U1|length_vary\(26) & (\U0|U1|Add0~51\ $ (GND)))
-- \U0|U1|Add0~53\ = CARRY((\U0|U1|length_vary\(26)) # (!\U0|U1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(26),
	datad => VCC,
	cin => \U0|U1|Add0~51\,
	combout => \U0|U1|Add0~52_combout\,
	cout => \U0|U1|Add0~53\);

-- Location: LCCOMB_X1_Y20_N2
\U0|U1|length_vary~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~30_combout\ = (\U0|U1|Add0~52_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~52_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~30_combout\);

-- Location: FF_X1_Y20_N3
\U0|U1|length_vary[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~30_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(26));

-- Location: LCCOMB_X2_Y20_N22
\U0|U1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~54_combout\ = (\U0|U1|length_vary\(27) & (\U0|U1|Add0~53\ & VCC)) # (!\U0|U1|length_vary\(27) & (!\U0|U1|Add0~53\))
-- \U0|U1|Add0~55\ = CARRY((!\U0|U1|length_vary\(27) & !\U0|U1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(27),
	datad => VCC,
	cin => \U0|U1|Add0~53\,
	combout => \U0|U1|Add0~54_combout\,
	cout => \U0|U1|Add0~55\);

-- Location: LCCOMB_X1_Y20_N4
\U0|U1|length_vary~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~29_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Equal0~9_combout\,
	datac => \U0|U1|Add0~54_combout\,
	combout => \U0|U1|length_vary~29_combout\);

-- Location: FF_X1_Y20_N5
\U0|U1|length_vary[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~29_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(27));

-- Location: LCCOMB_X2_Y20_N24
\U0|U1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~56_combout\ = (\U0|U1|length_vary\(28) & ((GND) # (!\U0|U1|Add0~55\))) # (!\U0|U1|length_vary\(28) & (\U0|U1|Add0~55\ $ (GND)))
-- \U0|U1|Add0~57\ = CARRY((\U0|U1|length_vary\(28)) # (!\U0|U1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(28),
	datad => VCC,
	cin => \U0|U1|Add0~55\,
	combout => \U0|U1|Add0~56_combout\,
	cout => \U0|U1|Add0~57\);

-- Location: LCCOMB_X3_Y20_N10
\U0|U1|length_vary~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~28_combout\ = (\U0|U1|Add0~56_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~56_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~28_combout\);

-- Location: FF_X3_Y20_N11
\U0|U1|length_vary[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~28_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(28));

-- Location: LCCOMB_X2_Y20_N26
\U0|U1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~58_combout\ = (\U0|U1|length_vary\(29) & (\U0|U1|Add0~57\ & VCC)) # (!\U0|U1|length_vary\(29) & (!\U0|U1|Add0~57\))
-- \U0|U1|Add0~59\ = CARRY((!\U0|U1|length_vary\(29) & !\U0|U1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(29),
	datad => VCC,
	cin => \U0|U1|Add0~57\,
	combout => \U0|U1|Add0~58_combout\,
	cout => \U0|U1|Add0~59\);

-- Location: LCCOMB_X3_Y20_N28
\U0|U1|length_vary~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~27_combout\ = (\U0|U1|Add0~58_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~58_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~27_combout\);

-- Location: FF_X3_Y20_N29
\U0|U1|length_vary[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~27_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(29));

-- Location: LCCOMB_X2_Y20_N28
\U0|U1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~60_combout\ = (\U0|U1|length_vary\(30) & ((GND) # (!\U0|U1|Add0~59\))) # (!\U0|U1|length_vary\(30) & (\U0|U1|Add0~59\ $ (GND)))
-- \U0|U1|Add0~61\ = CARRY((\U0|U1|length_vary\(30)) # (!\U0|U1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(30),
	datad => VCC,
	cin => \U0|U1|Add0~59\,
	combout => \U0|U1|Add0~60_combout\,
	cout => \U0|U1|Add0~61\);

-- Location: LCCOMB_X3_Y20_N14
\U0|U1|length_vary~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~26_combout\ = (\U0|U1|Add0~60_combout\ & !\U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~60_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|length_vary~26_combout\);

-- Location: FF_X3_Y20_N15
\U0|U1|length_vary[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~26_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(30));

-- Location: LCCOMB_X2_Y20_N30
\U0|U1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~62_combout\ = \U0|U1|length_vary\(31) $ (!\U0|U1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary\(31),
	cin => \U0|U1|Add0~61\,
	combout => \U0|U1|Add0~62_combout\);

-- Location: LCCOMB_X3_Y20_N8
\U0|U1|length_vary~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary~25_combout\ = (!\U0|U1|Equal0~9_combout\ & \U0|U1|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~62_combout\,
	combout => \U0|U1|length_vary~25_combout\);

-- Location: FF_X3_Y20_N9
\U0|U1|length_vary[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary~25_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary\(31));

-- Location: LCCOMB_X3_Y20_N24
\U0|U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~0_combout\ = (!\U0|U1|length_vary\(28) & (!\U0|U1|length_vary\(31) & (!\U0|U1|length_vary\(30) & !\U0|U1|length_vary\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(28),
	datab => \U0|U1|length_vary\(31),
	datac => \U0|U1|length_vary\(30),
	datad => \U0|U1|length_vary\(29),
	combout => \U0|U1|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y20_N22
\U0|U1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~2_combout\ = (!\U0|U1|length_vary\(23) & (!\U0|U1|length_vary\(21) & (!\U0|U1|length_vary\(22) & !\U0|U1|length_vary\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(23),
	datab => \U0|U1|length_vary\(21),
	datac => \U0|U1|length_vary\(22),
	datad => \U0|U1|length_vary\(20),
	combout => \U0|U1|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y20_N12
\U0|U1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~1_combout\ = (!\U0|U1|length_vary\(24) & (!\U0|U1|length_vary\(25) & (!\U0|U1|length_vary\(27) & !\U0|U1|length_vary\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_vary\(24),
	datab => \U0|U1|length_vary\(25),
	datac => \U0|U1|length_vary\(27),
	datad => \U0|U1|length_vary\(26),
	combout => \U0|U1|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y20_N28
\U0|U1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~4_combout\ = (\U0|U1|Equal0~3_combout\ & (\U0|U1|Equal0~0_combout\ & (\U0|U1|Equal0~2_combout\ & \U0|U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Equal0~3_combout\,
	datab => \U0|U1|Equal0~0_combout\,
	datac => \U0|U1|Equal0~2_combout\,
	datad => \U0|U1|Equal0~1_combout\,
	combout => \U0|U1|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y20_N18
\U0|U1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal0~9_combout\ = (\U0|U1|Equal0~5_combout\ & (\U0|U1|Equal0~6_combout\ & (\U0|U1|Equal0~8_combout\ & \U0|U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Equal0~5_combout\,
	datab => \U0|U1|Equal0~6_combout\,
	datac => \U0|U1|Equal0~8_combout\,
	datad => \U0|U1|Equal0~4_combout\,
	combout => \U0|U1|Equal0~9_combout\);

-- Location: LCCOMB_X1_Y18_N8
\U0|U1|length_vary[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[1]~15_combout\ = \U0|U1|length_vary[1]~13_combout\ $ (((\U0|U1|Equal0~9_combout\ & (\U0|U1|length_const\(1))) # (!\U0|U1|Equal0~9_combout\ & ((\U0|U1|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|length_const\(1),
	datab => \U0|U1|length_vary[1]~13_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	datad => \U0|U1|Add0~2_combout\,
	combout => \U0|U1|length_vary[1]~15_combout\);

-- Location: FF_X1_Y18_N9
\U0|U1|length_vary[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|length_vary[1]~15_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|length_vary[1]~_emulated_q\);

-- Location: LCCOMB_X1_Y18_N26
\U0|U1|length_vary[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|length_vary[1]~14_combout\ = (\i_rst_l~input_o\ & ((\U0|U1|length_vary[1]~_emulated_q\ $ (\U0|U1|length_vary[1]~13_combout\)))) # (!\i_rst_l~input_o\ & (\i_fp_length[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fp_length[1]~input_o\,
	datac => \U0|U1|length_vary[1]~_emulated_q\,
	datad => \U0|U1|length_vary[1]~13_combout\,
	combout => \U0|U1|length_vary[1]~14_combout\);

-- Location: IOIBUF_X0_Y16_N1
\i_fixed_pattern[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(18),
	o => \i_fixed_pattern[18]~input_o\);

-- Location: FF_X3_Y21_N25
\U0|U1|fixed_pattern_signal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[18]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(18));

-- Location: IOIBUF_X0_Y28_N8
\i_fixed_pattern[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(26),
	o => \i_fixed_pattern[26]~input_o\);

-- Location: LCCOMB_X7_Y25_N0
\U0|U1|fixed_pattern_signal[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[26]~feeder_combout\ = \i_fixed_pattern[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[26]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[26]~feeder_combout\);

-- Location: FF_X7_Y25_N1
\U0|U1|fixed_pattern_signal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[26]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(26));

-- Location: LCCOMB_X3_Y21_N24
\U0|U1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~0_combout\ = (\U0|U1|Add0~6_combout\ & ((\U0|U1|Add0~4_combout\) # ((\U0|U1|fixed_pattern_signal\(26))))) # (!\U0|U1|Add0~6_combout\ & (!\U0|U1|Add0~4_combout\ & (\U0|U1|fixed_pattern_signal\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~6_combout\,
	datab => \U0|U1|Add0~4_combout\,
	datac => \U0|U1|fixed_pattern_signal\(18),
	datad => \U0|U1|fixed_pattern_signal\(26),
	combout => \U0|U1|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\i_fixed_pattern[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(22),
	o => \i_fixed_pattern[22]~input_o\);

-- Location: FF_X3_Y21_N3
\U0|U1|fixed_pattern_signal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[22]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(22));

-- Location: IOIBUF_X0_Y25_N22
\i_fixed_pattern[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(30),
	o => \i_fixed_pattern[30]~input_o\);

-- Location: LCCOMB_X4_Y21_N16
\U0|U1|fixed_pattern_signal[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[30]~feeder_combout\ = \i_fixed_pattern[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[30]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[30]~feeder_combout\);

-- Location: FF_X4_Y21_N17
\U0|U1|fixed_pattern_signal[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[30]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(30));

-- Location: LCCOMB_X3_Y21_N2
\U0|U1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~1_combout\ = (\U0|U1|Add0~4_combout\ & ((\U0|U1|Mux0~0_combout\ & ((\U0|U1|fixed_pattern_signal\(30)))) # (!\U0|U1|Mux0~0_combout\ & (\U0|U1|fixed_pattern_signal\(22))))) # (!\U0|U1|Add0~4_combout\ & (\U0|U1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~4_combout\,
	datab => \U0|U1|Mux0~0_combout\,
	datac => \U0|U1|fixed_pattern_signal\(22),
	datad => \U0|U1|fixed_pattern_signal\(30),
	combout => \U0|U1|Mux0~1_combout\);

-- Location: IOIBUF_X0_Y13_N15
\i_fixed_pattern[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(21),
	o => \i_fixed_pattern[21]~input_o\);

-- Location: FF_X9_Y21_N17
\U0|U1|fixed_pattern_signal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[21]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(21));

-- Location: IOIBUF_X0_Y16_N8
\i_fixed_pattern[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(17),
	o => \i_fixed_pattern[17]~input_o\);

-- Location: FF_X3_Y21_N27
\U0|U1|fixed_pattern_signal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[17]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(17));

-- Location: LCCOMB_X3_Y21_N26
\U0|U1|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~2_combout\ = (\U0|U1|Add0~4_combout\ & ((\U0|U1|fixed_pattern_signal\(21)) # ((\U0|U1|Add0~6_combout\)))) # (!\U0|U1|Add0~4_combout\ & (((\U0|U1|fixed_pattern_signal\(17) & !\U0|U1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|fixed_pattern_signal\(21),
	datab => \U0|U1|Add0~4_combout\,
	datac => \U0|U1|fixed_pattern_signal\(17),
	datad => \U0|U1|Add0~6_combout\,
	combout => \U0|U1|Mux0~2_combout\);

-- Location: IOIBUF_X0_Y25_N1
\i_fixed_pattern[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(25),
	o => \i_fixed_pattern[25]~input_o\);

-- Location: LCCOMB_X4_Y21_N18
\U0|U1|fixed_pattern_signal[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[25]~feeder_combout\ = \i_fixed_pattern[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[25]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[25]~feeder_combout\);

-- Location: FF_X4_Y21_N19
\U0|U1|fixed_pattern_signal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[25]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(25));

-- Location: IOIBUF_X0_Y28_N1
\i_fixed_pattern[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(29),
	o => \i_fixed_pattern[29]~input_o\);

-- Location: FF_X3_Y21_N9
\U0|U1|fixed_pattern_signal[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[29]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(29));

-- Location: LCCOMB_X3_Y21_N8
\U0|U1|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~3_combout\ = (\U0|U1|Mux0~2_combout\ & (((\U0|U1|fixed_pattern_signal\(29)) # (!\U0|U1|Add0~6_combout\)))) # (!\U0|U1|Mux0~2_combout\ & (\U0|U1|fixed_pattern_signal\(25) & ((\U0|U1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Mux0~2_combout\,
	datab => \U0|U1|fixed_pattern_signal\(25),
	datac => \U0|U1|fixed_pattern_signal\(29),
	datad => \U0|U1|Add0~6_combout\,
	combout => \U0|U1|Mux0~3_combout\);

-- Location: IOIBUF_X0_Y34_N1
\i_fixed_pattern[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(24),
	o => \i_fixed_pattern[24]~input_o\);

-- Location: FF_X4_Y21_N15
\U0|U1|fixed_pattern_signal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[24]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(24));

-- Location: IOIBUF_X0_Y16_N22
\i_fixed_pattern[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(16),
	o => \i_fixed_pattern[16]~input_o\);

-- Location: FF_X3_Y21_N11
\U0|U1|fixed_pattern_signal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[16]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(16));

-- Location: LCCOMB_X3_Y21_N10
\U0|U1|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~4_combout\ = (\U0|U1|Add0~4_combout\ & (((\U0|U1|Add0~6_combout\)))) # (!\U0|U1|Add0~4_combout\ & ((\U0|U1|Add0~6_combout\ & (\U0|U1|fixed_pattern_signal\(24))) # (!\U0|U1|Add0~6_combout\ & ((\U0|U1|fixed_pattern_signal\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|fixed_pattern_signal\(24),
	datab => \U0|U1|Add0~4_combout\,
	datac => \U0|U1|fixed_pattern_signal\(16),
	datad => \U0|U1|Add0~6_combout\,
	combout => \U0|U1|Mux0~4_combout\);

-- Location: IOIBUF_X0_Y12_N22
\i_fixed_pattern[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(20),
	o => \i_fixed_pattern[20]~input_o\);

-- Location: LCCOMB_X4_Y21_N8
\U0|U1|fixed_pattern_signal[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[20]~feeder_combout\ = \i_fixed_pattern[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[20]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[20]~feeder_combout\);

-- Location: FF_X4_Y21_N9
\U0|U1|fixed_pattern_signal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[20]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(20));

-- Location: IOIBUF_X0_Y27_N15
\i_fixed_pattern[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(28),
	o => \i_fixed_pattern[28]~input_o\);

-- Location: FF_X3_Y21_N5
\U0|U1|fixed_pattern_signal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[28]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(28));

-- Location: LCCOMB_X3_Y21_N4
\U0|U1|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~5_combout\ = (\U0|U1|Mux0~4_combout\ & (((\U0|U1|fixed_pattern_signal\(28)) # (!\U0|U1|Add0~4_combout\)))) # (!\U0|U1|Mux0~4_combout\ & (\U0|U1|fixed_pattern_signal\(20) & ((\U0|U1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Mux0~4_combout\,
	datab => \U0|U1|fixed_pattern_signal\(20),
	datac => \U0|U1|fixed_pattern_signal\(28),
	datad => \U0|U1|Add0~4_combout\,
	combout => \U0|U1|Mux0~5_combout\);

-- Location: LCCOMB_X3_Y21_N30
\U0|U1|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~6_combout\ = (\U0|U1|Add0~0_combout\ & ((\U0|U1|Mux0~3_combout\) # ((\U0|U1|Add0~2_combout\)))) # (!\U0|U1|Add0~0_combout\ & (((\U0|U1|Mux0~5_combout\ & !\U0|U1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~0_combout\,
	datab => \U0|U1|Mux0~3_combout\,
	datac => \U0|U1|Mux0~5_combout\,
	datad => \U0|U1|Add0~2_combout\,
	combout => \U0|U1|Mux0~6_combout\);

-- Location: IOIBUF_X0_Y29_N1
\i_fixed_pattern[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(27),
	o => \i_fixed_pattern[27]~input_o\);

-- Location: LCCOMB_X7_Y25_N26
\U0|U1|fixed_pattern_signal[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[27]~feeder_combout\ = \i_fixed_pattern[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[27]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[27]~feeder_combout\);

-- Location: FF_X7_Y25_N27
\U0|U1|fixed_pattern_signal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[27]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(27));

-- Location: IOIBUF_X0_Y30_N1
\i_fixed_pattern[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(31),
	o => \i_fixed_pattern[31]~input_o\);

-- Location: FF_X3_Y21_N21
\U0|U1|fixed_pattern_signal[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[31]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(31));

-- Location: IOIBUF_X0_Y13_N8
\i_fixed_pattern[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(19),
	o => \i_fixed_pattern[19]~input_o\);

-- Location: FF_X4_Y21_N7
\U0|U1|fixed_pattern_signal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[19]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(19));

-- Location: IOIBUF_X0_Y35_N1
\i_fixed_pattern[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(23),
	o => \i_fixed_pattern[23]~input_o\);

-- Location: FF_X4_Y21_N29
\U0|U1|fixed_pattern_signal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[23]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(23));

-- Location: LCCOMB_X4_Y21_N6
\U0|U1|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~7_combout\ = (\U0|U1|Add0~6_combout\ & (\U0|U1|Add0~4_combout\)) # (!\U0|U1|Add0~6_combout\ & ((\U0|U1|Add0~4_combout\ & ((\U0|U1|fixed_pattern_signal\(23)))) # (!\U0|U1|Add0~4_combout\ & (\U0|U1|fixed_pattern_signal\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~6_combout\,
	datab => \U0|U1|Add0~4_combout\,
	datac => \U0|U1|fixed_pattern_signal\(19),
	datad => \U0|U1|fixed_pattern_signal\(23),
	combout => \U0|U1|Mux0~7_combout\);

-- Location: LCCOMB_X3_Y21_N20
\U0|U1|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~8_combout\ = (\U0|U1|Add0~6_combout\ & ((\U0|U1|Mux0~7_combout\ & ((\U0|U1|fixed_pattern_signal\(31)))) # (!\U0|U1|Mux0~7_combout\ & (\U0|U1|fixed_pattern_signal\(27))))) # (!\U0|U1|Add0~6_combout\ & (((\U0|U1|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~6_combout\,
	datab => \U0|U1|fixed_pattern_signal\(27),
	datac => \U0|U1|fixed_pattern_signal\(31),
	datad => \U0|U1|Mux0~7_combout\,
	combout => \U0|U1|Mux0~8_combout\);

-- Location: LCCOMB_X3_Y21_N6
\U0|U1|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~9_combout\ = (\U0|U1|Add0~2_combout\ & ((\U0|U1|Mux0~6_combout\ & ((\U0|U1|Mux0~8_combout\))) # (!\U0|U1|Mux0~6_combout\ & (\U0|U1|Mux0~1_combout\)))) # (!\U0|U1|Add0~2_combout\ & (((\U0|U1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~2_combout\,
	datab => \U0|U1|Mux0~1_combout\,
	datac => \U0|U1|Mux0~6_combout\,
	datad => \U0|U1|Mux0~8_combout\,
	combout => \U0|U1|Mux0~9_combout\);

-- Location: IOIBUF_X0_Y18_N1
\i_fixed_pattern[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(13),
	o => \i_fixed_pattern[13]~input_o\);

-- Location: LCCOMB_X1_Y21_N24
\U0|U1|fixed_pattern_signal[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[13]~feeder_combout\ = \i_fixed_pattern[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[13]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[13]~feeder_combout\);

-- Location: FF_X1_Y21_N25
\U0|U1|fixed_pattern_signal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[13]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(13));

-- Location: IOIBUF_X0_Y15_N8
\i_fixed_pattern[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(15),
	o => \i_fixed_pattern[15]~input_o\);

-- Location: FF_X1_Y21_N31
\U0|U1|fixed_pattern_signal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[15]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(15));

-- Location: IOIBUF_X0_Y18_N8
\i_fixed_pattern[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(12),
	o => \i_fixed_pattern[12]~input_o\);

-- Location: FF_X1_Y21_N9
\U0|U1|fixed_pattern_signal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[12]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(12));

-- Location: IOIBUF_X0_Y15_N22
\i_fixed_pattern[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(14),
	o => \i_fixed_pattern[14]~input_o\);

-- Location: FF_X1_Y21_N11
\U0|U1|fixed_pattern_signal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[14]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(14));

-- Location: LCCOMB_X1_Y21_N8
\U0|U1|Mux0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~17_combout\ = (\U0|U1|Add0~2_combout\ & ((\U0|U1|Add0~0_combout\) # ((\U0|U1|fixed_pattern_signal\(14))))) # (!\U0|U1|Add0~2_combout\ & (!\U0|U1|Add0~0_combout\ & (\U0|U1|fixed_pattern_signal\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~2_combout\,
	datab => \U0|U1|Add0~0_combout\,
	datac => \U0|U1|fixed_pattern_signal\(12),
	datad => \U0|U1|fixed_pattern_signal\(14),
	combout => \U0|U1|Mux0~17_combout\);

-- Location: LCCOMB_X1_Y21_N30
\U0|U1|Mux0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~18_combout\ = (\U0|U1|Add0~0_combout\ & ((\U0|U1|Mux0~17_combout\ & ((\U0|U1|fixed_pattern_signal\(15)))) # (!\U0|U1|Mux0~17_combout\ & (\U0|U1|fixed_pattern_signal\(13))))) # (!\U0|U1|Add0~0_combout\ & (((\U0|U1|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~0_combout\,
	datab => \U0|U1|fixed_pattern_signal\(13),
	datac => \U0|U1|fixed_pattern_signal\(15),
	datad => \U0|U1|Mux0~17_combout\,
	combout => \U0|U1|Mux0~18_combout\);

-- Location: IOIBUF_X0_Y10_N15
\i_fixed_pattern[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(6),
	o => \i_fixed_pattern[6]~input_o\);

-- Location: FF_X9_Y21_N23
\U0|U1|fixed_pattern_signal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[6]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(6));

-- Location: IOIBUF_X0_Y27_N1
\i_fixed_pattern[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(4),
	o => \i_fixed_pattern[4]~input_o\);

-- Location: FF_X3_Y21_N1
\U0|U1|fixed_pattern_signal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[4]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(4));

-- Location: LCCOMB_X3_Y21_N0
\U0|U1|Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~12_combout\ = (\U0|U1|Add0~2_combout\ & ((\U0|U1|fixed_pattern_signal\(6)) # ((\U0|U1|Add0~0_combout\)))) # (!\U0|U1|Add0~2_combout\ & (((\U0|U1|fixed_pattern_signal\(4) & !\U0|U1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~2_combout\,
	datab => \U0|U1|fixed_pattern_signal\(6),
	datac => \U0|U1|fixed_pattern_signal\(4),
	datad => \U0|U1|Add0~0_combout\,
	combout => \U0|U1|Mux0~12_combout\);

-- Location: IOIBUF_X0_Y23_N15
\i_fixed_pattern[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(7),
	o => \i_fixed_pattern[7]~input_o\);

-- Location: FF_X3_Y21_N15
\U0|U1|fixed_pattern_signal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[7]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(7));

-- Location: IOIBUF_X0_Y12_N1
\i_fixed_pattern[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(5),
	o => \i_fixed_pattern[5]~input_o\);

-- Location: LCCOMB_X4_Y21_N24
\U0|U1|fixed_pattern_signal[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[5]~feeder_combout\ = \i_fixed_pattern[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[5]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[5]~feeder_combout\);

-- Location: FF_X4_Y21_N25
\U0|U1|fixed_pattern_signal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[5]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(5));

-- Location: LCCOMB_X3_Y21_N14
\U0|U1|Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~13_combout\ = (\U0|U1|Add0~0_combout\ & ((\U0|U1|Mux0~12_combout\ & (\U0|U1|fixed_pattern_signal\(7))) # (!\U0|U1|Mux0~12_combout\ & ((\U0|U1|fixed_pattern_signal\(5)))))) # (!\U0|U1|Add0~0_combout\ & (\U0|U1|Mux0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~0_combout\,
	datab => \U0|U1|Mux0~12_combout\,
	datac => \U0|U1|fixed_pattern_signal\(7),
	datad => \U0|U1|fixed_pattern_signal\(5),
	combout => \U0|U1|Mux0~13_combout\);

-- Location: IOIBUF_X0_Y29_N8
\i_fixed_pattern[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(1),
	o => \i_fixed_pattern[1]~input_o\);

-- Location: FF_X6_Y25_N15
\U0|U1|fixed_pattern_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[1]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(1));

-- Location: IOIBUF_X0_Y25_N15
\i_fixed_pattern[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(0),
	o => \i_fixed_pattern[0]~input_o\);

-- Location: FF_X3_Y21_N13
\U0|U1|fixed_pattern_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[0]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(0));

-- Location: LCCOMB_X3_Y21_N12
\U0|U1|Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~14_combout\ = (\U0|U1|Add0~2_combout\ & (((\U0|U1|Add0~0_combout\)))) # (!\U0|U1|Add0~2_combout\ & ((\U0|U1|Add0~0_combout\ & (\U0|U1|fixed_pattern_signal\(1))) # (!\U0|U1|Add0~0_combout\ & ((\U0|U1|fixed_pattern_signal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~2_combout\,
	datab => \U0|U1|fixed_pattern_signal\(1),
	datac => \U0|U1|fixed_pattern_signal\(0),
	datad => \U0|U1|Add0~0_combout\,
	combout => \U0|U1|Mux0~14_combout\);

-- Location: IOIBUF_X0_Y34_N8
\i_fixed_pattern[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(2),
	o => \i_fixed_pattern[2]~input_o\);

-- Location: LCCOMB_X6_Y25_N24
\U0|U1|fixed_pattern_signal[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[2]~feeder_combout\ = \i_fixed_pattern[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[2]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[2]~feeder_combout\);

-- Location: FF_X6_Y25_N25
\U0|U1|fixed_pattern_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[2]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(2));

-- Location: IOIBUF_X0_Y34_N22
\i_fixed_pattern[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(3),
	o => \i_fixed_pattern[3]~input_o\);

-- Location: FF_X3_Y21_N23
\U0|U1|fixed_pattern_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[3]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(3));

-- Location: LCCOMB_X3_Y21_N22
\U0|U1|Mux0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~15_combout\ = (\U0|U1|Mux0~14_combout\ & (((\U0|U1|fixed_pattern_signal\(3)) # (!\U0|U1|Add0~2_combout\)))) # (!\U0|U1|Mux0~14_combout\ & (\U0|U1|fixed_pattern_signal\(2) & ((\U0|U1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Mux0~14_combout\,
	datab => \U0|U1|fixed_pattern_signal\(2),
	datac => \U0|U1|fixed_pattern_signal\(3),
	datad => \U0|U1|Add0~2_combout\,
	combout => \U0|U1|Mux0~15_combout\);

-- Location: LCCOMB_X3_Y21_N28
\U0|U1|Mux0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~16_combout\ = (\U0|U1|Add0~6_combout\ & (((\U0|U1|Add0~4_combout\)))) # (!\U0|U1|Add0~6_combout\ & ((\U0|U1|Add0~4_combout\ & (\U0|U1|Mux0~13_combout\)) # (!\U0|U1|Add0~4_combout\ & ((\U0|U1|Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~6_combout\,
	datab => \U0|U1|Mux0~13_combout\,
	datac => \U0|U1|Mux0~15_combout\,
	datad => \U0|U1|Add0~4_combout\,
	combout => \U0|U1|Mux0~16_combout\);

-- Location: IOIBUF_X0_Y23_N22
\i_fixed_pattern[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(8),
	o => \i_fixed_pattern[8]~input_o\);

-- Location: FF_X1_Y21_N13
\U0|U1|fixed_pattern_signal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[8]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(8));

-- Location: IOIBUF_X0_Y23_N8
\i_fixed_pattern[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(9),
	o => \i_fixed_pattern[9]~input_o\);

-- Location: LCCOMB_X1_Y21_N18
\U0|U1|fixed_pattern_signal[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|fixed_pattern_signal[9]~feeder_combout\ = \i_fixed_pattern[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fixed_pattern[9]~input_o\,
	combout => \U0|U1|fixed_pattern_signal[9]~feeder_combout\);

-- Location: FF_X1_Y21_N19
\U0|U1|fixed_pattern_signal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|fixed_pattern_signal[9]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(9));

-- Location: LCCOMB_X1_Y21_N12
\U0|U1|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~10_combout\ = (\U0|U1|Add0~2_combout\ & (\U0|U1|Add0~0_combout\)) # (!\U0|U1|Add0~2_combout\ & ((\U0|U1|Add0~0_combout\ & ((\U0|U1|fixed_pattern_signal\(9)))) # (!\U0|U1|Add0~0_combout\ & (\U0|U1|fixed_pattern_signal\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~2_combout\,
	datab => \U0|U1|Add0~0_combout\,
	datac => \U0|U1|fixed_pattern_signal\(8),
	datad => \U0|U1|fixed_pattern_signal\(9),
	combout => \U0|U1|Mux0~10_combout\);

-- Location: IOIBUF_X0_Y27_N8
\i_fixed_pattern[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(11),
	o => \i_fixed_pattern[11]~input_o\);

-- Location: FF_X1_Y21_N3
\U0|U1|fixed_pattern_signal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[11]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(11));

-- Location: IOIBUF_X0_Y27_N22
\i_fixed_pattern[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fixed_pattern(10),
	o => \i_fixed_pattern[10]~input_o\);

-- Location: FF_X1_Y21_N21
\U0|U1|fixed_pattern_signal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fixed_pattern[10]~input_o\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_fixed_pattern_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|fixed_pattern_signal\(10));

-- Location: LCCOMB_X1_Y21_N20
\U0|U1|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~11_combout\ = (\U0|U1|Mux0~10_combout\ & ((\U0|U1|fixed_pattern_signal\(11)) # ((!\U0|U1|Add0~2_combout\)))) # (!\U0|U1|Mux0~10_combout\ & (((\U0|U1|fixed_pattern_signal\(10) & \U0|U1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Mux0~10_combout\,
	datab => \U0|U1|fixed_pattern_signal\(11),
	datac => \U0|U1|fixed_pattern_signal\(10),
	datad => \U0|U1|Add0~2_combout\,
	combout => \U0|U1|Mux0~11_combout\);

-- Location: LCCOMB_X3_Y21_N18
\U0|U1|Mux0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Mux0~19_combout\ = (\U0|U1|Mux0~16_combout\ & ((\U0|U1|Mux0~18_combout\) # ((!\U0|U1|Add0~6_combout\)))) # (!\U0|U1|Mux0~16_combout\ & (((\U0|U1|Mux0~11_combout\ & \U0|U1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Mux0~18_combout\,
	datab => \U0|U1|Mux0~16_combout\,
	datac => \U0|U1|Mux0~11_combout\,
	datad => \U0|U1|Add0~6_combout\,
	combout => \U0|U1|Mux0~19_combout\);

-- Location: LCCOMB_X1_Y21_N26
\U0|U1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Equal1~0_combout\ = (!\U0|U1|length_vary[0]~18_combout\ & \U0|U1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|length_vary[0]~18_combout\,
	datac => \U0|U1|Equal0~9_combout\,
	combout => \U0|U1|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y21_N16
\U0|U1|output_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|output_data~0_combout\ = (!\U0|U1|Equal1~0_combout\ & ((\U0|U1|Add0~8_combout\ & (\U0|U1|Mux0~9_combout\)) # (!\U0|U1|Add0~8_combout\ & ((\U0|U1|Mux0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Mux0~9_combout\,
	datab => \U0|U1|Mux0~19_combout\,
	datac => \U0|U1|Add0~8_combout\,
	datad => \U0|U1|Equal1~0_combout\,
	combout => \U0|U1|output_data~0_combout\);

-- Location: FF_X3_Y21_N17
\U0|U1|output_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U1|output_data~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|output_data~q\);

-- Location: LCCOMB_X2_Y18_N16
\U0|U3|o_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U3|o_data~3_combout\ = (\i_fixed_pn_pattern_sel~input_o\ & (!\i_fixed_pattern_wr~input_o\ & \U0|U1|output_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pn_pattern_sel~input_o\,
	datac => \i_fixed_pattern_wr~input_o\,
	datad => \U0|U1|output_data~q\,
	combout => \U0|U3|o_data~3_combout\);

-- Location: IOIBUF_X0_Y12_N15
\i_pattern_sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pattern_sel(1),
	o => \i_pattern_sel[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\i_pattern_sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pattern_sel(0),
	o => \i_pattern_sel[0]~input_o\);

-- Location: LCCOMB_X1_Y14_N2
\U0|U2|U1|reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|reg~6_combout\ = (!\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & (\U0|U2|U1|reg\(5) $ (\U0|U2|U1|reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datab => \U0|U2|U1|reg\(5),
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U1|reg\(6),
	combout => \U0|U2|U1|reg~6_combout\);

-- Location: FF_X1_Y14_N3
\U0|U2|U1|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U1|reg~6_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|reg\(0));

-- Location: LCCOMB_X1_Y14_N20
\U0|U2|U1|reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|reg~5_combout\ = (!\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U1|reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U1|reg\(0),
	combout => \U0|U2|U1|reg~5_combout\);

-- Location: FF_X1_Y14_N21
\U0|U2|U1|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U1|reg~5_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|reg\(1));

-- Location: LCCOMB_X1_Y14_N18
\U0|U2|U1|reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|reg~4_combout\ = (!\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U1|reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U1|reg\(1),
	combout => \U0|U2|U1|reg~4_combout\);

-- Location: FF_X1_Y14_N19
\U0|U2|U1|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U1|reg~4_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|reg\(2));

-- Location: LCCOMB_X1_Y14_N4
\U0|U2|U1|reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|reg~3_combout\ = (!\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U1|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U1|reg\(2),
	combout => \U0|U2|U1|reg~3_combout\);

-- Location: FF_X1_Y14_N5
\U0|U2|U1|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U1|reg~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|reg\(3));

-- Location: LCCOMB_X1_Y14_N10
\U0|U2|U1|reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|reg~2_combout\ = (!\i_pattern_sel[1]~input_o\ & (!\U0|U2|U1|reg\(3) & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datab => \U0|U2|U1|reg\(3),
	datac => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U1|reg~2_combout\);

-- Location: FF_X1_Y14_N11
\U0|U2|U1|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U1|reg~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|reg\(4));

-- Location: LCCOMB_X1_Y14_N28
\U0|U2|U1|reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|reg~1_combout\ = (!\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U1|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U1|reg\(4),
	combout => \U0|U2|U1|reg~1_combout\);

-- Location: FF_X1_Y14_N29
\U0|U2|U1|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U1|reg~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|reg\(5));

-- Location: LCCOMB_X1_Y14_N12
\U0|U2|U1|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|reg~0_combout\ = (!\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U1|reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U1|reg\(5),
	combout => \U0|U2|U1|reg~0_combout\);

-- Location: FF_X1_Y14_N13
\U0|U2|U1|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U1|reg~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|reg\(6));

-- Location: LCCOMB_X1_Y15_N24
\U0|U2|U2|reg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~14_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & (\U0|U2|U2|reg\(13) $ (\U0|U2|U2|reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datab => \U0|U2|U2|reg\(13),
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(14),
	combout => \U0|U2|U2|reg~14_combout\);

-- Location: FF_X1_Y15_N25
\U0|U2|U2|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~14_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(0));

-- Location: LCCOMB_X1_Y15_N2
\U0|U2|U2|reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~13_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(0),
	combout => \U0|U2|U2|reg~13_combout\);

-- Location: FF_X1_Y15_N3
\U0|U2|U2|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~13_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(1));

-- Location: LCCOMB_X1_Y15_N16
\U0|U2|U2|reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~12_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(1),
	combout => \U0|U2|U2|reg~12_combout\);

-- Location: FF_X1_Y15_N17
\U0|U2|U2|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~12_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(2));

-- Location: LCCOMB_X1_Y15_N10
\U0|U2|U2|reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~11_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(2),
	combout => \U0|U2|U2|reg~11_combout\);

-- Location: FF_X1_Y15_N11
\U0|U2|U2|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~11_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(3));

-- Location: LCCOMB_X1_Y15_N4
\U0|U2|U2|reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~10_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(3),
	combout => \U0|U2|U2|reg~10_combout\);

-- Location: FF_X1_Y15_N5
\U0|U2|U2|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~10_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(4));

-- Location: LCCOMB_X1_Y15_N6
\U0|U2|U2|reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~9_combout\ = (!\i_pattern_sel[0]~input_o\ & (!\U0|U2|U2|reg\(4) & \i_pattern_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datab => \U0|U2|U2|reg\(4),
	datac => \i_pattern_sel[1]~input_o\,
	combout => \U0|U2|U2|reg~9_combout\);

-- Location: FF_X1_Y15_N7
\U0|U2|U2|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~9_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(5));

-- Location: LCCOMB_X1_Y15_N8
\U0|U2|U2|reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~8_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(5),
	combout => \U0|U2|U2|reg~8_combout\);

-- Location: FF_X1_Y15_N9
\U0|U2|U2|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~8_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(6));

-- Location: LCCOMB_X1_Y15_N14
\U0|U2|U2|reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~7_combout\ = (!\i_pattern_sel[0]~input_o\ & (!\U0|U2|U2|reg\(6) & \i_pattern_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datab => \U0|U2|U2|reg\(6),
	datac => \i_pattern_sel[1]~input_o\,
	combout => \U0|U2|U2|reg~7_combout\);

-- Location: FF_X1_Y15_N15
\U0|U2|U2|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~7_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(7));

-- Location: LCCOMB_X1_Y15_N20
\U0|U2|U2|reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~6_combout\ = (!\i_pattern_sel[0]~input_o\ & (!\U0|U2|U2|reg\(7) & \i_pattern_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datab => \U0|U2|U2|reg\(7),
	datac => \i_pattern_sel[1]~input_o\,
	combout => \U0|U2|U2|reg~6_combout\);

-- Location: FF_X1_Y15_N21
\U0|U2|U2|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~6_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(8));

-- Location: LCCOMB_X1_Y15_N22
\U0|U2|U2|reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~5_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(8),
	combout => \U0|U2|U2|reg~5_combout\);

-- Location: FF_X1_Y15_N23
\U0|U2|U2|reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~5_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(9));

-- Location: LCCOMB_X1_Y15_N0
\U0|U2|U2|reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~4_combout\ = (\i_pattern_sel[1]~input_o\ & (!\U0|U2|U2|reg\(9) & !\i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \U0|U2|U2|reg\(9),
	datad => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U2|reg~4_combout\);

-- Location: FF_X1_Y15_N1
\U0|U2|U2|reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~4_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(10));

-- Location: LCCOMB_X1_Y15_N26
\U0|U2|U2|reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~3_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(10),
	combout => \U0|U2|U2|reg~3_combout\);

-- Location: FF_X1_Y15_N27
\U0|U2|U2|reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(11));

-- Location: LCCOMB_X1_Y15_N28
\U0|U2|U2|reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~2_combout\ = (\i_pattern_sel[1]~input_o\ & (!\U0|U2|U2|reg\(11) & !\i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \U0|U2|U2|reg\(11),
	datad => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U2|reg~2_combout\);

-- Location: FF_X1_Y15_N29
\U0|U2|U2|reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(12));

-- Location: LCCOMB_X1_Y15_N18
\U0|U2|U2|reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~1_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(12),
	combout => \U0|U2|U2|reg~1_combout\);

-- Location: FF_X1_Y15_N19
\U0|U2|U2|reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(13));

-- Location: LCCOMB_X1_Y15_N12
\U0|U2|U2|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U2|reg~0_combout\ = (!\i_pattern_sel[0]~input_o\ & (\i_pattern_sel[1]~input_o\ & !\U0|U2|U2|reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[0]~input_o\,
	datac => \i_pattern_sel[1]~input_o\,
	datad => \U0|U2|U2|reg\(13),
	combout => \U0|U2|U2|reg~0_combout\);

-- Location: FF_X1_Y15_N13
\U0|U2|U2|reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U2|reg~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U2|reg\(14));

-- Location: LCCOMB_X1_Y14_N22
\U0|U3|o_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U3|o_data~0_combout\ = (\i_pattern_sel[0]~input_o\ & (!\U0|U2|U1|reg\(6) & ((!\i_pattern_sel[1]~input_o\)))) # (!\i_pattern_sel[0]~input_o\ & (((!\U0|U2|U2|reg\(14) & \i_pattern_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|reg\(6),
	datab => \U0|U2|U2|reg\(14),
	datac => \i_pattern_sel[0]~input_o\,
	datad => \i_pattern_sel[1]~input_o\,
	combout => \U0|U3|o_data~0_combout\);

-- Location: LCCOMB_X2_Y14_N24
\U0|U2|U3|reg~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~30_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & (\U0|U2|U3|reg\(27) $ (\U0|U2|U3|reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datab => \U0|U2|U3|reg\(27),
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(30),
	combout => \U0|U2|U3|reg~30_combout\);

-- Location: FF_X2_Y14_N25
\U0|U2|U3|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~30_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(0));

-- Location: LCCOMB_X3_Y14_N16
\U0|U2|U3|reg~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~29_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(0),
	combout => \U0|U2|U3|reg~29_combout\);

-- Location: FF_X3_Y14_N17
\U0|U2|U3|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~29_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(1));

-- Location: LCCOMB_X3_Y14_N22
\U0|U2|U3|reg~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~28_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(1),
	combout => \U0|U2|U3|reg~28_combout\);

-- Location: FF_X3_Y14_N23
\U0|U2|U3|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~28_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(2));

-- Location: LCCOMB_X3_Y14_N24
\U0|U2|U3|reg~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~27_combout\ = (!\U0|U2|U3|reg\(2) & (\i_pattern_sel[1]~input_o\ & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U3|reg\(2),
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~27_combout\);

-- Location: FF_X3_Y14_N25
\U0|U2|U3|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~27_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(3));

-- Location: LCCOMB_X3_Y14_N18
\U0|U2|U3|reg~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~26_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(3),
	combout => \U0|U2|U3|reg~26_combout\);

-- Location: FF_X3_Y14_N19
\U0|U2|U3|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~26_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(4));

-- Location: LCCOMB_X3_Y14_N20
\U0|U2|U3|reg~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~25_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(4),
	combout => \U0|U2|U3|reg~25_combout\);

-- Location: FF_X3_Y14_N21
\U0|U2|U3|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~25_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(5));

-- Location: LCCOMB_X3_Y14_N26
\U0|U2|U3|reg~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~24_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(5),
	combout => \U0|U2|U3|reg~24_combout\);

-- Location: FF_X3_Y14_N27
\U0|U2|U3|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~24_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(6));

-- Location: LCCOMB_X3_Y14_N28
\U0|U2|U3|reg~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~23_combout\ = (!\U0|U2|U3|reg\(6) & (\i_pattern_sel[1]~input_o\ & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U3|reg\(6),
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~23_combout\);

-- Location: FF_X3_Y14_N29
\U0|U2|U3|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~23_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(7));

-- Location: LCCOMB_X3_Y14_N10
\U0|U2|U3|reg~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~22_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(7),
	combout => \U0|U2|U3|reg~22_combout\);

-- Location: FF_X3_Y14_N11
\U0|U2|U3|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~22_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(8));

-- Location: LCCOMB_X3_Y14_N12
\U0|U2|U3|reg~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~21_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(8),
	combout => \U0|U2|U3|reg~21_combout\);

-- Location: FF_X3_Y14_N13
\U0|U2|U3|reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~21_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(9));

-- Location: LCCOMB_X3_Y14_N14
\U0|U2|U3|reg~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~20_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(9),
	combout => \U0|U2|U3|reg~20_combout\);

-- Location: FF_X3_Y14_N15
\U0|U2|U3|reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~20_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(10));

-- Location: LCCOMB_X4_Y14_N26
\U0|U2|U3|reg~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~19_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(10),
	combout => \U0|U2|U3|reg~19_combout\);

-- Location: FF_X4_Y14_N27
\U0|U2|U3|reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~19_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(11));

-- Location: LCCOMB_X4_Y14_N24
\U0|U2|U3|reg~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~18_combout\ = (!\U0|U2|U3|reg\(11) & (\i_pattern_sel[1]~input_o\ & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U3|reg\(11),
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~18_combout\);

-- Location: FF_X4_Y14_N25
\U0|U2|U3|reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~18_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(12));

-- Location: LCCOMB_X4_Y14_N18
\U0|U2|U3|reg~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~17_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(12),
	combout => \U0|U2|U3|reg~17_combout\);

-- Location: FF_X4_Y14_N19
\U0|U2|U3|reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~17_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(13));

-- Location: LCCOMB_X4_Y14_N20
\U0|U2|U3|reg~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~16_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(13),
	combout => \U0|U2|U3|reg~16_combout\);

-- Location: FF_X4_Y14_N21
\U0|U2|U3|reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~16_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(14));

-- Location: LCCOMB_X4_Y14_N30
\U0|U2|U3|reg~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~15_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(14),
	combout => \U0|U2|U3|reg~15_combout\);

-- Location: FF_X4_Y14_N31
\U0|U2|U3|reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~15_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(15));

-- Location: LCCOMB_X4_Y14_N16
\U0|U2|U3|reg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~14_combout\ = (!\U0|U2|U3|reg\(15) & (\i_pattern_sel[1]~input_o\ & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U3|reg\(15),
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~14_combout\);

-- Location: FF_X4_Y14_N17
\U0|U2|U3|reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~14_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(16));

-- Location: LCCOMB_X4_Y14_N6
\U0|U2|U3|reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~13_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(16),
	combout => \U0|U2|U3|reg~13_combout\);

-- Location: FF_X4_Y14_N7
\U0|U2|U3|reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~13_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(17));

-- Location: LCCOMB_X4_Y14_N0
\U0|U2|U3|reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~12_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(17),
	combout => \U0|U2|U3|reg~12_combout\);

-- Location: FF_X4_Y14_N1
\U0|U2|U3|reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~12_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(18));

-- Location: LCCOMB_X4_Y14_N22
\U0|U2|U3|reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~11_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(18),
	combout => \U0|U2|U3|reg~11_combout\);

-- Location: FF_X4_Y14_N23
\U0|U2|U3|reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~11_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(19));

-- Location: LCCOMB_X4_Y14_N8
\U0|U2|U3|reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~10_combout\ = (!\U0|U2|U3|reg\(19) & (\i_pattern_sel[1]~input_o\ & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U3|reg\(19),
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~10_combout\);

-- Location: FF_X4_Y14_N9
\U0|U2|U3|reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~10_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(20));

-- Location: LCCOMB_X4_Y14_N2
\U0|U2|U3|reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~9_combout\ = (\i_pattern_sel[1]~input_o\ & (!\U0|U2|U3|reg\(20) & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \U0|U2|U3|reg\(20),
	datad => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~9_combout\);

-- Location: FF_X4_Y14_N3
\U0|U2|U3|reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~9_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(21));

-- Location: LCCOMB_X4_Y14_N12
\U0|U2|U3|reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~8_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(21),
	combout => \U0|U2|U3|reg~8_combout\);

-- Location: FF_X4_Y14_N13
\U0|U2|U3|reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~8_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(22));

-- Location: LCCOMB_X4_Y14_N14
\U0|U2|U3|reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~7_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(22),
	combout => \U0|U2|U3|reg~7_combout\);

-- Location: FF_X4_Y14_N15
\U0|U2|U3|reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~7_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(23));

-- Location: LCCOMB_X4_Y14_N28
\U0|U2|U3|reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~6_combout\ = (\i_pattern_sel[1]~input_o\ & (!\U0|U2|U3|reg\(23) & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \U0|U2|U3|reg\(23),
	datad => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~6_combout\);

-- Location: FF_X4_Y14_N29
\U0|U2|U3|reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~6_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(24));

-- Location: LCCOMB_X4_Y14_N10
\U0|U2|U3|reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~5_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(24),
	combout => \U0|U2|U3|reg~5_combout\);

-- Location: FF_X4_Y14_N11
\U0|U2|U3|reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~5_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(25));

-- Location: LCCOMB_X4_Y14_N4
\U0|U2|U3|reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~4_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(25),
	combout => \U0|U2|U3|reg~4_combout\);

-- Location: FF_X4_Y14_N5
\U0|U2|U3|reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~4_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(26));

-- Location: LCCOMB_X3_Y14_N8
\U0|U2|U3|reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~3_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(26),
	combout => \U0|U2|U3|reg~3_combout\);

-- Location: FF_X3_Y14_N9
\U0|U2|U3|reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(27));

-- Location: LCCOMB_X2_Y14_N12
\U0|U2|U3|reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~2_combout\ = (\i_pattern_sel[1]~input_o\ & (!\U0|U2|U3|reg\(27) & \i_pattern_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datab => \U0|U2|U3|reg\(27),
	datac => \i_pattern_sel[0]~input_o\,
	combout => \U0|U2|U3|reg~2_combout\);

-- Location: FF_X2_Y14_N13
\U0|U2|U3|reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(28));

-- Location: LCCOMB_X2_Y14_N28
\U0|U2|U3|reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~1_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(28),
	combout => \U0|U2|U3|reg~1_combout\);

-- Location: FF_X2_Y14_N29
\U0|U2|U3|reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(29));

-- Location: LCCOMB_X2_Y14_N10
\U0|U2|U3|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U3|reg~0_combout\ = (\i_pattern_sel[1]~input_o\ & (\i_pattern_sel[0]~input_o\ & !\U0|U2|U3|reg\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U3|reg\(29),
	combout => \U0|U2|U3|reg~0_combout\);

-- Location: FF_X2_Y14_N11
\U0|U2|U3|reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U3|reg~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U3|reg\(30));

-- Location: LCCOMB_X2_Y14_N6
\U0|U2|U0|reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|reg~3_combout\ = (!\i_pattern_sel[1]~input_o\ & (!\i_pattern_sel[0]~input_o\ & (\U0|U2|U0|reg\(2) $ (!\U0|U2|U0|reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datab => \U0|U2|U0|reg\(2),
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U0|reg\(3),
	combout => \U0|U2|U0|reg~3_combout\);

-- Location: FF_X2_Y14_N7
\U0|U2|U0|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U0|reg~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|reg\(0));

-- Location: LCCOMB_X2_Y14_N2
\U0|U2|U0|reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|reg~2_combout\ = (!\i_pattern_sel[1]~input_o\ & (!\i_pattern_sel[0]~input_o\ & !\U0|U2|U0|reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U0|reg\(0),
	combout => \U0|U2|U0|reg~2_combout\);

-- Location: FF_X2_Y14_N3
\U0|U2|U0|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U0|reg~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|reg\(1));

-- Location: LCCOMB_X2_Y14_N18
\U0|U2|U0|reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|reg~1_combout\ = (!\i_pattern_sel[1]~input_o\ & (!\i_pattern_sel[0]~input_o\ & !\U0|U2|U0|reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U0|reg\(1),
	combout => \U0|U2|U0|reg~1_combout\);

-- Location: FF_X2_Y14_N19
\U0|U2|U0|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U0|reg~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|reg\(2));

-- Location: LCCOMB_X2_Y14_N20
\U0|U2|U0|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|reg~0_combout\ = (!\i_pattern_sel[1]~input_o\ & (!\i_pattern_sel[0]~input_o\ & !\U0|U2|U0|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pattern_sel[1]~input_o\,
	datac => \i_pattern_sel[0]~input_o\,
	datad => \U0|U2|U0|reg\(2),
	combout => \U0|U2|U0|reg~0_combout\);

-- Location: FF_X2_Y14_N21
\U0|U2|U0|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U2|U0|reg~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|reg\(3));

-- Location: LCCOMB_X2_Y14_N4
\U0|U3|o_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U3|o_data~1_combout\ = (\i_pattern_sel[0]~input_o\ & (!\U0|U2|U3|reg\(30) & ((\i_pattern_sel[1]~input_o\)))) # (!\i_pattern_sel[0]~input_o\ & (((!\U0|U2|U0|reg\(3) & !\i_pattern_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U3|reg\(30),
	datab => \U0|U2|U0|reg\(3),
	datac => \i_pattern_sel[0]~input_o\,
	datad => \i_pattern_sel[1]~input_o\,
	combout => \U0|U3|o_data~1_combout\);

-- Location: LCCOMB_X2_Y18_N26
\U0|U3|o_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U3|o_data~2_combout\ = (!\i_fixed_pn_pattern_sel~input_o\ & ((\U0|U3|o_data~0_combout\) # (\U0|U3|o_data~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U3|o_data~0_combout\,
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \U0|U3|o_data~1_combout\,
	combout => \U0|U3|o_data~2_combout\);

-- Location: IOIBUF_X0_Y15_N15
\i_inject_signal[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_inject_signal(1),
	o => \i_inject_signal[1]~input_o\);

-- Location: LCCOMB_X3_Y15_N16
\U0|U0|delay1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|delay1[1]~feeder_combout\ = \i_inject_signal[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_inject_signal[1]~input_o\,
	combout => \U0|U0|delay1[1]~feeder_combout\);

-- Location: FF_X3_Y15_N17
\U0|U0|delay1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U0|delay1[1]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|delay1\(1));

-- Location: LCCOMB_X3_Y22_N24
\U0|U0|delay2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|delay2[1]~feeder_combout\ = \U0|U0|delay1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U0|delay1\(1),
	combout => \U0|U0|delay2[1]~feeder_combout\);

-- Location: FF_X3_Y22_N25
\U0|U0|delay2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U0|delay2[1]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|delay2\(1));

-- Location: LCCOMB_X10_Y22_N10
\U0|U0|delay3[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|delay3[1]~feeder_combout\ = \U0|U0|delay2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U0|delay2\(1),
	combout => \U0|U0|delay3[1]~feeder_combout\);

-- Location: FF_X10_Y22_N11
\U0|U0|delay3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U0|delay3[1]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|delay3\(1));

-- Location: IOIBUF_X0_Y15_N1
\i_inject_signal[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_inject_signal(0),
	o => \i_inject_signal[0]~input_o\);

-- Location: LCCOMB_X9_Y15_N16
\U0|U0|delay1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|delay1[0]~feeder_combout\ = \i_inject_signal[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_inject_signal[0]~input_o\,
	combout => \U0|U0|delay1[0]~feeder_combout\);

-- Location: FF_X9_Y15_N17
\U0|U0|delay1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U0|delay1[0]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|delay1\(0));

-- Location: FF_X10_Y22_N27
\U0|U0|delay2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U0|U0|delay1\(0),
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|delay2\(0));

-- Location: LCCOMB_X10_Y22_N20
\U0|U0|delay3[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|delay3[0]~feeder_combout\ = \U0|U0|delay2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|delay2\(0),
	combout => \U0|U0|delay3[0]~feeder_combout\);

-- Location: FF_X10_Y22_N21
\U0|U0|delay3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U0|delay3[0]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|delay3\(0));

-- Location: LCCOMB_X10_Y22_N26
\U0|U4|state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|state~0_combout\ = (\U0|U0|delay3\(1) & ((\U0|U0|delay3\(0)) # ((!\U0|U0|delay2\(0))))) # (!\U0|U0|delay3\(1) & (\U0|U0|delay2\(1) $ (((\U0|U0|delay3\(0)) # (!\U0|U0|delay2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|delay3\(1),
	datab => \U0|U0|delay3\(0),
	datac => \U0|U0|delay2\(0),
	datad => \U0|U0|delay2\(1),
	combout => \U0|U4|state~0_combout\);

-- Location: LCCOMB_X11_Y22_N2
\U0|U4|count[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[0]~31_combout\ = \U0|U4|count\(0) $ (VCC)
-- \U0|U4|count[0]~32\ = CARRY(\U0|U4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(0),
	datad => VCC,
	combout => \U0|U4|count[0]~31_combout\,
	cout => \U0|U4|count[0]~32\);

-- Location: LCCOMB_X10_Y22_N12
\U0|U4|count~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count~39_combout\ = (\U0|U0|delay3\(1) & (!\U0|U0|delay3\(0) & (\U0|U0|delay2\(0)))) # (!\U0|U0|delay3\(1) & (\U0|U0|delay2\(1) $ (((!\U0|U0|delay3\(0) & \U0|U0|delay2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|delay3\(1),
	datab => \U0|U0|delay3\(0),
	datac => \U0|U0|delay2\(0),
	datad => \U0|U0|delay2\(1),
	combout => \U0|U4|count~39_combout\);

-- Location: LCCOMB_X10_Y22_N22
\U0|U4|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal1~0_combout\ = (!\U0|U0|delay3\(1) & (\U0|U0|delay2\(1) & ((\U0|U0|delay3\(0)) # (!\U0|U0|delay2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|delay3\(1),
	datab => \U0|U0|delay2\(1),
	datac => \U0|U0|delay2\(0),
	datad => \U0|U0|delay3\(0),
	combout => \U0|U4|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y22_N6
\U0|U4|count[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[2]~35_combout\ = (\U0|U4|count\(2) & (\U0|U4|count[1]~34\ $ (GND))) # (!\U0|U4|count\(2) & (!\U0|U4|count[1]~34\ & VCC))
-- \U0|U4|count[2]~36\ = CARRY((\U0|U4|count\(2) & !\U0|U4|count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(2),
	datad => VCC,
	cin => \U0|U4|count[1]~34\,
	combout => \U0|U4|count[2]~35_combout\,
	cout => \U0|U4|count[2]~36\);

-- Location: LCCOMB_X11_Y22_N8
\U0|U4|count[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[3]~37_combout\ = (\U0|U4|count\(3) & (!\U0|U4|count[2]~36\)) # (!\U0|U4|count\(3) & ((\U0|U4|count[2]~36\) # (GND)))
-- \U0|U4|count[3]~38\ = CARRY((!\U0|U4|count[2]~36\) # (!\U0|U4|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(3),
	datad => VCC,
	cin => \U0|U4|count[2]~36\,
	combout => \U0|U4|count[3]~37_combout\,
	cout => \U0|U4|count[3]~38\);

-- Location: LCCOMB_X10_Y22_N8
\U0|U4|count[9]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[9]~41_combout\ = (\U0|U4|count~39_combout\) # ((!\U0|U4|Equal2~8_combout\) # (!\U0|U4|Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count~39_combout\,
	datab => \U0|U4|Equal2~9_combout\,
	datad => \U0|U4|Equal2~8_combout\,
	combout => \U0|U4|count[9]~41_combout\);

-- Location: FF_X11_Y22_N9
\U0|U4|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[3]~37_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(3));

-- Location: LCCOMB_X11_Y22_N10
\U0|U4|count[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[4]~42_combout\ = (\U0|U4|count\(4) & (\U0|U4|count[3]~38\ $ (GND))) # (!\U0|U4|count\(4) & (!\U0|U4|count[3]~38\ & VCC))
-- \U0|U4|count[4]~43\ = CARRY((\U0|U4|count\(4) & !\U0|U4|count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(4),
	datad => VCC,
	cin => \U0|U4|count[3]~38\,
	combout => \U0|U4|count[4]~42_combout\,
	cout => \U0|U4|count[4]~43\);

-- Location: FF_X11_Y22_N11
\U0|U4|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[4]~42_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(4));

-- Location: LCCOMB_X11_Y22_N12
\U0|U4|count[5]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[5]~44_combout\ = (\U0|U4|count\(5) & (!\U0|U4|count[4]~43\)) # (!\U0|U4|count\(5) & ((\U0|U4|count[4]~43\) # (GND)))
-- \U0|U4|count[5]~45\ = CARRY((!\U0|U4|count[4]~43\) # (!\U0|U4|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(5),
	datad => VCC,
	cin => \U0|U4|count[4]~43\,
	combout => \U0|U4|count[5]~44_combout\,
	cout => \U0|U4|count[5]~45\);

-- Location: FF_X11_Y22_N13
\U0|U4|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[5]~44_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(5));

-- Location: LCCOMB_X11_Y22_N14
\U0|U4|count[6]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[6]~46_combout\ = (\U0|U4|count\(6) & (\U0|U4|count[5]~45\ $ (GND))) # (!\U0|U4|count\(6) & (!\U0|U4|count[5]~45\ & VCC))
-- \U0|U4|count[6]~47\ = CARRY((\U0|U4|count\(6) & !\U0|U4|count[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(6),
	datad => VCC,
	cin => \U0|U4|count[5]~45\,
	combout => \U0|U4|count[6]~46_combout\,
	cout => \U0|U4|count[6]~47\);

-- Location: FF_X11_Y22_N15
\U0|U4|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[6]~46_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(6));

-- Location: LCCOMB_X11_Y22_N16
\U0|U4|count[7]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[7]~48_combout\ = (\U0|U4|count\(7) & (!\U0|U4|count[6]~47\)) # (!\U0|U4|count\(7) & ((\U0|U4|count[6]~47\) # (GND)))
-- \U0|U4|count[7]~49\ = CARRY((!\U0|U4|count[6]~47\) # (!\U0|U4|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(7),
	datad => VCC,
	cin => \U0|U4|count[6]~47\,
	combout => \U0|U4|count[7]~48_combout\,
	cout => \U0|U4|count[7]~49\);

-- Location: FF_X11_Y22_N17
\U0|U4|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[7]~48_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(7));

-- Location: LCCOMB_X11_Y22_N18
\U0|U4|count[8]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[8]~50_combout\ = (\U0|U4|count\(8) & (\U0|U4|count[7]~49\ $ (GND))) # (!\U0|U4|count\(8) & (!\U0|U4|count[7]~49\ & VCC))
-- \U0|U4|count[8]~51\ = CARRY((\U0|U4|count\(8) & !\U0|U4|count[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(8),
	datad => VCC,
	cin => \U0|U4|count[7]~49\,
	combout => \U0|U4|count[8]~50_combout\,
	cout => \U0|U4|count[8]~51\);

-- Location: FF_X11_Y22_N19
\U0|U4|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[8]~50_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(8));

-- Location: LCCOMB_X11_Y22_N20
\U0|U4|count[9]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[9]~52_combout\ = (\U0|U4|count\(9) & (!\U0|U4|count[8]~51\)) # (!\U0|U4|count\(9) & ((\U0|U4|count[8]~51\) # (GND)))
-- \U0|U4|count[9]~53\ = CARRY((!\U0|U4|count[8]~51\) # (!\U0|U4|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(9),
	datad => VCC,
	cin => \U0|U4|count[8]~51\,
	combout => \U0|U4|count[9]~52_combout\,
	cout => \U0|U4|count[9]~53\);

-- Location: FF_X11_Y22_N21
\U0|U4|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[9]~52_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(9));

-- Location: LCCOMB_X11_Y22_N22
\U0|U4|count[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[10]~54_combout\ = (\U0|U4|count\(10) & (\U0|U4|count[9]~53\ $ (GND))) # (!\U0|U4|count\(10) & (!\U0|U4|count[9]~53\ & VCC))
-- \U0|U4|count[10]~55\ = CARRY((\U0|U4|count\(10) & !\U0|U4|count[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(10),
	datad => VCC,
	cin => \U0|U4|count[9]~53\,
	combout => \U0|U4|count[10]~54_combout\,
	cout => \U0|U4|count[10]~55\);

-- Location: FF_X11_Y22_N23
\U0|U4|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[10]~54_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(10));

-- Location: LCCOMB_X11_Y22_N24
\U0|U4|count[11]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[11]~56_combout\ = (\U0|U4|count\(11) & (!\U0|U4|count[10]~55\)) # (!\U0|U4|count\(11) & ((\U0|U4|count[10]~55\) # (GND)))
-- \U0|U4|count[11]~57\ = CARRY((!\U0|U4|count[10]~55\) # (!\U0|U4|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(11),
	datad => VCC,
	cin => \U0|U4|count[10]~55\,
	combout => \U0|U4|count[11]~56_combout\,
	cout => \U0|U4|count[11]~57\);

-- Location: FF_X11_Y22_N25
\U0|U4|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[11]~56_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(11));

-- Location: LCCOMB_X11_Y22_N26
\U0|U4|count[12]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[12]~58_combout\ = (\U0|U4|count\(12) & (\U0|U4|count[11]~57\ $ (GND))) # (!\U0|U4|count\(12) & (!\U0|U4|count[11]~57\ & VCC))
-- \U0|U4|count[12]~59\ = CARRY((\U0|U4|count\(12) & !\U0|U4|count[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(12),
	datad => VCC,
	cin => \U0|U4|count[11]~57\,
	combout => \U0|U4|count[12]~58_combout\,
	cout => \U0|U4|count[12]~59\);

-- Location: FF_X11_Y22_N27
\U0|U4|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[12]~58_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(12));

-- Location: LCCOMB_X11_Y22_N28
\U0|U4|count[13]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[13]~60_combout\ = (\U0|U4|count\(13) & (!\U0|U4|count[12]~59\)) # (!\U0|U4|count\(13) & ((\U0|U4|count[12]~59\) # (GND)))
-- \U0|U4|count[13]~61\ = CARRY((!\U0|U4|count[12]~59\) # (!\U0|U4|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(13),
	datad => VCC,
	cin => \U0|U4|count[12]~59\,
	combout => \U0|U4|count[13]~60_combout\,
	cout => \U0|U4|count[13]~61\);

-- Location: FF_X11_Y22_N29
\U0|U4|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[13]~60_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(13));

-- Location: LCCOMB_X11_Y22_N30
\U0|U4|count[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[14]~62_combout\ = (\U0|U4|count\(14) & (\U0|U4|count[13]~61\ $ (GND))) # (!\U0|U4|count\(14) & (!\U0|U4|count[13]~61\ & VCC))
-- \U0|U4|count[14]~63\ = CARRY((\U0|U4|count\(14) & !\U0|U4|count[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(14),
	datad => VCC,
	cin => \U0|U4|count[13]~61\,
	combout => \U0|U4|count[14]~62_combout\,
	cout => \U0|U4|count[14]~63\);

-- Location: FF_X11_Y22_N31
\U0|U4|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[14]~62_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(14));

-- Location: LCCOMB_X11_Y21_N0
\U0|U4|count[15]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[15]~64_combout\ = (\U0|U4|count\(15) & (!\U0|U4|count[14]~63\)) # (!\U0|U4|count\(15) & ((\U0|U4|count[14]~63\) # (GND)))
-- \U0|U4|count[15]~65\ = CARRY((!\U0|U4|count[14]~63\) # (!\U0|U4|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(15),
	datad => VCC,
	cin => \U0|U4|count[14]~63\,
	combout => \U0|U4|count[15]~64_combout\,
	cout => \U0|U4|count[15]~65\);

-- Location: FF_X11_Y21_N1
\U0|U4|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[15]~64_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(15));

-- Location: LCCOMB_X11_Y21_N2
\U0|U4|count[16]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[16]~66_combout\ = (\U0|U4|count\(16) & (\U0|U4|count[15]~65\ $ (GND))) # (!\U0|U4|count\(16) & (!\U0|U4|count[15]~65\ & VCC))
-- \U0|U4|count[16]~67\ = CARRY((\U0|U4|count\(16) & !\U0|U4|count[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(16),
	datad => VCC,
	cin => \U0|U4|count[15]~65\,
	combout => \U0|U4|count[16]~66_combout\,
	cout => \U0|U4|count[16]~67\);

-- Location: FF_X11_Y21_N3
\U0|U4|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[16]~66_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(16));

-- Location: LCCOMB_X11_Y21_N4
\U0|U4|count[17]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[17]~68_combout\ = (\U0|U4|count\(17) & (!\U0|U4|count[16]~67\)) # (!\U0|U4|count\(17) & ((\U0|U4|count[16]~67\) # (GND)))
-- \U0|U4|count[17]~69\ = CARRY((!\U0|U4|count[16]~67\) # (!\U0|U4|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(17),
	datad => VCC,
	cin => \U0|U4|count[16]~67\,
	combout => \U0|U4|count[17]~68_combout\,
	cout => \U0|U4|count[17]~69\);

-- Location: FF_X11_Y21_N5
\U0|U4|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[17]~68_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(17));

-- Location: LCCOMB_X11_Y21_N6
\U0|U4|count[18]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[18]~70_combout\ = (\U0|U4|count\(18) & (\U0|U4|count[17]~69\ $ (GND))) # (!\U0|U4|count\(18) & (!\U0|U4|count[17]~69\ & VCC))
-- \U0|U4|count[18]~71\ = CARRY((\U0|U4|count\(18) & !\U0|U4|count[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(18),
	datad => VCC,
	cin => \U0|U4|count[17]~69\,
	combout => \U0|U4|count[18]~70_combout\,
	cout => \U0|U4|count[18]~71\);

-- Location: FF_X11_Y21_N7
\U0|U4|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[18]~70_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(18));

-- Location: LCCOMB_X11_Y21_N8
\U0|U4|count[19]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[19]~72_combout\ = (\U0|U4|count\(19) & (!\U0|U4|count[18]~71\)) # (!\U0|U4|count\(19) & ((\U0|U4|count[18]~71\) # (GND)))
-- \U0|U4|count[19]~73\ = CARRY((!\U0|U4|count[18]~71\) # (!\U0|U4|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(19),
	datad => VCC,
	cin => \U0|U4|count[18]~71\,
	combout => \U0|U4|count[19]~72_combout\,
	cout => \U0|U4|count[19]~73\);

-- Location: FF_X11_Y21_N9
\U0|U4|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[19]~72_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(19));

-- Location: LCCOMB_X11_Y21_N10
\U0|U4|count[20]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[20]~74_combout\ = (\U0|U4|count\(20) & (\U0|U4|count[19]~73\ $ (GND))) # (!\U0|U4|count\(20) & (!\U0|U4|count[19]~73\ & VCC))
-- \U0|U4|count[20]~75\ = CARRY((\U0|U4|count\(20) & !\U0|U4|count[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(20),
	datad => VCC,
	cin => \U0|U4|count[19]~73\,
	combout => \U0|U4|count[20]~74_combout\,
	cout => \U0|U4|count[20]~75\);

-- Location: FF_X11_Y21_N11
\U0|U4|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[20]~74_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(20));

-- Location: LCCOMB_X11_Y21_N12
\U0|U4|count[21]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[21]~76_combout\ = (\U0|U4|count\(21) & (!\U0|U4|count[20]~75\)) # (!\U0|U4|count\(21) & ((\U0|U4|count[20]~75\) # (GND)))
-- \U0|U4|count[21]~77\ = CARRY((!\U0|U4|count[20]~75\) # (!\U0|U4|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(21),
	datad => VCC,
	cin => \U0|U4|count[20]~75\,
	combout => \U0|U4|count[21]~76_combout\,
	cout => \U0|U4|count[21]~77\);

-- Location: FF_X11_Y21_N13
\U0|U4|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[21]~76_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(21));

-- Location: LCCOMB_X11_Y21_N14
\U0|U4|count[22]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[22]~78_combout\ = (\U0|U4|count\(22) & (\U0|U4|count[21]~77\ $ (GND))) # (!\U0|U4|count\(22) & (!\U0|U4|count[21]~77\ & VCC))
-- \U0|U4|count[22]~79\ = CARRY((\U0|U4|count\(22) & !\U0|U4|count[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(22),
	datad => VCC,
	cin => \U0|U4|count[21]~77\,
	combout => \U0|U4|count[22]~78_combout\,
	cout => \U0|U4|count[22]~79\);

-- Location: FF_X11_Y21_N15
\U0|U4|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[22]~78_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(22));

-- Location: LCCOMB_X11_Y21_N16
\U0|U4|count[23]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[23]~80_combout\ = (\U0|U4|count\(23) & (!\U0|U4|count[22]~79\)) # (!\U0|U4|count\(23) & ((\U0|U4|count[22]~79\) # (GND)))
-- \U0|U4|count[23]~81\ = CARRY((!\U0|U4|count[22]~79\) # (!\U0|U4|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(23),
	datad => VCC,
	cin => \U0|U4|count[22]~79\,
	combout => \U0|U4|count[23]~80_combout\,
	cout => \U0|U4|count[23]~81\);

-- Location: FF_X11_Y21_N17
\U0|U4|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[23]~80_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(23));

-- Location: LCCOMB_X11_Y21_N18
\U0|U4|count[24]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[24]~82_combout\ = (\U0|U4|count\(24) & (\U0|U4|count[23]~81\ $ (GND))) # (!\U0|U4|count\(24) & (!\U0|U4|count[23]~81\ & VCC))
-- \U0|U4|count[24]~83\ = CARRY((\U0|U4|count\(24) & !\U0|U4|count[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(24),
	datad => VCC,
	cin => \U0|U4|count[23]~81\,
	combout => \U0|U4|count[24]~82_combout\,
	cout => \U0|U4|count[24]~83\);

-- Location: FF_X11_Y21_N19
\U0|U4|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[24]~82_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(24));

-- Location: LCCOMB_X11_Y21_N20
\U0|U4|count[25]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[25]~84_combout\ = (\U0|U4|count\(25) & (!\U0|U4|count[24]~83\)) # (!\U0|U4|count\(25) & ((\U0|U4|count[24]~83\) # (GND)))
-- \U0|U4|count[25]~85\ = CARRY((!\U0|U4|count[24]~83\) # (!\U0|U4|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(25),
	datad => VCC,
	cin => \U0|U4|count[24]~83\,
	combout => \U0|U4|count[25]~84_combout\,
	cout => \U0|U4|count[25]~85\);

-- Location: FF_X11_Y21_N21
\U0|U4|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[25]~84_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(25));

-- Location: LCCOMB_X11_Y21_N22
\U0|U4|count[26]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[26]~86_combout\ = (\U0|U4|count\(26) & (\U0|U4|count[25]~85\ $ (GND))) # (!\U0|U4|count\(26) & (!\U0|U4|count[25]~85\ & VCC))
-- \U0|U4|count[26]~87\ = CARRY((\U0|U4|count\(26) & !\U0|U4|count[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(26),
	datad => VCC,
	cin => \U0|U4|count[25]~85\,
	combout => \U0|U4|count[26]~86_combout\,
	cout => \U0|U4|count[26]~87\);

-- Location: FF_X11_Y21_N23
\U0|U4|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[26]~86_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(26));

-- Location: LCCOMB_X11_Y21_N24
\U0|U4|count[27]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[27]~88_combout\ = (\U0|U4|count\(27) & (!\U0|U4|count[26]~87\)) # (!\U0|U4|count\(27) & ((\U0|U4|count[26]~87\) # (GND)))
-- \U0|U4|count[27]~89\ = CARRY((!\U0|U4|count[26]~87\) # (!\U0|U4|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(27),
	datad => VCC,
	cin => \U0|U4|count[26]~87\,
	combout => \U0|U4|count[27]~88_combout\,
	cout => \U0|U4|count[27]~89\);

-- Location: FF_X11_Y21_N25
\U0|U4|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[27]~88_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(27));

-- Location: LCCOMB_X11_Y21_N26
\U0|U4|count[28]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[28]~90_combout\ = (\U0|U4|count\(28) & (\U0|U4|count[27]~89\ $ (GND))) # (!\U0|U4|count\(28) & (!\U0|U4|count[27]~89\ & VCC))
-- \U0|U4|count[28]~91\ = CARRY((\U0|U4|count\(28) & !\U0|U4|count[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(28),
	datad => VCC,
	cin => \U0|U4|count[27]~89\,
	combout => \U0|U4|count[28]~90_combout\,
	cout => \U0|U4|count[28]~91\);

-- Location: FF_X11_Y21_N27
\U0|U4|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[28]~90_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(28));

-- Location: LCCOMB_X11_Y21_N28
\U0|U4|count[29]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[29]~92_combout\ = (\U0|U4|count\(29) & (!\U0|U4|count[28]~91\)) # (!\U0|U4|count\(29) & ((\U0|U4|count[28]~91\) # (GND)))
-- \U0|U4|count[29]~93\ = CARRY((!\U0|U4|count[28]~91\) # (!\U0|U4|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(29),
	datad => VCC,
	cin => \U0|U4|count[28]~91\,
	combout => \U0|U4|count[29]~92_combout\,
	cout => \U0|U4|count[29]~93\);

-- Location: FF_X11_Y21_N29
\U0|U4|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[29]~92_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(29));

-- Location: LCCOMB_X11_Y21_N30
\U0|U4|count[30]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[30]~94_combout\ = \U0|U4|count\(30) $ (!\U0|U4|count[29]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(30),
	cin => \U0|U4|count[29]~93\,
	combout => \U0|U4|count[30]~94_combout\);

-- Location: FF_X11_Y21_N31
\U0|U4|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[30]~94_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(30));

-- Location: LCCOMB_X10_Y21_N4
\U0|U4|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~7_combout\ = (!\U0|U4|count\(29) & (!\U0|U4|count\(30) & !\U0|U4|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(29),
	datac => \U0|U4|count\(30),
	datad => \U0|U4|count\(28),
	combout => \U0|U4|Equal2~7_combout\);

-- Location: LCCOMB_X10_Y21_N0
\U0|U4|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~5_combout\ = (!\U0|U4|count\(21) & (!\U0|U4|count\(20) & (!\U0|U4|count\(22) & !\U0|U4|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(21),
	datab => \U0|U4|count\(20),
	datac => \U0|U4|count\(22),
	datad => \U0|U4|count\(23),
	combout => \U0|U4|Equal2~5_combout\);

-- Location: LCCOMB_X11_Y22_N0
\U0|U4|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~0_combout\ = (!\U0|U4|count\(5) & (!\U0|U4|count\(6) & (!\U0|U4|count\(3) & !\U0|U4|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(5),
	datab => \U0|U4|count\(6),
	datac => \U0|U4|count\(3),
	datad => \U0|U4|count\(7),
	combout => \U0|U4|Equal2~0_combout\);

-- Location: LCCOMB_X12_Y22_N18
\U0|U4|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~2_combout\ = (!\U0|U4|count\(12) & (!\U0|U4|count\(14) & (!\U0|U4|count\(13) & !\U0|U4|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(12),
	datab => \U0|U4|count\(14),
	datac => \U0|U4|count\(13),
	datad => \U0|U4|count\(15),
	combout => \U0|U4|Equal2~2_combout\);

-- Location: LCCOMB_X12_Y22_N8
\U0|U4|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~1_combout\ = (!\U0|U4|count\(11) & (!\U0|U4|count\(8) & (!\U0|U4|count\(10) & !\U0|U4|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(11),
	datab => \U0|U4|count\(8),
	datac => \U0|U4|count\(10),
	datad => \U0|U4|count\(9),
	combout => \U0|U4|Equal2~1_combout\);

-- Location: LCCOMB_X12_Y22_N12
\U0|U4|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~3_combout\ = (!\U0|U4|count\(19) & (!\U0|U4|count\(16) & (!\U0|U4|count\(18) & !\U0|U4|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(19),
	datab => \U0|U4|count\(16),
	datac => \U0|U4|count\(18),
	datad => \U0|U4|count\(17),
	combout => \U0|U4|Equal2~3_combout\);

-- Location: LCCOMB_X12_Y22_N22
\U0|U4|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~4_combout\ = (\U0|U4|Equal2~0_combout\ & (\U0|U4|Equal2~2_combout\ & (\U0|U4|Equal2~1_combout\ & \U0|U4|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|Equal2~0_combout\,
	datab => \U0|U4|Equal2~2_combout\,
	datac => \U0|U4|Equal2~1_combout\,
	datad => \U0|U4|Equal2~3_combout\,
	combout => \U0|U4|Equal2~4_combout\);

-- Location: LCCOMB_X10_Y21_N22
\U0|U4|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~6_combout\ = (!\U0|U4|count\(27) & (!\U0|U4|count\(26) & (!\U0|U4|count\(25) & !\U0|U4|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(27),
	datab => \U0|U4|count\(26),
	datac => \U0|U4|count\(25),
	datad => \U0|U4|count\(24),
	combout => \U0|U4|Equal2~6_combout\);

-- Location: LCCOMB_X10_Y22_N28
\U0|U4|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~8_combout\ = (\U0|U4|Equal2~7_combout\ & (\U0|U4|Equal2~5_combout\ & (\U0|U4|Equal2~4_combout\ & \U0|U4|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|Equal2~7_combout\,
	datab => \U0|U4|Equal2~5_combout\,
	datac => \U0|U4|Equal2~4_combout\,
	datad => \U0|U4|Equal2~6_combout\,
	combout => \U0|U4|Equal2~8_combout\);

-- Location: LCCOMB_X10_Y22_N18
\U0|U4|max_count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|max_count[0]~0_combout\ = (\U0|U4|count~39_combout\) # ((!\U0|U4|Equal2~9_combout\ & (\U0|U4|Equal3~1_combout\ & \U0|U4|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count~39_combout\,
	datab => \U0|U4|Equal2~9_combout\,
	datac => \U0|U4|Equal3~1_combout\,
	datad => \U0|U4|Equal2~8_combout\,
	combout => \U0|U4|max_count[0]~0_combout\);

-- Location: FF_X10_Y22_N23
\U0|U4|max_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|Equal1~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U0|U4|max_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|max_count\(4));

-- Location: LCCOMB_X10_Y22_N2
\U0|U4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal0~0_combout\ = (\U0|U0|delay2\(0) & (!\U0|U0|delay3\(0) & ((\U0|U0|delay3\(1)) # (!\U0|U0|delay2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|delay3\(1),
	datab => \U0|U0|delay2\(1),
	datac => \U0|U0|delay2\(0),
	datad => \U0|U0|delay3\(0),
	combout => \U0|U4|Equal0~0_combout\);

-- Location: FF_X10_Y22_N3
\U0|U4|max_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|Equal0~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U0|U4|max_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|max_count\(0));

-- Location: LCCOMB_X10_Y22_N24
\U0|U4|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal3~0_combout\ = (\U0|U4|count\(0) & (\U0|U4|max_count\(0) & \U0|U4|count\(1))) # (!\U0|U4|count\(0) & (!\U0|U4|max_count\(0) & !\U0|U4|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(0),
	datab => \U0|U4|max_count\(0),
	datad => \U0|U4|count\(1),
	combout => \U0|U4|Equal3~0_combout\);

-- Location: LCCOMB_X10_Y22_N4
\U0|U4|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal3~1_combout\ = (\U0|U4|Equal3~0_combout\ & ((\U0|U4|max_count\(4) & (\U0|U4|count\(4) & \U0|U4|count\(2))) # (!\U0|U4|max_count\(4) & (!\U0|U4|count\(4) & !\U0|U4|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|max_count\(4),
	datab => \U0|U4|Equal3~0_combout\,
	datac => \U0|U4|count\(4),
	datad => \U0|U4|count\(2),
	combout => \U0|U4|Equal3~1_combout\);

-- Location: LCCOMB_X10_Y22_N6
\U0|U4|count[9]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[9]~40_combout\ = (!\U0|U4|count~39_combout\ & (\U0|U4|Equal3~1_combout\ & \U0|U4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count~39_combout\,
	datab => \U0|U4|Equal3~1_combout\,
	datad => \U0|U4|Equal2~8_combout\,
	combout => \U0|U4|count[9]~40_combout\);

-- Location: FF_X11_Y22_N3
\U0|U4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[0]~31_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(0));

-- Location: LCCOMB_X11_Y22_N4
\U0|U4|count[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|count[1]~33_combout\ = (\U0|U4|count\(1) & (!\U0|U4|count[0]~32\)) # (!\U0|U4|count\(1) & ((\U0|U4|count[0]~32\) # (GND)))
-- \U0|U4|count[1]~34\ = CARRY((!\U0|U4|count[0]~32\) # (!\U0|U4|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|count\(1),
	datad => VCC,
	cin => \U0|U4|count[0]~32\,
	combout => \U0|U4|count[1]~33_combout\,
	cout => \U0|U4|count[1]~34\);

-- Location: FF_X11_Y22_N5
\U0|U4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[1]~33_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(1));

-- Location: FF_X11_Y22_N7
\U0|U4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|count[2]~35_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U0|U4|count[9]~40_combout\,
	ena => \U0|U4|count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|count\(2));

-- Location: LCCOMB_X10_Y22_N16
\U0|U4|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|Equal2~9_combout\ = (!\U0|U4|count\(2) & (!\U0|U4|count\(4) & (!\U0|U4|count\(0) & !\U0|U4|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|count\(2),
	datab => \U0|U4|count\(4),
	datac => \U0|U4|count\(0),
	datad => \U0|U4|count\(1),
	combout => \U0|U4|Equal2~9_combout\);

-- Location: LCCOMB_X10_Y22_N14
\U0|U4|state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|state~1_combout\ = (\U0|U4|state~0_combout\ & (\U0|U4|Equal2~8_combout\ & ((\U0|U4|Equal2~9_combout\) # (\U0|U4|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U4|state~0_combout\,
	datab => \U0|U4|Equal2~9_combout\,
	datac => \U0|U4|Equal3~1_combout\,
	datad => \U0|U4|Equal2~8_combout\,
	combout => \U0|U4|state~1_combout\);

-- Location: LCCOMB_X2_Y18_N12
\U0|U4|state~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U4|state~2_combout\ = \U0|U4|state~1_combout\ $ ((((!\U0|U3|o_data~3_combout\ & !\U0|U3|o_data~2_combout\)) # (!\i_data_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data_en~input_o\,
	datab => \U0|U3|o_data~3_combout\,
	datac => \U0|U3|o_data~2_combout\,
	datad => \U0|U4|state~1_combout\,
	combout => \U0|U4|state~2_combout\);

-- Location: FF_X2_Y18_N13
\U0|U4|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U0|U4|state~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U4|state~q\);

-- Location: LCCOMB_X8_Y27_N6
\U1|U2|U0|cmp_cnt[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|cmp_cnt[0]~5_combout\ = \U1|U2|U0|cmp_cnt\(0) $ (VCC)
-- \U1|U2|U0|cmp_cnt[0]~6\ = CARRY(\U1|U2|U0|cmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|cmp_cnt\(0),
	datad => VCC,
	combout => \U1|U2|U0|cmp_cnt[0]~5_combout\,
	cout => \U1|U2|U0|cmp_cnt[0]~6\);

-- Location: LCCOMB_X8_Y27_N10
\U1|U2|U0|cmp_cnt[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|cmp_cnt[2]~9_combout\ = (\U1|U2|U0|cmp_cnt\(2) & (\U1|U2|U0|cmp_cnt[1]~8\ $ (GND))) # (!\U1|U2|U0|cmp_cnt\(2) & (!\U1|U2|U0|cmp_cnt[1]~8\ & VCC))
-- \U1|U2|U0|cmp_cnt[2]~10\ = CARRY((\U1|U2|U0|cmp_cnt\(2) & !\U1|U2|U0|cmp_cnt[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|cmp_cnt\(2),
	datad => VCC,
	cin => \U1|U2|U0|cmp_cnt[1]~8\,
	combout => \U1|U2|U0|cmp_cnt[2]~9_combout\,
	cout => \U1|U2|U0|cmp_cnt[2]~10\);

-- Location: LCCOMB_X8_Y27_N12
\U1|U2|U0|cmp_cnt[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|cmp_cnt[3]~11_combout\ = (\U1|U2|U0|cmp_cnt\(3) & (!\U1|U2|U0|cmp_cnt[2]~10\)) # (!\U1|U2|U0|cmp_cnt\(3) & ((\U1|U2|U0|cmp_cnt[2]~10\) # (GND)))
-- \U1|U2|U0|cmp_cnt[3]~12\ = CARRY((!\U1|U2|U0|cmp_cnt[2]~10\) # (!\U1|U2|U0|cmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|cmp_cnt\(3),
	datad => VCC,
	cin => \U1|U2|U0|cmp_cnt[2]~10\,
	combout => \U1|U2|U0|cmp_cnt[3]~11_combout\,
	cout => \U1|U2|U0|cmp_cnt[3]~12\);

-- Location: FF_X8_Y27_N13
\U1|U2|U0|cmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|cmp_cnt[3]~11_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U0|cmp_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|cmp_cnt\(3));

-- Location: LCCOMB_X8_Y27_N14
\U1|U2|U0|cmp_cnt[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|cmp_cnt[4]~13_combout\ = \U1|U2|U0|cmp_cnt\(4) $ (!\U1|U2|U0|cmp_cnt[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U0|cmp_cnt\(4),
	cin => \U1|U2|U0|cmp_cnt[3]~12\,
	combout => \U1|U2|U0|cmp_cnt[4]~13_combout\);

-- Location: FF_X8_Y27_N15
\U1|U2|U0|cmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|cmp_cnt[4]~13_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U0|cmp_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|cmp_cnt\(4));

-- Location: IOIBUF_X0_Y30_N22
\i_en_from_gen_to_det~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_en_from_gen_to_det,
	o => \i_en_from_gen_to_det~input_o\);

-- Location: LCCOMB_X6_Y28_N8
\U1|U4|o_pn_det\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U4|o_pn_det~combout\ = (!\i_fixed_pn_pattern_sel~input_o\ & \i_en_from_gen_to_det~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pn_pattern_sel~input_o\,
	datad => \i_en_from_gen_to_det~input_o\,
	combout => \U1|U4|o_pn_det~combout\);

-- Location: LCCOMB_X8_Y27_N22
\U1|U2|U0|seed_cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|seed_cnt~1_combout\ = (!\U1|U2|U0|seed_cnt\(0) & \U1|U2|U0|pstate.GENERATE_SEED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U0|seed_cnt\(0),
	datad => \U1|U2|U0|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U0|seed_cnt~1_combout\);

-- Location: FF_X8_Y27_N23
\U1|U2|U0|seed_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|seed_cnt~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|seed_cnt\(0));

-- Location: LCCOMB_X8_Y27_N24
\U1|U2|U0|seed_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|seed_cnt~0_combout\ = (\U1|U2|U0|pstate.GENERATE_SEED~q\ & (\U1|U2|U0|seed_cnt\(0) $ (\U1|U2|U0|seed_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|seed_cnt\(0),
	datac => \U1|U2|U0|seed_cnt\(1),
	datad => \U1|U2|U0|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U0|seed_cnt~0_combout\);

-- Location: FF_X8_Y27_N25
\U1|U2|U0|seed_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|seed_cnt~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|seed_cnt\(1));

-- Location: LCCOMB_X9_Y31_N0
\U1|U3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~4_combout\ = \U1|U3|count_data\(0) $ (VCC)
-- \U1|U3|Add0~5\ = CARRY(\U1|U3|count_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(0),
	datad => VCC,
	combout => \U1|U3|Add0~4_combout\,
	cout => \U1|U3|Add0~5\);

-- Location: LCCOMB_X10_Y31_N30
\U1|U3|Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~95_combout\ = (\U1|U3|Add0~4_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~4_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~95_combout\);

-- Location: FF_X9_Y31_N11
\U1|U3|count_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U3|Add0~95_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(0));

-- Location: LCCOMB_X9_Y31_N2
\U1|U3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~6_combout\ = (\U1|U3|count_data\(1) & (!\U1|U3|Add0~5\)) # (!\U1|U3|count_data\(1) & ((\U1|U3|Add0~5\) # (GND)))
-- \U1|U3|Add0~7\ = CARRY((!\U1|U3|Add0~5\) # (!\U1|U3|count_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(1),
	datad => VCC,
	cin => \U1|U3|Add0~5\,
	combout => \U1|U3|Add0~6_combout\,
	cout => \U1|U3|Add0~7\);

-- Location: LCCOMB_X10_Y31_N4
\U1|U3|Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~94_combout\ = (\U1|U3|Add0~6_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~6_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~94_combout\);

-- Location: FF_X10_Y31_N5
\U1|U3|count_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~94_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(1));

-- Location: LCCOMB_X9_Y31_N4
\U1|U3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~8_combout\ = (\U1|U3|count_data\(2) & (\U1|U3|Add0~7\ $ (GND))) # (!\U1|U3|count_data\(2) & (!\U1|U3|Add0~7\ & VCC))
-- \U1|U3|Add0~9\ = CARRY((\U1|U3|count_data\(2) & !\U1|U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(2),
	datad => VCC,
	cin => \U1|U3|Add0~7\,
	combout => \U1|U3|Add0~8_combout\,
	cout => \U1|U3|Add0~9\);

-- Location: LCCOMB_X10_Y31_N14
\U1|U3|Add0~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~97_combout\ = (\U1|U3|Add0~8_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~8_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~97_combout\);

-- Location: FF_X9_Y31_N21
\U1|U3|count_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U3|Add0~97_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(2));

-- Location: LCCOMB_X9_Y31_N6
\U1|U3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~10_combout\ = (\U1|U3|count_data\(3) & (!\U1|U3|Add0~9\)) # (!\U1|U3|count_data\(3) & ((\U1|U3|Add0~9\) # (GND)))
-- \U1|U3|Add0~11\ = CARRY((!\U1|U3|Add0~9\) # (!\U1|U3|count_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(3),
	datad => VCC,
	cin => \U1|U3|Add0~9\,
	combout => \U1|U3|Add0~10_combout\,
	cout => \U1|U3|Add0~11\);

-- Location: LCCOMB_X10_Y31_N20
\U1|U3|Add0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~96_combout\ = (\U1|U3|Add0~10_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~10_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~96_combout\);

-- Location: FF_X9_Y31_N31
\U1|U3|count_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U3|Add0~96_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(3));

-- Location: LCCOMB_X9_Y31_N8
\U1|U3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~12_combout\ = (\U1|U3|count_data\(4) & (\U1|U3|Add0~11\ $ (GND))) # (!\U1|U3|count_data\(4) & (!\U1|U3|Add0~11\ & VCC))
-- \U1|U3|Add0~13\ = CARRY((\U1|U3|count_data\(4) & !\U1|U3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(4),
	datad => VCC,
	cin => \U1|U3|Add0~11\,
	combout => \U1|U3|Add0~12_combout\,
	cout => \U1|U3|Add0~13\);

-- Location: LCCOMB_X10_Y31_N12
\U1|U3|Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~93_combout\ = (\U1|U3|Add0~12_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~12_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~93_combout\);

-- Location: FF_X9_Y31_N27
\U1|U3|count_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U3|Add0~93_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(4));

-- Location: LCCOMB_X9_Y31_N10
\U1|U3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~14_combout\ = (\U1|U3|count_data\(5) & (!\U1|U3|Add0~13\)) # (!\U1|U3|count_data\(5) & ((\U1|U3|Add0~13\) # (GND)))
-- \U1|U3|Add0~15\ = CARRY((!\U1|U3|Add0~13\) # (!\U1|U3|count_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(5),
	datad => VCC,
	cin => \U1|U3|Add0~13\,
	combout => \U1|U3|Add0~14_combout\,
	cout => \U1|U3|Add0~15\);

-- Location: LCCOMB_X10_Y31_N10
\U1|U3|Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~92_combout\ = (\U1|U3|Add0~14_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~14_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~92_combout\);

-- Location: FF_X9_Y31_N23
\U1|U3|count_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U3|Add0~92_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(5));

-- Location: LCCOMB_X9_Y31_N12
\U1|U3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~16_combout\ = (\U1|U3|count_data\(6) & (\U1|U3|Add0~15\ $ (GND))) # (!\U1|U3|count_data\(6) & (!\U1|U3|Add0~15\ & VCC))
-- \U1|U3|Add0~17\ = CARRY((\U1|U3|count_data\(6) & !\U1|U3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(6),
	datad => VCC,
	cin => \U1|U3|Add0~15\,
	combout => \U1|U3|Add0~16_combout\,
	cout => \U1|U3|Add0~17\);

-- Location: LCCOMB_X10_Y31_N0
\U1|U3|Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~91_combout\ = (\U1|U3|Add0~16_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~16_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~91_combout\);

-- Location: FF_X9_Y31_N3
\U1|U3|count_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U3|Add0~91_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(6));

-- Location: LCCOMB_X9_Y31_N14
\U1|U3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~18_combout\ = (\U1|U3|count_data\(7) & (!\U1|U3|Add0~17\)) # (!\U1|U3|count_data\(7) & ((\U1|U3|Add0~17\) # (GND)))
-- \U1|U3|Add0~19\ = CARRY((!\U1|U3|Add0~17\) # (!\U1|U3|count_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(7),
	datad => VCC,
	cin => \U1|U3|Add0~17\,
	combout => \U1|U3|Add0~18_combout\,
	cout => \U1|U3|Add0~19\);

-- Location: LCCOMB_X10_Y31_N16
\U1|U3|Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~90_combout\ = (\U1|U3|Add0~18_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~18_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~90_combout\);

-- Location: FF_X10_Y31_N17
\U1|U3|count_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~90_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(7));

-- Location: LCCOMB_X9_Y31_N16
\U1|U3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~20_combout\ = (\U1|U3|count_data\(8) & (\U1|U3|Add0~19\ $ (GND))) # (!\U1|U3|count_data\(8) & (!\U1|U3|Add0~19\ & VCC))
-- \U1|U3|Add0~21\ = CARRY((\U1|U3|count_data\(8) & !\U1|U3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(8),
	datad => VCC,
	cin => \U1|U3|Add0~19\,
	combout => \U1|U3|Add0~20_combout\,
	cout => \U1|U3|Add0~21\);

-- Location: LCCOMB_X10_Y31_N28
\U1|U3|Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~89_combout\ = (\U1|U3|Add0~20_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~20_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~89_combout\);

-- Location: FF_X10_Y31_N29
\U1|U3|count_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~89_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(8));

-- Location: LCCOMB_X9_Y31_N18
\U1|U3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~22_combout\ = (\U1|U3|count_data\(9) & (!\U1|U3|Add0~21\)) # (!\U1|U3|count_data\(9) & ((\U1|U3|Add0~21\) # (GND)))
-- \U1|U3|Add0~23\ = CARRY((!\U1|U3|Add0~21\) # (!\U1|U3|count_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(9),
	datad => VCC,
	cin => \U1|U3|Add0~21\,
	combout => \U1|U3|Add0~22_combout\,
	cout => \U1|U3|Add0~23\);

-- Location: LCCOMB_X9_Y31_N20
\U1|U3|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~24_combout\ = (\U1|U3|count_data\(10) & (\U1|U3|Add0~23\ $ (GND))) # (!\U1|U3|count_data\(10) & (!\U1|U3|Add0~23\ & VCC))
-- \U1|U3|Add0~25\ = CARRY((\U1|U3|count_data\(10) & !\U1|U3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datad => VCC,
	cin => \U1|U3|Add0~23\,
	combout => \U1|U3|Add0~24_combout\,
	cout => \U1|U3|Add0~25\);

-- Location: LCCOMB_X9_Y31_N22
\U1|U3|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~26_combout\ = (\U1|U3|count_data\(11) & (!\U1|U3|Add0~25\)) # (!\U1|U3|count_data\(11) & ((\U1|U3|Add0~25\) # (GND)))
-- \U1|U3|Add0~27\ = CARRY((!\U1|U3|Add0~25\) # (!\U1|U3|count_data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(11),
	datad => VCC,
	cin => \U1|U3|Add0~25\,
	combout => \U1|U3|Add0~26_combout\,
	cout => \U1|U3|Add0~27\);

-- Location: LCCOMB_X10_Y30_N22
\U1|U3|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~37_combout\ = (\U1|U3|Add0~26_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Equal0~6_combout\,
	datad => \U1|U3|Add0~26_combout\,
	combout => \U1|U3|Add0~37_combout\);

-- Location: FF_X10_Y30_N23
\U1|U3|count_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~37_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(11));

-- Location: LCCOMB_X9_Y31_N24
\U1|U3|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~28_combout\ = (\U1|U3|count_data\(12) & (\U1|U3|Add0~27\ $ (GND))) # (!\U1|U3|count_data\(12) & (!\U1|U3|Add0~27\ & VCC))
-- \U1|U3|Add0~29\ = CARRY((\U1|U3|count_data\(12) & !\U1|U3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(12),
	datad => VCC,
	cin => \U1|U3|Add0~27\,
	combout => \U1|U3|Add0~28_combout\,
	cout => \U1|U3|Add0~29\);

-- Location: LCCOMB_X10_Y30_N0
\U1|U3|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~36_combout\ = (\U1|U3|Add0~28_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~28_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~36_combout\);

-- Location: FF_X10_Y30_N1
\U1|U3|count_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~36_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(12));

-- Location: LCCOMB_X9_Y31_N26
\U1|U3|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~30_combout\ = (\U1|U3|count_data\(13) & (!\U1|U3|Add0~29\)) # (!\U1|U3|count_data\(13) & ((\U1|U3|Add0~29\) # (GND)))
-- \U1|U3|Add0~31\ = CARRY((!\U1|U3|Add0~29\) # (!\U1|U3|count_data\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(13),
	datad => VCC,
	cin => \U1|U3|Add0~29\,
	combout => \U1|U3|Add0~30_combout\,
	cout => \U1|U3|Add0~31\);

-- Location: LCCOMB_X10_Y30_N10
\U1|U3|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~35_combout\ = (\U1|U3|Add0~30_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~30_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~35_combout\);

-- Location: FF_X10_Y30_N11
\U1|U3|count_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~35_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(13));

-- Location: LCCOMB_X9_Y31_N28
\U1|U3|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~32_combout\ = (\U1|U3|count_data\(14) & (\U1|U3|Add0~31\ $ (GND))) # (!\U1|U3|count_data\(14) & (!\U1|U3|Add0~31\ & VCC))
-- \U1|U3|Add0~33\ = CARRY((\U1|U3|count_data\(14) & !\U1|U3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(14),
	datad => VCC,
	cin => \U1|U3|Add0~31\,
	combout => \U1|U3|Add0~32_combout\,
	cout => \U1|U3|Add0~33\);

-- Location: LCCOMB_X10_Y30_N4
\U1|U3|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~34_combout\ = (\U1|U3|Add0~32_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~32_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~34_combout\);

-- Location: FF_X10_Y30_N5
\U1|U3|count_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~34_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(14));

-- Location: LCCOMB_X9_Y31_N30
\U1|U3|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~38_combout\ = (\U1|U3|count_data\(15) & (!\U1|U3|Add0~33\)) # (!\U1|U3|count_data\(15) & ((\U1|U3|Add0~33\) # (GND)))
-- \U1|U3|Add0~39\ = CARRY((!\U1|U3|Add0~33\) # (!\U1|U3|count_data\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(15),
	datad => VCC,
	cin => \U1|U3|Add0~33\,
	combout => \U1|U3|Add0~38_combout\,
	cout => \U1|U3|Add0~39\);

-- Location: LCCOMB_X8_Y30_N28
\U1|U3|Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~82_combout\ = (\U1|U3|Add0~38_combout\ & ((\U1|U3|count_data\(31)) # ((\U1|U3|Equal0~6_combout\ & !\U1|U3|count_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~6_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Add0~38_combout\,
	combout => \U1|U3|Add0~82_combout\);

-- Location: FF_X8_Y30_N29
\U1|U3|count_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~82_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(15));

-- Location: LCCOMB_X9_Y30_N0
\U1|U3|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~40_combout\ = (\U1|U3|count_data\(16) & (\U1|U3|Add0~39\ $ (GND))) # (!\U1|U3|count_data\(16) & (!\U1|U3|Add0~39\ & VCC))
-- \U1|U3|Add0~41\ = CARRY((\U1|U3|count_data\(16) & !\U1|U3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(16),
	datad => VCC,
	cin => \U1|U3|Add0~39\,
	combout => \U1|U3|Add0~40_combout\,
	cout => \U1|U3|Add0~41\);

-- Location: LCCOMB_X8_Y30_N26
\U1|U3|Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~81_combout\ = (\U1|U3|Add0~40_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~40_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~81_combout\);

-- Location: FF_X8_Y30_N27
\U1|U3|count_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~81_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(16));

-- Location: LCCOMB_X9_Y30_N2
\U1|U3|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~42_combout\ = (\U1|U3|count_data\(17) & (!\U1|U3|Add0~41\)) # (!\U1|U3|count_data\(17) & ((\U1|U3|Add0~41\) # (GND)))
-- \U1|U3|Add0~43\ = CARRY((!\U1|U3|Add0~41\) # (!\U1|U3|count_data\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(17),
	datad => VCC,
	cin => \U1|U3|Add0~41\,
	combout => \U1|U3|Add0~42_combout\,
	cout => \U1|U3|Add0~43\);

-- Location: LCCOMB_X8_Y30_N8
\U1|U3|Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~80_combout\ = (\U1|U3|Add0~42_combout\ & ((\U1|U3|count_data\(31)) # ((\U1|U3|Equal0~6_combout\ & !\U1|U3|count_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~6_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Add0~42_combout\,
	combout => \U1|U3|Add0~80_combout\);

-- Location: FF_X8_Y30_N9
\U1|U3|count_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~80_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(17));

-- Location: LCCOMB_X9_Y30_N4
\U1|U3|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~44_combout\ = (\U1|U3|count_data\(18) & (\U1|U3|Add0~43\ $ (GND))) # (!\U1|U3|count_data\(18) & (!\U1|U3|Add0~43\ & VCC))
-- \U1|U3|Add0~45\ = CARRY((\U1|U3|count_data\(18) & !\U1|U3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(18),
	datad => VCC,
	cin => \U1|U3|Add0~43\,
	combout => \U1|U3|Add0~44_combout\,
	cout => \U1|U3|Add0~45\);

-- Location: LCCOMB_X8_Y30_N18
\U1|U3|Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~79_combout\ = (\U1|U3|Add0~44_combout\ & ((\U1|U3|count_data\(31)) # ((\U1|U3|Equal0~6_combout\ & !\U1|U3|count_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~6_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Add0~44_combout\,
	combout => \U1|U3|Add0~79_combout\);

-- Location: FF_X8_Y30_N19
\U1|U3|count_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~79_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(18));

-- Location: LCCOMB_X9_Y30_N6
\U1|U3|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~46_combout\ = (\U1|U3|count_data\(19) & (!\U1|U3|Add0~45\)) # (!\U1|U3|count_data\(19) & ((\U1|U3|Add0~45\) # (GND)))
-- \U1|U3|Add0~47\ = CARRY((!\U1|U3|Add0~45\) # (!\U1|U3|count_data\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(19),
	datad => VCC,
	cin => \U1|U3|Add0~45\,
	combout => \U1|U3|Add0~46_combout\,
	cout => \U1|U3|Add0~47\);

-- Location: LCCOMB_X8_Y30_N10
\U1|U3|Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~78_combout\ = (\U1|U3|Add0~46_combout\ & ((\U1|U3|count_data\(31)) # ((\U1|U3|Equal0~6_combout\ & !\U1|U3|count_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~6_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Add0~46_combout\,
	combout => \U1|U3|Add0~78_combout\);

-- Location: FF_X8_Y30_N11
\U1|U3|count_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~78_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(19));

-- Location: LCCOMB_X9_Y30_N8
\U1|U3|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~48_combout\ = (\U1|U3|count_data\(20) & (\U1|U3|Add0~47\ $ (GND))) # (!\U1|U3|count_data\(20) & (!\U1|U3|Add0~47\ & VCC))
-- \U1|U3|Add0~49\ = CARRY((\U1|U3|count_data\(20) & !\U1|U3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(20),
	datad => VCC,
	cin => \U1|U3|Add0~47\,
	combout => \U1|U3|Add0~48_combout\,
	cout => \U1|U3|Add0~49\);

-- Location: LCCOMB_X8_Y30_N4
\U1|U3|Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~77_combout\ = (\U1|U3|Add0~48_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~48_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~77_combout\);

-- Location: FF_X8_Y30_N5
\U1|U3|count_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~77_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(20));

-- Location: LCCOMB_X9_Y30_N10
\U1|U3|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~50_combout\ = (\U1|U3|count_data\(21) & (!\U1|U3|Add0~49\)) # (!\U1|U3|count_data\(21) & ((\U1|U3|Add0~49\) # (GND)))
-- \U1|U3|Add0~51\ = CARRY((!\U1|U3|Add0~49\) # (!\U1|U3|count_data\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(21),
	datad => VCC,
	cin => \U1|U3|Add0~49\,
	combout => \U1|U3|Add0~50_combout\,
	cout => \U1|U3|Add0~51\);

-- Location: LCCOMB_X8_Y30_N2
\U1|U3|Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~84_combout\ = (\U1|U3|Add0~50_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~50_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~84_combout\);

-- Location: FF_X8_Y30_N3
\U1|U3|count_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~84_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(21));

-- Location: LCCOMB_X9_Y30_N12
\U1|U3|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~52_combout\ = (\U1|U3|count_data\(22) & (\U1|U3|Add0~51\ $ (GND))) # (!\U1|U3|count_data\(22) & (!\U1|U3|Add0~51\ & VCC))
-- \U1|U3|Add0~53\ = CARRY((\U1|U3|count_data\(22) & !\U1|U3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(22),
	datad => VCC,
	cin => \U1|U3|Add0~51\,
	combout => \U1|U3|Add0~52_combout\,
	cout => \U1|U3|Add0~53\);

-- Location: LCCOMB_X8_Y30_N12
\U1|U3|Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~83_combout\ = (\U1|U3|Add0~52_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~52_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~83_combout\);

-- Location: FF_X8_Y30_N13
\U1|U3|count_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~83_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(22));

-- Location: LCCOMB_X9_Y30_N14
\U1|U3|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~54_combout\ = (\U1|U3|count_data\(23) & (!\U1|U3|Add0~53\)) # (!\U1|U3|count_data\(23) & ((\U1|U3|Add0~53\) # (GND)))
-- \U1|U3|Add0~55\ = CARRY((!\U1|U3|Add0~53\) # (!\U1|U3|count_data\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(23),
	datad => VCC,
	cin => \U1|U3|Add0~53\,
	combout => \U1|U3|Add0~54_combout\,
	cout => \U1|U3|Add0~55\);

-- Location: LCCOMB_X10_Y30_N2
\U1|U3|Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~76_combout\ = (\U1|U3|Add0~54_combout\ & ((\U1|U3|count_data\(31)) # ((\U1|U3|Equal0~6_combout\ & !\U1|U3|count_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~6_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Add0~54_combout\,
	combout => \U1|U3|Add0~76_combout\);

-- Location: FF_X10_Y30_N3
\U1|U3|count_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~76_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(23));

-- Location: LCCOMB_X9_Y30_N16
\U1|U3|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~56_combout\ = (\U1|U3|count_data\(24) & (\U1|U3|Add0~55\ $ (GND))) # (!\U1|U3|count_data\(24) & (!\U1|U3|Add0~55\ & VCC))
-- \U1|U3|Add0~57\ = CARRY((\U1|U3|count_data\(24) & !\U1|U3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(24),
	datad => VCC,
	cin => \U1|U3|Add0~55\,
	combout => \U1|U3|Add0~56_combout\,
	cout => \U1|U3|Add0~57\);

-- Location: LCCOMB_X10_Y30_N12
\U1|U3|Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~75_combout\ = (\U1|U3|Add0~56_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~56_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~75_combout\);

-- Location: FF_X10_Y30_N13
\U1|U3|count_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~75_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(24));

-- Location: LCCOMB_X9_Y30_N18
\U1|U3|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~58_combout\ = (\U1|U3|count_data\(25) & (!\U1|U3|Add0~57\)) # (!\U1|U3|count_data\(25) & ((\U1|U3|Add0~57\) # (GND)))
-- \U1|U3|Add0~59\ = CARRY((!\U1|U3|Add0~57\) # (!\U1|U3|count_data\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(25),
	datad => VCC,
	cin => \U1|U3|Add0~57\,
	combout => \U1|U3|Add0~58_combout\,
	cout => \U1|U3|Add0~59\);

-- Location: LCCOMB_X10_Y30_N18
\U1|U3|Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~74_combout\ = (\U1|U3|Add0~58_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Equal0~6_combout\,
	datad => \U1|U3|Add0~58_combout\,
	combout => \U1|U3|Add0~74_combout\);

-- Location: FF_X10_Y30_N19
\U1|U3|count_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~74_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(25));

-- Location: LCCOMB_X9_Y30_N20
\U1|U3|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~60_combout\ = (\U1|U3|count_data\(26) & (\U1|U3|Add0~59\ $ (GND))) # (!\U1|U3|count_data\(26) & (!\U1|U3|Add0~59\ & VCC))
-- \U1|U3|Add0~61\ = CARRY((\U1|U3|count_data\(26) & !\U1|U3|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(26),
	datad => VCC,
	cin => \U1|U3|Add0~59\,
	combout => \U1|U3|Add0~60_combout\,
	cout => \U1|U3|Add0~61\);

-- Location: LCCOMB_X10_Y30_N8
\U1|U3|Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~73_combout\ = (\U1|U3|Add0~60_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Equal0~6_combout\,
	datad => \U1|U3|Add0~60_combout\,
	combout => \U1|U3|Add0~73_combout\);

-- Location: FF_X10_Y30_N9
\U1|U3|count_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~73_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(26));

-- Location: LCCOMB_X9_Y30_N22
\U1|U3|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~62_combout\ = (\U1|U3|count_data\(27) & (!\U1|U3|Add0~61\)) # (!\U1|U3|count_data\(27) & ((\U1|U3|Add0~61\) # (GND)))
-- \U1|U3|Add0~63\ = CARRY((!\U1|U3|Add0~61\) # (!\U1|U3|count_data\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(27),
	datad => VCC,
	cin => \U1|U3|Add0~61\,
	combout => \U1|U3|Add0~62_combout\,
	cout => \U1|U3|Add0~63\);

-- Location: LCCOMB_X10_Y30_N28
\U1|U3|Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~72_combout\ = (\U1|U3|Add0~62_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Equal0~6_combout\,
	datad => \U1|U3|Add0~62_combout\,
	combout => \U1|U3|Add0~72_combout\);

-- Location: FF_X10_Y30_N29
\U1|U3|count_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~72_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(27));

-- Location: LCCOMB_X9_Y30_N24
\U1|U3|Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~64_combout\ = (\U1|U3|count_data\(28) & (\U1|U3|Add0~63\ $ (GND))) # (!\U1|U3|count_data\(28) & (!\U1|U3|Add0~63\ & VCC))
-- \U1|U3|Add0~65\ = CARRY((\U1|U3|count_data\(28) & !\U1|U3|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(28),
	datad => VCC,
	cin => \U1|U3|Add0~63\,
	combout => \U1|U3|Add0~64_combout\,
	cout => \U1|U3|Add0~65\);

-- Location: LCCOMB_X9_Y30_N26
\U1|U3|Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~66_combout\ = (\U1|U3|count_data\(29) & (!\U1|U3|Add0~65\)) # (!\U1|U3|count_data\(29) & ((\U1|U3|Add0~65\) # (GND)))
-- \U1|U3|Add0~67\ = CARRY((!\U1|U3|Add0~65\) # (!\U1|U3|count_data\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(29),
	datad => VCC,
	cin => \U1|U3|Add0~65\,
	combout => \U1|U3|Add0~66_combout\,
	cout => \U1|U3|Add0~67\);

-- Location: LCCOMB_X10_Y30_N16
\U1|U3|Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~70_combout\ = (\U1|U3|Add0~66_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Add0~66_combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|Add0~70_combout\);

-- Location: FF_X10_Y30_N17
\U1|U3|count_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~70_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(29));

-- Location: LCCOMB_X9_Y30_N28
\U1|U3|Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~68_combout\ = (\U1|U3|count_data\(30) & (\U1|U3|Add0~67\ $ (GND))) # (!\U1|U3|count_data\(30) & (!\U1|U3|Add0~67\ & VCC))
-- \U1|U3|Add0~69\ = CARRY((\U1|U3|count_data\(30) & !\U1|U3|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(30),
	datad => VCC,
	cin => \U1|U3|Add0~67\,
	combout => \U1|U3|Add0~68_combout\,
	cout => \U1|U3|Add0~69\);

-- Location: LCCOMB_X10_Y30_N14
\U1|U3|Add0~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~98_combout\ = (\U1|U3|Add0~68_combout\ & ((\U1|U3|count_data\(31)) # ((\U1|U3|Equal0~6_combout\ & !\U1|U3|count_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~6_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Add0~68_combout\,
	combout => \U1|U3|Add0~98_combout\);

-- Location: FF_X10_Y30_N15
\U1|U3|count_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~98_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(30));

-- Location: LCCOMB_X9_Y30_N30
\U1|U3|Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~86_combout\ = \U1|U3|count_data\(31) $ (\U1|U3|Add0~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(31),
	cin => \U1|U3|Add0~69\,
	combout => \U1|U3|Add0~86_combout\);

-- Location: LCCOMB_X8_Y30_N14
\U1|U3|Add0~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~99_combout\ = (\U1|U3|Add0~86_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|Equal0~6_combout\,
	datac => \U1|U3|count_data\(31),
	datad => \U1|U3|Add0~86_combout\,
	combout => \U1|U3|Add0~99_combout\);

-- Location: FF_X8_Y30_N15
\U1|U3|count_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~99_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(31));

-- Location: LCCOMB_X10_Y30_N26
\U1|U3|Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~71_combout\ = (\U1|U3|Add0~64_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Equal0~6_combout\,
	datad => \U1|U3|Add0~64_combout\,
	combout => \U1|U3|Add0~71_combout\);

-- Location: FF_X10_Y30_N27
\U1|U3|count_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~71_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(28));

-- Location: LCCOMB_X10_Y30_N30
\U1|U3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~1_combout\ = (!\U1|U3|count_data\(28) & (!\U1|U3|count_data\(29) & (!\U1|U3|count_data\(30) & !\U1|U3|count_data\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(28),
	datab => \U1|U3|count_data\(29),
	datac => \U1|U3|count_data\(30),
	datad => \U1|U3|count_data\(27),
	combout => \U1|U3|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y30_N20
\U1|U3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~0_combout\ = (!\U1|U3|count_data\(11) & (!\U1|U3|count_data\(12) & (!\U1|U3|count_data\(14) & !\U1|U3|count_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(11),
	datab => \U1|U3|count_data\(12),
	datac => \U1|U3|count_data\(14),
	datad => \U1|U3|count_data\(13),
	combout => \U1|U3|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y30_N24
\U1|U3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~2_combout\ = (!\U1|U3|count_data\(24) & (!\U1|U3|count_data\(25) & (!\U1|U3|count_data\(26) & !\U1|U3|count_data\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(24),
	datab => \U1|U3|count_data\(25),
	datac => \U1|U3|count_data\(26),
	datad => \U1|U3|count_data\(23),
	combout => \U1|U3|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y30_N30
\U1|U3|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~4_combout\ = (!\U1|U3|count_data\(16) & (!\U1|U3|count_data\(18) & (!\U1|U3|count_data\(17) & !\U1|U3|count_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(16),
	datab => \U1|U3|count_data\(18),
	datac => \U1|U3|count_data\(17),
	datad => \U1|U3|count_data\(15),
	combout => \U1|U3|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y30_N24
\U1|U3|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~3_combout\ = (!\U1|U3|count_data\(20) & !\U1|U3|count_data\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U3|count_data\(20),
	datad => \U1|U3|count_data\(19),
	combout => \U1|U3|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y30_N20
\U1|U3|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~5_combout\ = (!\U1|U3|count_data\(22) & (!\U1|U3|count_data\(21) & (\U1|U3|Equal0~4_combout\ & \U1|U3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(22),
	datab => \U1|U3|count_data\(21),
	datac => \U1|U3|Equal0~4_combout\,
	datad => \U1|U3|Equal0~3_combout\,
	combout => \U1|U3|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y30_N6
\U1|U3|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~6_combout\ = (\U1|U3|Equal0~1_combout\ & (\U1|U3|Equal0~0_combout\ & (\U1|U3|Equal0~2_combout\ & \U1|U3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~1_combout\,
	datab => \U1|U3|Equal0~0_combout\,
	datac => \U1|U3|Equal0~2_combout\,
	datad => \U1|U3|Equal0~5_combout\,
	combout => \U1|U3|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y31_N4
\U1|U3|Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~85_combout\ = (\U1|U3|Add0~24_combout\ & ((\U1|U3|count_data\(31)) # ((\U1|U3|Equal0~6_combout\ & !\U1|U3|count_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~6_combout\,
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|Add0~24_combout\,
	combout => \U1|U3|Add0~85_combout\);

-- Location: FF_X11_Y31_N5
\U1|U3|count_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~85_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(10));

-- Location: LCCOMB_X10_Y31_N6
\U1|U3|Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~88_combout\ = (\U1|U3|Add0~22_combout\ & ((\U1|U3|count_data\(31)) # ((!\U1|U3|count_data\(10) & \U1|U3|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(10),
	datab => \U1|U3|count_data\(31),
	datac => \U1|U3|Equal0~6_combout\,
	datad => \U1|U3|Add0~22_combout\,
	combout => \U1|U3|Add0~88_combout\);

-- Location: FF_X10_Y31_N7
\U1|U3|count_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add0~88_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_data\(9));

-- Location: LCCOMB_X10_Y31_N26
\U1|U3|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~7_combout\ = (!\U1|U3|count_data\(9) & (!\U1|U3|count_data\(8) & (\U1|U3|count_data\(10) & !\U1|U3|count_data\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(9),
	datab => \U1|U3|count_data\(8),
	datac => \U1|U3|count_data\(10),
	datad => \U1|U3|count_data\(31),
	combout => \U1|U3|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y31_N22
\U1|U3|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~9_combout\ = (!\U1|U3|count_data\(1) & !\U1|U3|count_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_data\(1),
	datac => \U1|U3|count_data\(0),
	combout => \U1|U3|Equal0~9_combout\);

-- Location: LCCOMB_X10_Y31_N18
\U1|U3|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~8_combout\ = (!\U1|U3|count_data\(6) & (!\U1|U3|count_data\(7) & (!\U1|U3|count_data\(4) & !\U1|U3|count_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(6),
	datab => \U1|U3|count_data\(7),
	datac => \U1|U3|count_data\(4),
	datad => \U1|U3|count_data\(5),
	combout => \U1|U3|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y31_N24
\U1|U3|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~10_combout\ = (!\U1|U3|count_data\(3) & (!\U1|U3|count_data\(2) & (\U1|U3|Equal0~9_combout\ & \U1|U3|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_data\(3),
	datab => \U1|U3|count_data\(2),
	datac => \U1|U3|Equal0~9_combout\,
	datad => \U1|U3|Equal0~8_combout\,
	combout => \U1|U3|Equal0~10_combout\);

-- Location: LCCOMB_X10_Y31_N2
\U1|U3|count_error[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[0]~0_combout\ = (\U1|lock_into_counter~combout\ & (((!\U1|U3|Equal0~6_combout\) # (!\U1|U3|Equal0~10_combout\)) # (!\U1|U3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~7_combout\,
	datab => \U1|U3|Equal0~10_combout\,
	datac => \U1|lock_into_counter~combout\,
	datad => \U1|U3|Equal0~6_combout\,
	combout => \U1|U3|count_error[0]~0_combout\);

-- Location: LCCOMB_X12_Y29_N0
\U1|U3|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~0_combout\ = \U1|U3|count_error\(0) $ (VCC)
-- \U1|U3|Add1~1\ = CARRY(\U1|U3|count_error\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(0),
	datad => VCC,
	combout => \U1|U3|Add1~0_combout\,
	cout => \U1|U3|Add1~1\);

-- Location: LCCOMB_X11_Y29_N0
\U1|U3|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~62_combout\ = (\U1|U3|Add1~0_combout\ & \U1|U3|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|Add1~0_combout\,
	datac => \U1|U3|process_1~1_combout\,
	combout => \U1|U3|Add1~62_combout\);

-- Location: LCCOMB_X11_Y29_N2
\U1|U3|count_error[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[0]~28_combout\ = (\U1|U3|process_1~1_combout\) # (!\U1|U3|count_error[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U3|process_1~1_combout\,
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[0]~28_combout\);

-- Location: FF_X11_Y29_N1
\U1|U3|count_error[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add1~62_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U3|count_error[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(0));

-- Location: LCCOMB_X12_Y29_N2
\U1|U3|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~2_combout\ = (\U1|U3|count_error\(1) & (!\U1|U3|Add1~1\)) # (!\U1|U3|count_error\(1) & ((\U1|U3|Add1~1\) # (GND)))
-- \U1|U3|Add1~3\ = CARRY((!\U1|U3|Add1~1\) # (!\U1|U3|count_error\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(1),
	datad => VCC,
	cin => \U1|U3|Add1~1\,
	combout => \U1|U3|Add1~2_combout\,
	cout => \U1|U3|Add1~3\);

-- Location: LCCOMB_X11_Y29_N18
\U1|U3|Add1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~67_combout\ = (\U1|U3|process_1~1_combout\ & \U1|U3|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U3|process_1~1_combout\,
	datad => \U1|U3|Add1~2_combout\,
	combout => \U1|U3|Add1~67_combout\);

-- Location: FF_X11_Y29_N19
\U1|U3|count_error[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add1~67_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U3|count_error[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(1));

-- Location: LCCOMB_X12_Y29_N4
\U1|U3|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~4_combout\ = (\U1|U3|count_error\(2) & (\U1|U3|Add1~3\ $ (GND))) # (!\U1|U3|count_error\(2) & (!\U1|U3|Add1~3\ & VCC))
-- \U1|U3|Add1~5\ = CARRY((\U1|U3|count_error\(2) & !\U1|U3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(2),
	datad => VCC,
	cin => \U1|U3|Add1~3\,
	combout => \U1|U3|Add1~4_combout\,
	cout => \U1|U3|Add1~5\);

-- Location: LCCOMB_X11_Y29_N16
\U1|U3|Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~66_combout\ = (\U1|U3|Add1~4_combout\ & \U1|U3|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~4_combout\,
	datac => \U1|U3|process_1~1_combout\,
	combout => \U1|U3|Add1~66_combout\);

-- Location: FF_X11_Y29_N17
\U1|U3|count_error[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add1~66_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U3|count_error[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(2));

-- Location: LCCOMB_X12_Y29_N6
\U1|U3|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~6_combout\ = (\U1|U3|count_error\(3) & (!\U1|U3|Add1~5\)) # (!\U1|U3|count_error\(3) & ((\U1|U3|Add1~5\) # (GND)))
-- \U1|U3|Add1~7\ = CARRY((!\U1|U3|Add1~5\) # (!\U1|U3|count_error\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(3),
	datad => VCC,
	cin => \U1|U3|Add1~5\,
	combout => \U1|U3|Add1~6_combout\,
	cout => \U1|U3|Add1~7\);

-- Location: LCCOMB_X11_Y29_N14
\U1|U3|Add1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~65_combout\ = (\U1|U3|Add1~6_combout\ & \U1|U3|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|Add1~6_combout\,
	datac => \U1|U3|process_1~1_combout\,
	combout => \U1|U3|Add1~65_combout\);

-- Location: FF_X11_Y29_N15
\U1|U3|count_error[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|Add1~65_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U3|count_error[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(3));

-- Location: LCCOMB_X12_Y29_N8
\U1|U3|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~8_combout\ = (\U1|U3|count_error\(4) & (\U1|U3|Add1~7\ $ (GND))) # (!\U1|U3|count_error\(4) & (!\U1|U3|Add1~7\ & VCC))
-- \U1|U3|Add1~9\ = CARRY((\U1|U3|count_error\(4) & !\U1|U3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(4),
	datad => VCC,
	cin => \U1|U3|Add1~7\,
	combout => \U1|U3|Add1~8_combout\,
	cout => \U1|U3|Add1~9\);

-- Location: LCCOMB_X9_Y29_N10
\U1|U3|count_error[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[4]~27_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~8_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(4) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~8_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(4),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[4]~27_combout\);

-- Location: FF_X9_Y29_N11
\U1|U3|count_error[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[4]~27_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(4));

-- Location: LCCOMB_X12_Y29_N10
\U1|U3|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~10_combout\ = (\U1|U3|count_error\(5) & (!\U1|U3|Add1~9\)) # (!\U1|U3|count_error\(5) & ((\U1|U3|Add1~9\) # (GND)))
-- \U1|U3|Add1~11\ = CARRY((!\U1|U3|Add1~9\) # (!\U1|U3|count_error\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(5),
	datad => VCC,
	cin => \U1|U3|Add1~9\,
	combout => \U1|U3|Add1~10_combout\,
	cout => \U1|U3|Add1~11\);

-- Location: LCCOMB_X10_Y29_N20
\U1|U3|count_error[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[5]~26_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~10_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & ((\U1|U3|count_error\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|Add1~10_combout\,
	datac => \U1|U3|count_error\(5),
	datad => \U1|U3|process_1~1_combout\,
	combout => \U1|U3|count_error[5]~26_combout\);

-- Location: FF_X10_Y29_N21
\U1|U3|count_error[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[5]~26_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(5));

-- Location: LCCOMB_X12_Y29_N12
\U1|U3|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~12_combout\ = (\U1|U3|count_error\(6) & (\U1|U3|Add1~11\ $ (GND))) # (!\U1|U3|count_error\(6) & (!\U1|U3|Add1~11\ & VCC))
-- \U1|U3|Add1~13\ = CARRY((\U1|U3|count_error\(6) & !\U1|U3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(6),
	datad => VCC,
	cin => \U1|U3|Add1~11\,
	combout => \U1|U3|Add1~12_combout\,
	cout => \U1|U3|Add1~13\);

-- Location: LCCOMB_X9_Y29_N0
\U1|U3|count_error[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[6]~25_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~12_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(6) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|Add1~12_combout\,
	datac => \U1|U3|count_error\(6),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[6]~25_combout\);

-- Location: FF_X9_Y29_N1
\U1|U3|count_error[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[6]~25_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(6));

-- Location: LCCOMB_X12_Y29_N14
\U1|U3|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~14_combout\ = (\U1|U3|count_error\(7) & (!\U1|U3|Add1~13\)) # (!\U1|U3|count_error\(7) & ((\U1|U3|Add1~13\) # (GND)))
-- \U1|U3|Add1~15\ = CARRY((!\U1|U3|Add1~13\) # (!\U1|U3|count_error\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(7),
	datad => VCC,
	cin => \U1|U3|Add1~13\,
	combout => \U1|U3|Add1~14_combout\,
	cout => \U1|U3|Add1~15\);

-- Location: LCCOMB_X9_Y29_N4
\U1|U3|count_error[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[7]~24_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~14_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(7) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~14_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(7),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[7]~24_combout\);

-- Location: FF_X9_Y29_N5
\U1|U3|count_error[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[7]~24_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(7));

-- Location: LCCOMB_X12_Y29_N16
\U1|U3|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~16_combout\ = (\U1|U3|count_error\(8) & (\U1|U3|Add1~15\ $ (GND))) # (!\U1|U3|count_error\(8) & (!\U1|U3|Add1~15\ & VCC))
-- \U1|U3|Add1~17\ = CARRY((\U1|U3|count_error\(8) & !\U1|U3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(8),
	datad => VCC,
	cin => \U1|U3|Add1~15\,
	combout => \U1|U3|Add1~16_combout\,
	cout => \U1|U3|Add1~17\);

-- Location: LCCOMB_X9_Y29_N2
\U1|U3|count_error[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[8]~23_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~16_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(8) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~16_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(8),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[8]~23_combout\);

-- Location: FF_X9_Y29_N3
\U1|U3|count_error[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[8]~23_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(8));

-- Location: LCCOMB_X12_Y29_N18
\U1|U3|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~18_combout\ = (\U1|U3|count_error\(9) & (!\U1|U3|Add1~17\)) # (!\U1|U3|count_error\(9) & ((\U1|U3|Add1~17\) # (GND)))
-- \U1|U3|Add1~19\ = CARRY((!\U1|U3|Add1~17\) # (!\U1|U3|count_error\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(9),
	datad => VCC,
	cin => \U1|U3|Add1~17\,
	combout => \U1|U3|Add1~18_combout\,
	cout => \U1|U3|Add1~19\);

-- Location: LCCOMB_X9_Y29_N28
\U1|U3|count_error[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[9]~22_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~18_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(9) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~18_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(9),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[9]~22_combout\);

-- Location: FF_X9_Y29_N29
\U1|U3|count_error[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[9]~22_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(9));

-- Location: LCCOMB_X12_Y29_N20
\U1|U3|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~20_combout\ = (\U1|U3|count_error\(10) & (\U1|U3|Add1~19\ $ (GND))) # (!\U1|U3|count_error\(10) & (!\U1|U3|Add1~19\ & VCC))
-- \U1|U3|Add1~21\ = CARRY((\U1|U3|count_error\(10) & !\U1|U3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(10),
	datad => VCC,
	cin => \U1|U3|Add1~19\,
	combout => \U1|U3|Add1~20_combout\,
	cout => \U1|U3|Add1~21\);

-- Location: LCCOMB_X9_Y29_N22
\U1|U3|count_error[10]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[10]~21_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~20_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(10) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~20_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(10),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[10]~21_combout\);

-- Location: FF_X9_Y29_N23
\U1|U3|count_error[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[10]~21_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(10));

-- Location: LCCOMB_X9_Y29_N6
\U1|U3|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~6_combout\ = (!\U1|U3|count_error\(10) & (!\U1|U3|count_error\(8) & (!\U1|U3|count_error\(7) & !\U1|U3|count_error\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(10),
	datab => \U1|U3|count_error\(8),
	datac => \U1|U3|count_error\(7),
	datad => \U1|U3|count_error\(9),
	combout => \U1|U3|Equal1~6_combout\);

-- Location: LCCOMB_X12_Y29_N22
\U1|U3|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~22_combout\ = (\U1|U3|count_error\(11) & (!\U1|U3|Add1~21\)) # (!\U1|U3|count_error\(11) & ((\U1|U3|Add1~21\) # (GND)))
-- \U1|U3|Add1~23\ = CARRY((!\U1|U3|Add1~21\) # (!\U1|U3|count_error\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(11),
	datad => VCC,
	cin => \U1|U3|Add1~21\,
	combout => \U1|U3|Add1~22_combout\,
	cout => \U1|U3|Add1~23\);

-- Location: LCCOMB_X9_Y29_N26
\U1|U3|count_error[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[11]~20_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~22_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(11) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~22_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(11),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[11]~20_combout\);

-- Location: FF_X9_Y29_N27
\U1|U3|count_error[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[11]~20_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(11));

-- Location: LCCOMB_X12_Y29_N24
\U1|U3|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~24_combout\ = (\U1|U3|count_error\(12) & (\U1|U3|Add1~23\ $ (GND))) # (!\U1|U3|count_error\(12) & (!\U1|U3|Add1~23\ & VCC))
-- \U1|U3|Add1~25\ = CARRY((\U1|U3|count_error\(12) & !\U1|U3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(12),
	datad => VCC,
	cin => \U1|U3|Add1~23\,
	combout => \U1|U3|Add1~24_combout\,
	cout => \U1|U3|Add1~25\);

-- Location: LCCOMB_X9_Y29_N20
\U1|U3|count_error[12]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[12]~19_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~24_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(12) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~24_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(12),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[12]~19_combout\);

-- Location: FF_X9_Y29_N21
\U1|U3|count_error[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[12]~19_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(12));

-- Location: LCCOMB_X12_Y29_N26
\U1|U3|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~26_combout\ = (\U1|U3|count_error\(13) & (!\U1|U3|Add1~25\)) # (!\U1|U3|count_error\(13) & ((\U1|U3|Add1~25\) # (GND)))
-- \U1|U3|Add1~27\ = CARRY((!\U1|U3|Add1~25\) # (!\U1|U3|count_error\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(13),
	datad => VCC,
	cin => \U1|U3|Add1~25\,
	combout => \U1|U3|Add1~26_combout\,
	cout => \U1|U3|Add1~27\);

-- Location: LCCOMB_X9_Y29_N18
\U1|U3|count_error[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[13]~18_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~26_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(13),
	datad => \U1|U3|Add1~26_combout\,
	combout => \U1|U3|count_error[13]~18_combout\);

-- Location: FF_X9_Y29_N19
\U1|U3|count_error[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[13]~18_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(13));

-- Location: LCCOMB_X12_Y29_N28
\U1|U3|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~28_combout\ = (\U1|U3|count_error\(14) & (\U1|U3|Add1~27\ $ (GND))) # (!\U1|U3|count_error\(14) & (!\U1|U3|Add1~27\ & VCC))
-- \U1|U3|Add1~29\ = CARRY((\U1|U3|count_error\(14) & !\U1|U3|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(14),
	datad => VCC,
	cin => \U1|U3|Add1~27\,
	combout => \U1|U3|Add1~28_combout\,
	cout => \U1|U3|Add1~29\);

-- Location: LCCOMB_X9_Y29_N8
\U1|U3|count_error[14]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[14]~17_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~28_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(14) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add1~28_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(14),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[14]~17_combout\);

-- Location: FF_X9_Y29_N9
\U1|U3|count_error[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[14]~17_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(14));

-- Location: LCCOMB_X9_Y29_N24
\U1|U3|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~5_combout\ = (!\U1|U3|count_error\(11) & (!\U1|U3|count_error\(12) & (!\U1|U3|count_error\(14) & !\U1|U3|count_error\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(11),
	datab => \U1|U3|count_error\(12),
	datac => \U1|U3|count_error\(14),
	datad => \U1|U3|count_error\(13),
	combout => \U1|U3|Equal1~5_combout\);

-- Location: LCCOMB_X10_Y29_N2
\U1|U3|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~7_combout\ = (!\U1|U3|count_error\(6) & (!\U1|U3|count_error\(5) & (\U1|U3|Equal1~6_combout\ & \U1|U3|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(6),
	datab => \U1|U3|count_error\(5),
	datac => \U1|U3|Equal1~6_combout\,
	datad => \U1|U3|Equal1~5_combout\,
	combout => \U1|U3|Equal1~7_combout\);

-- Location: LCCOMB_X12_Y29_N30
\U1|U3|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~30_combout\ = (\U1|U3|count_error\(15) & (!\U1|U3|Add1~29\)) # (!\U1|U3|count_error\(15) & ((\U1|U3|Add1~29\) # (GND)))
-- \U1|U3|Add1~31\ = CARRY((!\U1|U3|Add1~29\) # (!\U1|U3|count_error\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(15),
	datad => VCC,
	cin => \U1|U3|Add1~29\,
	combout => \U1|U3|Add1~30_combout\,
	cout => \U1|U3|Add1~31\);

-- Location: LCCOMB_X10_Y29_N22
\U1|U3|count_error[15]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[15]~16_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~30_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(15),
	datad => \U1|U3|Add1~30_combout\,
	combout => \U1|U3|count_error[15]~16_combout\);

-- Location: FF_X10_Y29_N23
\U1|U3|count_error[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[15]~16_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(15));

-- Location: LCCOMB_X12_Y28_N0
\U1|U3|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~32_combout\ = (\U1|U3|count_error\(16) & (\U1|U3|Add1~31\ $ (GND))) # (!\U1|U3|count_error\(16) & (!\U1|U3|Add1~31\ & VCC))
-- \U1|U3|Add1~33\ = CARRY((\U1|U3|count_error\(16) & !\U1|U3|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(16),
	datad => VCC,
	cin => \U1|U3|Add1~31\,
	combout => \U1|U3|Add1~32_combout\,
	cout => \U1|U3|Add1~33\);

-- Location: LCCOMB_X10_Y29_N0
\U1|U3|count_error[16]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[16]~15_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~32_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(16),
	datad => \U1|U3|Add1~32_combout\,
	combout => \U1|U3|count_error[16]~15_combout\);

-- Location: FF_X10_Y29_N1
\U1|U3|count_error[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[16]~15_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(16));

-- Location: LCCOMB_X12_Y28_N2
\U1|U3|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~34_combout\ = (\U1|U3|count_error\(17) & (!\U1|U3|Add1~33\)) # (!\U1|U3|count_error\(17) & ((\U1|U3|Add1~33\) # (GND)))
-- \U1|U3|Add1~35\ = CARRY((!\U1|U3|Add1~33\) # (!\U1|U3|count_error\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(17),
	datad => VCC,
	cin => \U1|U3|Add1~33\,
	combout => \U1|U3|Add1~34_combout\,
	cout => \U1|U3|Add1~35\);

-- Location: LCCOMB_X10_Y29_N14
\U1|U3|count_error[17]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[17]~14_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~34_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(17),
	datad => \U1|U3|Add1~34_combout\,
	combout => \U1|U3|count_error[17]~14_combout\);

-- Location: FF_X10_Y29_N15
\U1|U3|count_error[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[17]~14_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(17));

-- Location: LCCOMB_X12_Y28_N4
\U1|U3|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~36_combout\ = (\U1|U3|count_error\(18) & (\U1|U3|Add1~35\ $ (GND))) # (!\U1|U3|count_error\(18) & (!\U1|U3|Add1~35\ & VCC))
-- \U1|U3|Add1~37\ = CARRY((\U1|U3|count_error\(18) & !\U1|U3|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(18),
	datad => VCC,
	cin => \U1|U3|Add1~35\,
	combout => \U1|U3|Add1~36_combout\,
	cout => \U1|U3|Add1~37\);

-- Location: LCCOMB_X10_Y29_N24
\U1|U3|count_error[18]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[18]~13_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~36_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & ((\U1|U3|count_error\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|Add1~36_combout\,
	datac => \U1|U3|count_error\(18),
	datad => \U1|U3|process_1~1_combout\,
	combout => \U1|U3|count_error[18]~13_combout\);

-- Location: FF_X10_Y29_N25
\U1|U3|count_error[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[18]~13_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(18));

-- Location: LCCOMB_X12_Y28_N6
\U1|U3|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~38_combout\ = (\U1|U3|count_error\(19) & (!\U1|U3|Add1~37\)) # (!\U1|U3|count_error\(19) & ((\U1|U3|Add1~37\) # (GND)))
-- \U1|U3|Add1~39\ = CARRY((!\U1|U3|Add1~37\) # (!\U1|U3|count_error\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(19),
	datad => VCC,
	cin => \U1|U3|Add1~37\,
	combout => \U1|U3|Add1~38_combout\,
	cout => \U1|U3|Add1~39\);

-- Location: LCCOMB_X10_Y29_N28
\U1|U3|count_error[19]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[19]~12_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~38_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(19),
	datad => \U1|U3|Add1~38_combout\,
	combout => \U1|U3|count_error[19]~12_combout\);

-- Location: FF_X10_Y29_N29
\U1|U3|count_error[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[19]~12_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(19));

-- Location: LCCOMB_X12_Y28_N8
\U1|U3|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~40_combout\ = (\U1|U3|count_error\(20) & (\U1|U3|Add1~39\ $ (GND))) # (!\U1|U3|count_error\(20) & (!\U1|U3|Add1~39\ & VCC))
-- \U1|U3|Add1~41\ = CARRY((\U1|U3|count_error\(20) & !\U1|U3|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(20),
	datad => VCC,
	cin => \U1|U3|Add1~39\,
	combout => \U1|U3|Add1~40_combout\,
	cout => \U1|U3|Add1~41\);

-- Location: LCCOMB_X10_Y29_N10
\U1|U3|count_error[20]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[20]~11_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~40_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(20),
	datad => \U1|U3|Add1~40_combout\,
	combout => \U1|U3|count_error[20]~11_combout\);

-- Location: FF_X10_Y29_N11
\U1|U3|count_error[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[20]~11_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(20));

-- Location: LCCOMB_X12_Y28_N10
\U1|U3|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~42_combout\ = (\U1|U3|count_error\(21) & (!\U1|U3|Add1~41\)) # (!\U1|U3|count_error\(21) & ((\U1|U3|Add1~41\) # (GND)))
-- \U1|U3|Add1~43\ = CARRY((!\U1|U3|Add1~41\) # (!\U1|U3|count_error\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(21),
	datad => VCC,
	cin => \U1|U3|Add1~41\,
	combout => \U1|U3|Add1~42_combout\,
	cout => \U1|U3|Add1~43\);

-- Location: LCCOMB_X9_Y29_N30
\U1|U3|count_error[21]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[21]~10_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~42_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|count_error[0]~0_combout\,
	datac => \U1|U3|count_error\(21),
	datad => \U1|U3|Add1~42_combout\,
	combout => \U1|U3|count_error[21]~10_combout\);

-- Location: FF_X9_Y29_N31
\U1|U3|count_error[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[21]~10_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(21));

-- Location: LCCOMB_X12_Y28_N12
\U1|U3|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~44_combout\ = (\U1|U3|count_error\(22) & (\U1|U3|Add1~43\ $ (GND))) # (!\U1|U3|count_error\(22) & (!\U1|U3|Add1~43\ & VCC))
-- \U1|U3|Add1~45\ = CARRY((\U1|U3|count_error\(22) & !\U1|U3|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(22),
	datad => VCC,
	cin => \U1|U3|Add1~43\,
	combout => \U1|U3|Add1~44_combout\,
	cout => \U1|U3|Add1~45\);

-- Location: LCCOMB_X10_Y29_N4
\U1|U3|count_error[22]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[22]~9_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~44_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error[0]~0_combout\,
	datab => \U1|U3|process_1~1_combout\,
	datac => \U1|U3|count_error\(22),
	datad => \U1|U3|Add1~44_combout\,
	combout => \U1|U3|count_error[22]~9_combout\);

-- Location: FF_X10_Y29_N5
\U1|U3|count_error[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[22]~9_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(22));

-- Location: LCCOMB_X12_Y28_N14
\U1|U3|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~46_combout\ = (\U1|U3|count_error\(23) & (!\U1|U3|Add1~45\)) # (!\U1|U3|count_error\(23) & ((\U1|U3|Add1~45\) # (GND)))
-- \U1|U3|Add1~47\ = CARRY((!\U1|U3|Add1~45\) # (!\U1|U3|count_error\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(23),
	datad => VCC,
	cin => \U1|U3|Add1~45\,
	combout => \U1|U3|Add1~46_combout\,
	cout => \U1|U3|Add1~47\);

-- Location: LCCOMB_X11_Y29_N4
\U1|U3|count_error[23]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[23]~8_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~46_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(23) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|Add1~46_combout\,
	datac => \U1|U3|count_error\(23),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[23]~8_combout\);

-- Location: FF_X11_Y29_N5
\U1|U3|count_error[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[23]~8_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(23));

-- Location: LCCOMB_X12_Y28_N16
\U1|U3|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~48_combout\ = (\U1|U3|count_error\(24) & (\U1|U3|Add1~47\ $ (GND))) # (!\U1|U3|count_error\(24) & (!\U1|U3|Add1~47\ & VCC))
-- \U1|U3|Add1~49\ = CARRY((\U1|U3|count_error\(24) & !\U1|U3|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(24),
	datad => VCC,
	cin => \U1|U3|Add1~47\,
	combout => \U1|U3|Add1~48_combout\,
	cout => \U1|U3|Add1~49\);

-- Location: LCCOMB_X11_Y29_N26
\U1|U3|count_error[24]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[24]~7_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~48_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(24) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|Add1~48_combout\,
	datac => \U1|U3|count_error\(24),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[24]~7_combout\);

-- Location: FF_X11_Y29_N27
\U1|U3|count_error[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[24]~7_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(24));

-- Location: LCCOMB_X12_Y28_N18
\U1|U3|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~50_combout\ = (\U1|U3|count_error\(25) & (!\U1|U3|Add1~49\)) # (!\U1|U3|count_error\(25) & ((\U1|U3|Add1~49\) # (GND)))
-- \U1|U3|Add1~51\ = CARRY((!\U1|U3|Add1~49\) # (!\U1|U3|count_error\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(25),
	datad => VCC,
	cin => \U1|U3|Add1~49\,
	combout => \U1|U3|Add1~50_combout\,
	cout => \U1|U3|Add1~51\);

-- Location: LCCOMB_X11_Y29_N28
\U1|U3|count_error[25]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[25]~6_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~50_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|count_error[0]~0_combout\,
	datac => \U1|U3|count_error\(25),
	datad => \U1|U3|Add1~50_combout\,
	combout => \U1|U3|count_error[25]~6_combout\);

-- Location: FF_X11_Y29_N29
\U1|U3|count_error[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[25]~6_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(25));

-- Location: LCCOMB_X12_Y28_N20
\U1|U3|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~52_combout\ = (\U1|U3|count_error\(26) & (\U1|U3|Add1~51\ $ (GND))) # (!\U1|U3|count_error\(26) & (!\U1|U3|Add1~51\ & VCC))
-- \U1|U3|Add1~53\ = CARRY((\U1|U3|count_error\(26) & !\U1|U3|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(26),
	datad => VCC,
	cin => \U1|U3|Add1~51\,
	combout => \U1|U3|Add1~52_combout\,
	cout => \U1|U3|Add1~53\);

-- Location: LCCOMB_X11_Y29_N10
\U1|U3|count_error[26]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[26]~5_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~52_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|count_error[0]~0_combout\,
	datac => \U1|U3|count_error\(26),
	datad => \U1|U3|Add1~52_combout\,
	combout => \U1|U3|count_error[26]~5_combout\);

-- Location: FF_X11_Y29_N11
\U1|U3|count_error[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[26]~5_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(26));

-- Location: LCCOMB_X11_Y29_N30
\U1|U3|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~1_combout\ = (!\U1|U3|count_error\(26) & (!\U1|U3|count_error\(23) & (!\U1|U3|count_error\(24) & !\U1|U3|count_error\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(26),
	datab => \U1|U3|count_error\(23),
	datac => \U1|U3|count_error\(24),
	datad => \U1|U3|count_error\(25),
	combout => \U1|U3|Equal1~1_combout\);

-- Location: LCCOMB_X10_Y29_N8
\U1|U3|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~3_combout\ = (!\U1|U3|count_error\(15) & (!\U1|U3|count_error\(18) & (!\U1|U3|count_error\(17) & !\U1|U3|count_error\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(15),
	datab => \U1|U3|count_error\(18),
	datac => \U1|U3|count_error\(17),
	datad => \U1|U3|count_error\(16),
	combout => \U1|U3|Equal1~3_combout\);

-- Location: LCCOMB_X12_Y28_N22
\U1|U3|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~54_combout\ = (\U1|U3|count_error\(27) & (!\U1|U3|Add1~53\)) # (!\U1|U3|count_error\(27) & ((\U1|U3|Add1~53\) # (GND)))
-- \U1|U3|Add1~55\ = CARRY((!\U1|U3|Add1~53\) # (!\U1|U3|count_error\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(27),
	datad => VCC,
	cin => \U1|U3|Add1~53\,
	combout => \U1|U3|Add1~54_combout\,
	cout => \U1|U3|Add1~55\);

-- Location: LCCOMB_X11_Y29_N22
\U1|U3|count_error[27]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[27]~4_combout\ = (\U1|U3|process_1~1_combout\ & (\U1|U3|Add1~54_combout\)) # (!\U1|U3|process_1~1_combout\ & (((\U1|U3|count_error\(27) & \U1|U3|count_error[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|Add1~54_combout\,
	datac => \U1|U3|count_error\(27),
	datad => \U1|U3|count_error[0]~0_combout\,
	combout => \U1|U3|count_error[27]~4_combout\);

-- Location: FF_X11_Y29_N23
\U1|U3|count_error[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[27]~4_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(27));

-- Location: LCCOMB_X12_Y28_N24
\U1|U3|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~56_combout\ = (\U1|U3|count_error\(28) & (\U1|U3|Add1~55\ $ (GND))) # (!\U1|U3|count_error\(28) & (!\U1|U3|Add1~55\ & VCC))
-- \U1|U3|Add1~57\ = CARRY((\U1|U3|count_error\(28) & !\U1|U3|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(28),
	datad => VCC,
	cin => \U1|U3|Add1~55\,
	combout => \U1|U3|Add1~56_combout\,
	cout => \U1|U3|Add1~57\);

-- Location: LCCOMB_X11_Y29_N8
\U1|U3|count_error[28]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[28]~3_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~56_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|count_error[0]~0_combout\,
	datac => \U1|U3|count_error\(28),
	datad => \U1|U3|Add1~56_combout\,
	combout => \U1|U3|count_error[28]~3_combout\);

-- Location: FF_X11_Y29_N9
\U1|U3|count_error[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[28]~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(28));

-- Location: LCCOMB_X12_Y28_N26
\U1|U3|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~58_combout\ = (\U1|U3|count_error\(29) & (!\U1|U3|Add1~57\)) # (!\U1|U3|count_error\(29) & ((\U1|U3|Add1~57\) # (GND)))
-- \U1|U3|Add1~59\ = CARRY((!\U1|U3|Add1~57\) # (!\U1|U3|count_error\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(29),
	datad => VCC,
	cin => \U1|U3|Add1~57\,
	combout => \U1|U3|Add1~58_combout\,
	cout => \U1|U3|Add1~59\);

-- Location: LCCOMB_X11_Y29_N6
\U1|U3|count_error[29]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[29]~2_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~58_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|count_error[0]~0_combout\,
	datac => \U1|U3|count_error\(29),
	datad => \U1|U3|Add1~58_combout\,
	combout => \U1|U3|count_error[29]~2_combout\);

-- Location: FF_X11_Y29_N7
\U1|U3|count_error[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[29]~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(29));

-- Location: LCCOMB_X12_Y28_N28
\U1|U3|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~60_combout\ = (\U1|U3|count_error\(30) & (\U1|U3|Add1~59\ $ (GND))) # (!\U1|U3|count_error\(30) & (!\U1|U3|Add1~59\ & VCC))
-- \U1|U3|Add1~61\ = CARRY((\U1|U3|count_error\(30) & !\U1|U3|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(30),
	datad => VCC,
	cin => \U1|U3|Add1~59\,
	combout => \U1|U3|Add1~60_combout\,
	cout => \U1|U3|Add1~61\);

-- Location: LCCOMB_X11_Y29_N24
\U1|U3|count_error[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[30]~1_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~60_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|count_error[0]~0_combout\,
	datac => \U1|U3|count_error\(30),
	datad => \U1|U3|Add1~60_combout\,
	combout => \U1|U3|count_error[30]~1_combout\);

-- Location: FF_X11_Y29_N25
\U1|U3|count_error[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[30]~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(30));

-- Location: LCCOMB_X11_Y29_N20
\U1|U3|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~0_combout\ = (!\U1|U3|count_error\(27) & (!\U1|U3|count_error\(30) & (!\U1|U3|count_error\(28) & !\U1|U3|count_error\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(27),
	datab => \U1|U3|count_error\(30),
	datac => \U1|U3|count_error\(28),
	datad => \U1|U3|count_error\(29),
	combout => \U1|U3|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y29_N18
\U1|U3|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~2_combout\ = (!\U1|U3|count_error\(20) & (!\U1|U3|count_error\(19) & (!\U1|U3|count_error\(22) & !\U1|U3|count_error\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(20),
	datab => \U1|U3|count_error\(19),
	datac => \U1|U3|count_error\(22),
	datad => \U1|U3|count_error\(21),
	combout => \U1|U3|Equal1~2_combout\);

-- Location: LCCOMB_X10_Y29_N30
\U1|U3|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~4_combout\ = (\U1|U3|Equal1~1_combout\ & (\U1|U3|Equal1~3_combout\ & (\U1|U3|Equal1~0_combout\ & \U1|U3|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal1~1_combout\,
	datab => \U1|U3|Equal1~3_combout\,
	datac => \U1|U3|Equal1~0_combout\,
	datad => \U1|U3|Equal1~2_combout\,
	combout => \U1|U3|Equal1~4_combout\);

-- Location: LCCOMB_X10_Y29_N16
\U1|U3|Equal1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~11_combout\ = (\U1|U3|Equal1~7_combout\ & \U1|U3|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|Equal1~7_combout\,
	datac => \U1|U3|Equal1~4_combout\,
	combout => \U1|U3|Equal1~11_combout\);

-- Location: LCCOMB_X6_Y29_N6
\U1|U2|U1|cmp_cnt[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[0]~9_combout\ = \U1|U2|U1|cmp_cnt\(0) $ (VCC)
-- \U1|U2|U1|cmp_cnt[0]~10\ = CARRY(\U1|U2|U1|cmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|cmp_cnt\(0),
	datad => VCC,
	combout => \U1|U2|U1|cmp_cnt[0]~9_combout\,
	cout => \U1|U2|U1|cmp_cnt[0]~10\);

-- Location: LCCOMB_X7_Y29_N2
\U1|U2|U1|seed_cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|seed_cnt~3_combout\ = (!\U1|U2|U1|seed_cnt\(0) & (\U1|U2|U1|pstate.GENERATE_SEED~q\ & ((!\U1|U2|U1|seed_cnt\(1)) # (!\U1|U2|U1|seed_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|seed_cnt\(2),
	datab => \U1|U2|U1|seed_cnt\(1),
	datac => \U1|U2|U1|seed_cnt\(0),
	datad => \U1|U2|U1|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U1|seed_cnt~3_combout\);

-- Location: FF_X7_Y29_N3
\U1|U2|U1|seed_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|seed_cnt~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|seed_cnt\(0));

-- Location: LCCOMB_X7_Y29_N0
\U1|U2|U1|seed_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|seed_cnt~0_combout\ = (\U1|U2|U1|pstate.GENERATE_SEED~q\ & (((\U1|U2|U1|seed_cnt\(0)) # (!\U1|U2|U1|seed_cnt\(1))) # (!\U1|U2|U1|seed_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|seed_cnt\(2),
	datab => \U1|U2|U1|pstate.GENERATE_SEED~q\,
	datac => \U1|U2|U1|seed_cnt\(1),
	datad => \U1|U2|U1|seed_cnt\(0),
	combout => \U1|U2|U1|seed_cnt~0_combout\);

-- Location: LCCOMB_X7_Y28_N30
\U1|U2|U1|nstate.LOSS_OF_LOCK~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|nstate.LOSS_OF_LOCK~2_combout\ = (!\i_fixed_pn_pattern_sel~input_o\ & (\U1|U2|U1|pstate.PATTERN_LOCK~q\ & (\i_en_from_gen_to_det~input_o\ & \U1|U3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pn_pattern_sel~input_o\,
	datab => \U1|U2|U1|pstate.PATTERN_LOCK~q\,
	datac => \i_en_from_gen_to_det~input_o\,
	datad => \U1|U3|Equal1~10_combout\,
	combout => \U1|U2|U1|nstate.LOSS_OF_LOCK~2_combout\);

-- Location: FF_X7_Y28_N31
\U1|U2|U1|pstate.LOSS_OF_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|nstate.LOSS_OF_LOCK~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pstate.LOSS_OF_LOCK~q\);

-- Location: LCCOMB_X7_Y28_N2
\U1|U2|U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Selector0~0_combout\ = (!\U1|U2|U1|pstate.LOSS_OF_LOCK~q\ & (\i_en_from_gen_to_det~input_o\ & !\i_fixed_pn_pattern_sel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pstate.LOSS_OF_LOCK~q\,
	datab => \i_en_from_gen_to_det~input_o\,
	datac => \i_fixed_pn_pattern_sel~input_o\,
	combout => \U1|U2|U1|Selector0~0_combout\);

-- Location: FF_X7_Y28_N3
\U1|U2|U1|pstate.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|Selector0~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pstate.IDLE~q\);

-- Location: LCCOMB_X7_Y29_N26
\U1|U2|U1|pn_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data~2_combout\ = (\U1|U2|U1|pstate.PATTERN_LOCK~q\ & ((\U1|U2|U1|pn_data\(5) $ (\U1|U2|U1|pn_data\(6))))) # (!\U1|U2|U1|pstate.PATTERN_LOCK~q\ & (\U1|U2|U1|pstate.COMPARE~q\ & (\U1|U2|U1|pn_data\(5) $ (\U1|U2|U1|pn_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pstate.PATTERN_LOCK~q\,
	datab => \U1|U2|U1|pstate.COMPARE~q\,
	datac => \U1|U2|U1|pn_data\(5),
	datad => \U1|U2|U1|pn_data\(6),
	combout => \U1|U2|U1|pn_data~2_combout\);

-- Location: IOIBUF_X0_Y30_N15
\i_data_from_gen_to_det~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_from_gen_to_det,
	o => \i_data_from_gen_to_det~input_o\);

-- Location: LCCOMB_X7_Y29_N16
\U1|U0|o_pn_det\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|o_pn_det~combout\ = (!\i_fixed_pn_pattern_sel~input_o\ & \i_data_from_gen_to_det~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \i_data_from_gen_to_det~input_o\,
	combout => \U1|U0|o_pn_det~combout\);

-- Location: LCCOMB_X7_Y29_N14
\U1|U2|U1|pn_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data~1_combout\ = (!\U1|U2|U1|pstate.PATTERN_LOCK~q\ & (\U1|U2|U1|pn_data\(0) & !\U1|U2|U1|pstate.COMPARE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pstate.PATTERN_LOCK~q\,
	datac => \U1|U2|U1|pn_data\(0),
	datad => \U1|U2|U1|pstate.COMPARE~q\,
	combout => \U1|U2|U1|pn_data~1_combout\);

-- Location: LCCOMB_X7_Y29_N8
\U1|U2|U1|pn_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data~3_combout\ = (\U1|U2|U1|pstate.GENERATE_SEED~q\ & (((\U1|U0|o_pn_det~combout\)))) # (!\U1|U2|U1|pstate.GENERATE_SEED~q\ & ((\U1|U2|U1|pn_data~2_combout\) # ((\U1|U2|U1|pn_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pn_data~2_combout\,
	datab => \U1|U0|o_pn_det~combout\,
	datac => \U1|U2|U1|pn_data~1_combout\,
	datad => \U1|U2|U1|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U1|pn_data~3_combout\);

-- Location: FF_X7_Y29_N9
\U1|U2|U1|pn_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|pn_data~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_data\(0));

-- Location: LCCOMB_X6_Y29_N2
\U1|U2|U1|pn_data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data[1]~feeder_combout\ = \U1|U2|U1|pn_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U1|pn_data\(0),
	combout => \U1|U2|U1|pn_data[1]~feeder_combout\);

-- Location: LCCOMB_X7_Y29_N18
\U1|U2|U1|pn_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data~0_combout\ = (\U1|U2|U1|pstate.PATTERN_LOCK~q\) # ((\U1|U2|U1|pstate.GENERATE_SEED~q\) # (\U1|U2|U1|pstate.COMPARE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pstate.PATTERN_LOCK~q\,
	datab => \U1|U2|U1|pstate.GENERATE_SEED~q\,
	datac => \U1|U2|U1|pstate.COMPARE~q\,
	combout => \U1|U2|U1|pn_data~0_combout\);

-- Location: FF_X6_Y29_N3
\U1|U2|U1|pn_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|pn_data[1]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U1|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_data\(1));

-- Location: LCCOMB_X6_Y29_N0
\U1|U2|U1|pn_data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data[2]~feeder_combout\ = \U1|U2|U1|pn_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U1|pn_data\(1),
	combout => \U1|U2|U1|pn_data[2]~feeder_combout\);

-- Location: FF_X6_Y29_N1
\U1|U2|U1|pn_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|pn_data[2]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U1|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_data\(2));

-- Location: LCCOMB_X6_Y29_N22
\U1|U2|U1|pn_data[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data[3]~feeder_combout\ = \U1|U2|U1|pn_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U1|pn_data\(2),
	combout => \U1|U2|U1|pn_data[3]~feeder_combout\);

-- Location: FF_X6_Y29_N23
\U1|U2|U1|pn_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|pn_data[3]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U1|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_data\(3));

-- Location: LCCOMB_X6_Y29_N4
\U1|U2|U1|pn_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data[4]~feeder_combout\ = \U1|U2|U1|pn_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U1|pn_data\(3),
	combout => \U1|U2|U1|pn_data[4]~feeder_combout\);

-- Location: FF_X6_Y29_N5
\U1|U2|U1|pn_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|pn_data[4]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U1|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_data\(4));

-- Location: FF_X7_Y29_N27
\U1|U2|U1|pn_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U1|pn_data\(4),
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|U2|U1|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_data\(5));

-- Location: LCCOMB_X7_Y29_N20
\U1|U2|U1|pn_data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_data[6]~feeder_combout\ = \U1|U2|U1|pn_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U1|pn_data\(5),
	combout => \U1|U2|U1|pn_data[6]~feeder_combout\);

-- Location: FF_X7_Y29_N21
\U1|U2|U1|pn_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|pn_data[6]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U1|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_data\(6));

-- Location: LCCOMB_X7_Y29_N22
\U1|U2|U1|pn_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|pn_cmp~0_combout\ = (\U1|U2|U1|pstate.COMPARE~q\ & (\U1|U2|U1|pn_data\(6) $ (\U1|U2|U1|pn_data\(5) $ (\U1|U0|o_pn_det~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pstate.COMPARE~q\,
	datab => \U1|U2|U1|pn_data\(6),
	datac => \U1|U2|U1|pn_data\(5),
	datad => \U1|U0|o_pn_det~combout\,
	combout => \U1|U2|U1|pn_cmp~0_combout\);

-- Location: FF_X7_Y29_N23
\U1|U2|U1|pn_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|pn_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pn_cmp~q\);

-- Location: LCCOMB_X7_Y29_N10
\U1|U2|U1|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Selector1~2_combout\ = ((\U1|U2|U1|pn_cmp~q\ & \U1|U2|U1|pstate.COMPARE~q\)) # (!\U1|U2|U1|pstate.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U1|pstate.IDLE~q\,
	datac => \U1|U2|U1|pn_cmp~q\,
	datad => \U1|U2|U1|pstate.COMPARE~q\,
	combout => \U1|U2|U1|Selector1~2_combout\);

-- Location: LCCOMB_X7_Y29_N28
\U1|U2|U1|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Selector1~3_combout\ = (\i_en_from_gen_to_det~input_o\ & (!\i_fixed_pn_pattern_sel~input_o\ & ((\U1|U2|U1|seed_cnt~0_combout\) # (\U1|U2|U1|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_en_from_gen_to_det~input_o\,
	datab => \U1|U2|U1|seed_cnt~0_combout\,
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \U1|U2|U1|Selector1~2_combout\,
	combout => \U1|U2|U1|Selector1~3_combout\);

-- Location: FF_X7_Y29_N29
\U1|U2|U1|pstate.GENERATE_SEED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|Selector1~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pstate.GENERATE_SEED~q\);

-- Location: LCCOMB_X7_Y29_N4
\U1|U2|U1|seed_cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|seed_cnt~2_combout\ = (\U1|U2|U1|pstate.GENERATE_SEED~q\ & ((\U1|U2|U1|seed_cnt\(1) & (!\U1|U2|U1|seed_cnt\(2) & !\U1|U2|U1|seed_cnt\(0))) # (!\U1|U2|U1|seed_cnt\(1) & ((\U1|U2|U1|seed_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|seed_cnt\(2),
	datab => \U1|U2|U1|pstate.GENERATE_SEED~q\,
	datac => \U1|U2|U1|seed_cnt\(1),
	datad => \U1|U2|U1|seed_cnt\(0),
	combout => \U1|U2|U1|seed_cnt~2_combout\);

-- Location: FF_X7_Y29_N5
\U1|U2|U1|seed_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|seed_cnt~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|seed_cnt\(1));

-- Location: LCCOMB_X7_Y29_N30
\U1|U2|U1|seed_cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|seed_cnt~1_combout\ = (\U1|U2|U1|pstate.GENERATE_SEED~q\ & ((\U1|U2|U1|seed_cnt\(1) & (\U1|U2|U1|seed_cnt\(0) & !\U1|U2|U1|seed_cnt\(2))) # (!\U1|U2|U1|seed_cnt\(1) & ((\U1|U2|U1|seed_cnt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|seed_cnt\(1),
	datab => \U1|U2|U1|seed_cnt\(0),
	datac => \U1|U2|U1|seed_cnt\(2),
	datad => \U1|U2|U1|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U1|seed_cnt~1_combout\);

-- Location: FF_X7_Y29_N31
\U1|U2|U1|seed_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|seed_cnt~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|seed_cnt\(2));

-- Location: LCCOMB_X7_Y29_N12
\U1|U2|U1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Selector2~0_combout\ = (\U1|U2|U1|seed_cnt\(2) & (\U1|U2|U1|pstate.GENERATE_SEED~q\ & (\U1|U2|U1|seed_cnt\(1) & !\U1|U2|U1|seed_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|seed_cnt\(2),
	datab => \U1|U2|U1|pstate.GENERATE_SEED~q\,
	datac => \U1|U2|U1|seed_cnt\(1),
	datad => \U1|U2|U1|seed_cnt\(0),
	combout => \U1|U2|U1|Selector2~0_combout\);

-- Location: LCCOMB_X7_Y29_N24
\U1|U2|U1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Selector2~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U1|Selector2~0_combout\) # ((!\U1|U2|U1|pn_cmp~q\ & !\U1|U2|U1|cmp_cnt[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|Selector2~0_combout\,
	datab => \U1|U4|o_pn_det~combout\,
	datac => \U1|U2|U1|pn_cmp~q\,
	datad => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	combout => \U1|U2|U1|Selector2~1_combout\);

-- Location: FF_X7_Y29_N25
\U1|U2|U1|pstate.COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|Selector2~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pstate.COMPARE~q\);

-- Location: LCCOMB_X6_Y29_N28
\U1|U2|U1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Equal1~0_combout\ = (((\U1|U2|U1|cmp_cnt\(1)) # (!\U1|U2|U1|cmp_cnt\(2))) # (!\U1|U2|U1|cmp_cnt\(3))) # (!\U1|U2|U1|cmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|cmp_cnt\(0),
	datab => \U1|U2|U1|cmp_cnt\(3),
	datac => \U1|U2|U1|cmp_cnt\(1),
	datad => \U1|U2|U1|cmp_cnt\(2),
	combout => \U1|U2|U1|Equal1~0_combout\);

-- Location: LCCOMB_X6_Y29_N30
\U1|U2|U1|cmp_cnt[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[1]~8_combout\ = ((!\U1|U2|U1|Equal1~1_combout\ & !\U1|U2|U1|Equal1~0_combout\)) # (!\U1|U2|U1|pstate.COMPARE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U1|pstate.COMPARE~q\,
	datac => \U1|U2|U1|Equal1~1_combout\,
	datad => \U1|U2|U1|Equal1~0_combout\,
	combout => \U1|U2|U1|cmp_cnt[1]~8_combout\);

-- Location: FF_X6_Y29_N7
\U1|U2|U1|cmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[0]~9_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(0));

-- Location: LCCOMB_X6_Y29_N8
\U1|U2|U1|cmp_cnt[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[1]~11_combout\ = (\U1|U2|U1|cmp_cnt\(1) & (!\U1|U2|U1|cmp_cnt[0]~10\)) # (!\U1|U2|U1|cmp_cnt\(1) & ((\U1|U2|U1|cmp_cnt[0]~10\) # (GND)))
-- \U1|U2|U1|cmp_cnt[1]~12\ = CARRY((!\U1|U2|U1|cmp_cnt[0]~10\) # (!\U1|U2|U1|cmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U1|cmp_cnt\(1),
	datad => VCC,
	cin => \U1|U2|U1|cmp_cnt[0]~10\,
	combout => \U1|U2|U1|cmp_cnt[1]~11_combout\,
	cout => \U1|U2|U1|cmp_cnt[1]~12\);

-- Location: FF_X6_Y29_N9
\U1|U2|U1|cmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[1]~11_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(1));

-- Location: LCCOMB_X6_Y29_N10
\U1|U2|U1|cmp_cnt[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[2]~13_combout\ = (\U1|U2|U1|cmp_cnt\(2) & (\U1|U2|U1|cmp_cnt[1]~12\ $ (GND))) # (!\U1|U2|U1|cmp_cnt\(2) & (!\U1|U2|U1|cmp_cnt[1]~12\ & VCC))
-- \U1|U2|U1|cmp_cnt[2]~14\ = CARRY((\U1|U2|U1|cmp_cnt\(2) & !\U1|U2|U1|cmp_cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|cmp_cnt\(2),
	datad => VCC,
	cin => \U1|U2|U1|cmp_cnt[1]~12\,
	combout => \U1|U2|U1|cmp_cnt[2]~13_combout\,
	cout => \U1|U2|U1|cmp_cnt[2]~14\);

-- Location: FF_X6_Y29_N11
\U1|U2|U1|cmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[2]~13_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(2));

-- Location: LCCOMB_X6_Y29_N12
\U1|U2|U1|cmp_cnt[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[3]~15_combout\ = (\U1|U2|U1|cmp_cnt\(3) & (!\U1|U2|U1|cmp_cnt[2]~14\)) # (!\U1|U2|U1|cmp_cnt\(3) & ((\U1|U2|U1|cmp_cnt[2]~14\) # (GND)))
-- \U1|U2|U1|cmp_cnt[3]~16\ = CARRY((!\U1|U2|U1|cmp_cnt[2]~14\) # (!\U1|U2|U1|cmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|cmp_cnt\(3),
	datad => VCC,
	cin => \U1|U2|U1|cmp_cnt[2]~14\,
	combout => \U1|U2|U1|cmp_cnt[3]~15_combout\,
	cout => \U1|U2|U1|cmp_cnt[3]~16\);

-- Location: FF_X6_Y29_N13
\U1|U2|U1|cmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[3]~15_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(3));

-- Location: LCCOMB_X6_Y29_N14
\U1|U2|U1|cmp_cnt[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[4]~17_combout\ = (\U1|U2|U1|cmp_cnt\(4) & (\U1|U2|U1|cmp_cnt[3]~16\ $ (GND))) # (!\U1|U2|U1|cmp_cnt\(4) & (!\U1|U2|U1|cmp_cnt[3]~16\ & VCC))
-- \U1|U2|U1|cmp_cnt[4]~18\ = CARRY((\U1|U2|U1|cmp_cnt\(4) & !\U1|U2|U1|cmp_cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U1|cmp_cnt\(4),
	datad => VCC,
	cin => \U1|U2|U1|cmp_cnt[3]~16\,
	combout => \U1|U2|U1|cmp_cnt[4]~17_combout\,
	cout => \U1|U2|U1|cmp_cnt[4]~18\);

-- Location: FF_X6_Y29_N15
\U1|U2|U1|cmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[4]~17_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(4));

-- Location: LCCOMB_X6_Y29_N16
\U1|U2|U1|cmp_cnt[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[5]~19_combout\ = (\U1|U2|U1|cmp_cnt\(5) & (!\U1|U2|U1|cmp_cnt[4]~18\)) # (!\U1|U2|U1|cmp_cnt\(5) & ((\U1|U2|U1|cmp_cnt[4]~18\) # (GND)))
-- \U1|U2|U1|cmp_cnt[5]~20\ = CARRY((!\U1|U2|U1|cmp_cnt[4]~18\) # (!\U1|U2|U1|cmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U1|cmp_cnt\(5),
	datad => VCC,
	cin => \U1|U2|U1|cmp_cnt[4]~18\,
	combout => \U1|U2|U1|cmp_cnt[5]~19_combout\,
	cout => \U1|U2|U1|cmp_cnt[5]~20\);

-- Location: FF_X6_Y29_N17
\U1|U2|U1|cmp_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[5]~19_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(5));

-- Location: LCCOMB_X6_Y29_N18
\U1|U2|U1|cmp_cnt[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[6]~21_combout\ = (\U1|U2|U1|cmp_cnt\(6) & (\U1|U2|U1|cmp_cnt[5]~20\ $ (GND))) # (!\U1|U2|U1|cmp_cnt\(6) & (!\U1|U2|U1|cmp_cnt[5]~20\ & VCC))
-- \U1|U2|U1|cmp_cnt[6]~22\ = CARRY((\U1|U2|U1|cmp_cnt\(6) & !\U1|U2|U1|cmp_cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U1|cmp_cnt\(6),
	datad => VCC,
	cin => \U1|U2|U1|cmp_cnt[5]~20\,
	combout => \U1|U2|U1|cmp_cnt[6]~21_combout\,
	cout => \U1|U2|U1|cmp_cnt[6]~22\);

-- Location: FF_X6_Y29_N19
\U1|U2|U1|cmp_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[6]~21_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(6));

-- Location: LCCOMB_X6_Y29_N20
\U1|U2|U1|cmp_cnt[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|cmp_cnt[7]~23_combout\ = \U1|U2|U1|cmp_cnt[6]~22\ $ (\U1|U2|U1|cmp_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U1|cmp_cnt\(7),
	cin => \U1|U2|U1|cmp_cnt[6]~22\,
	combout => \U1|U2|U1|cmp_cnt[7]~23_combout\);

-- Location: FF_X6_Y29_N21
\U1|U2|U1|cmp_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|cmp_cnt[7]~23_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U1|cmp_cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|cmp_cnt\(7));

-- Location: LCCOMB_X6_Y29_N26
\U1|U2|U1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Equal1~1_combout\ = (((!\U1|U2|U1|cmp_cnt\(5)) # (!\U1|U2|U1|cmp_cnt\(4))) # (!\U1|U2|U1|cmp_cnt\(6))) # (!\U1|U2|U1|cmp_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|cmp_cnt\(7),
	datab => \U1|U2|U1|cmp_cnt\(6),
	datac => \U1|U2|U1|cmp_cnt\(4),
	datad => \U1|U2|U1|cmp_cnt\(5),
	combout => \U1|U2|U1|Equal1~1_combout\);

-- Location: LCCOMB_X6_Y29_N24
\U1|U2|U1|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Selector3~0_combout\ = (!\U1|U2|U1|Equal1~1_combout\ & (\U1|U2|U1|pstate.COMPARE~q\ & (!\U1|U2|U1|pn_cmp~q\ & !\U1|U2|U1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|Equal1~1_combout\,
	datab => \U1|U2|U1|pstate.COMPARE~q\,
	datac => \U1|U2|U1|pn_cmp~q\,
	datad => \U1|U2|U1|Equal1~0_combout\,
	combout => \U1|U2|U1|Selector3~0_combout\);

-- Location: LCCOMB_X8_Y29_N0
\U1|U2|U1|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|Selector3~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U1|Selector3~0_combout\) # ((!\U1|U3|Equal1~10_combout\ & \U1|U2|U1|pstate.PATTERN_LOCK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|o_pn_det~combout\,
	datab => \U1|U3|Equal1~10_combout\,
	datac => \U1|U2|U1|pstate.PATTERN_LOCK~q\,
	datad => \U1|U2|U1|Selector3~0_combout\,
	combout => \U1|U2|U1|Selector3~1_combout\);

-- Location: FF_X8_Y29_N1
\U1|U2|U1|pstate.PATTERN_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|Selector3~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|pstate.PATTERN_LOCK~q\);

-- Location: LCCOMB_X10_Y28_N0
\U1|U2|U3|cmp_cnt[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[0]~33_combout\ = \U1|U2|U3|cmp_cnt\(0) $ (VCC)
-- \U1|U2|U3|cmp_cnt[0]~34\ = CARRY(\U1|U2|U3|cmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(0),
	datad => VCC,
	combout => \U1|U2|U3|cmp_cnt[0]~33_combout\,
	cout => \U1|U2|U3|cmp_cnt[0]~34\);

-- Location: FF_X10_Y28_N1
\U1|U2|U3|cmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[0]~33_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(0));

-- Location: LCCOMB_X10_Y28_N2
\U1|U2|U3|cmp_cnt[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[1]~35_combout\ = (\U1|U2|U3|cmp_cnt\(1) & (!\U1|U2|U3|cmp_cnt[0]~34\)) # (!\U1|U2|U3|cmp_cnt\(1) & ((\U1|U2|U3|cmp_cnt[0]~34\) # (GND)))
-- \U1|U2|U3|cmp_cnt[1]~36\ = CARRY((!\U1|U2|U3|cmp_cnt[0]~34\) # (!\U1|U2|U3|cmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(1),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[0]~34\,
	combout => \U1|U2|U3|cmp_cnt[1]~35_combout\,
	cout => \U1|U2|U3|cmp_cnt[1]~36\);

-- Location: FF_X10_Y28_N3
\U1|U2|U3|cmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[1]~35_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(1));

-- Location: LCCOMB_X10_Y28_N4
\U1|U2|U3|cmp_cnt[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[2]~37_combout\ = (\U1|U2|U3|cmp_cnt\(2) & (\U1|U2|U3|cmp_cnt[1]~36\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(2) & (!\U1|U2|U3|cmp_cnt[1]~36\ & VCC))
-- \U1|U2|U3|cmp_cnt[2]~38\ = CARRY((\U1|U2|U3|cmp_cnt\(2) & !\U1|U2|U3|cmp_cnt[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(2),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[1]~36\,
	combout => \U1|U2|U3|cmp_cnt[2]~37_combout\,
	cout => \U1|U2|U3|cmp_cnt[2]~38\);

-- Location: FF_X10_Y28_N5
\U1|U2|U3|cmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[2]~37_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(2));

-- Location: LCCOMB_X10_Y28_N6
\U1|U2|U3|cmp_cnt[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[3]~39_combout\ = (\U1|U2|U3|cmp_cnt\(3) & (!\U1|U2|U3|cmp_cnt[2]~38\)) # (!\U1|U2|U3|cmp_cnt\(3) & ((\U1|U2|U3|cmp_cnt[2]~38\) # (GND)))
-- \U1|U2|U3|cmp_cnt[3]~40\ = CARRY((!\U1|U2|U3|cmp_cnt[2]~38\) # (!\U1|U2|U3|cmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(3),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[2]~38\,
	combout => \U1|U2|U3|cmp_cnt[3]~39_combout\,
	cout => \U1|U2|U3|cmp_cnt[3]~40\);

-- Location: FF_X10_Y28_N7
\U1|U2|U3|cmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[3]~39_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(3));

-- Location: LCCOMB_X10_Y28_N8
\U1|U2|U3|cmp_cnt[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[4]~41_combout\ = (\U1|U2|U3|cmp_cnt\(4) & (\U1|U2|U3|cmp_cnt[3]~40\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(4) & (!\U1|U2|U3|cmp_cnt[3]~40\ & VCC))
-- \U1|U2|U3|cmp_cnt[4]~42\ = CARRY((\U1|U2|U3|cmp_cnt\(4) & !\U1|U2|U3|cmp_cnt[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(4),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[3]~40\,
	combout => \U1|U2|U3|cmp_cnt[4]~41_combout\,
	cout => \U1|U2|U3|cmp_cnt[4]~42\);

-- Location: FF_X10_Y28_N9
\U1|U2|U3|cmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[4]~41_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(4));

-- Location: LCCOMB_X10_Y28_N10
\U1|U2|U3|cmp_cnt[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[5]~43_combout\ = (\U1|U2|U3|cmp_cnt\(5) & (!\U1|U2|U3|cmp_cnt[4]~42\)) # (!\U1|U2|U3|cmp_cnt\(5) & ((\U1|U2|U3|cmp_cnt[4]~42\) # (GND)))
-- \U1|U2|U3|cmp_cnt[5]~44\ = CARRY((!\U1|U2|U3|cmp_cnt[4]~42\) # (!\U1|U2|U3|cmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(5),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[4]~42\,
	combout => \U1|U2|U3|cmp_cnt[5]~43_combout\,
	cout => \U1|U2|U3|cmp_cnt[5]~44\);

-- Location: FF_X10_Y28_N11
\U1|U2|U3|cmp_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[5]~43_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(5));

-- Location: LCCOMB_X10_Y28_N12
\U1|U2|U3|cmp_cnt[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[6]~45_combout\ = (\U1|U2|U3|cmp_cnt\(6) & (\U1|U2|U3|cmp_cnt[5]~44\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(6) & (!\U1|U2|U3|cmp_cnt[5]~44\ & VCC))
-- \U1|U2|U3|cmp_cnt[6]~46\ = CARRY((\U1|U2|U3|cmp_cnt\(6) & !\U1|U2|U3|cmp_cnt[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(6),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[5]~44\,
	combout => \U1|U2|U3|cmp_cnt[6]~45_combout\,
	cout => \U1|U2|U3|cmp_cnt[6]~46\);

-- Location: FF_X10_Y28_N13
\U1|U2|U3|cmp_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[6]~45_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(6));

-- Location: LCCOMB_X10_Y28_N14
\U1|U2|U3|cmp_cnt[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[7]~47_combout\ = (\U1|U2|U3|cmp_cnt\(7) & (!\U1|U2|U3|cmp_cnt[6]~46\)) # (!\U1|U2|U3|cmp_cnt\(7) & ((\U1|U2|U3|cmp_cnt[6]~46\) # (GND)))
-- \U1|U2|U3|cmp_cnt[7]~48\ = CARRY((!\U1|U2|U3|cmp_cnt[6]~46\) # (!\U1|U2|U3|cmp_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(7),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[6]~46\,
	combout => \U1|U2|U3|cmp_cnt[7]~47_combout\,
	cout => \U1|U2|U3|cmp_cnt[7]~48\);

-- Location: FF_X10_Y28_N15
\U1|U2|U3|cmp_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[7]~47_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(7));

-- Location: LCCOMB_X10_Y28_N16
\U1|U2|U3|cmp_cnt[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[8]~49_combout\ = (\U1|U2|U3|cmp_cnt\(8) & (\U1|U2|U3|cmp_cnt[7]~48\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(8) & (!\U1|U2|U3|cmp_cnt[7]~48\ & VCC))
-- \U1|U2|U3|cmp_cnt[8]~50\ = CARRY((\U1|U2|U3|cmp_cnt\(8) & !\U1|U2|U3|cmp_cnt[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(8),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[7]~48\,
	combout => \U1|U2|U3|cmp_cnt[8]~49_combout\,
	cout => \U1|U2|U3|cmp_cnt[8]~50\);

-- Location: FF_X10_Y28_N17
\U1|U2|U3|cmp_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[8]~49_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(8));

-- Location: LCCOMB_X10_Y28_N18
\U1|U2|U3|cmp_cnt[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[9]~51_combout\ = (\U1|U2|U3|cmp_cnt\(9) & (!\U1|U2|U3|cmp_cnt[8]~50\)) # (!\U1|U2|U3|cmp_cnt\(9) & ((\U1|U2|U3|cmp_cnt[8]~50\) # (GND)))
-- \U1|U2|U3|cmp_cnt[9]~52\ = CARRY((!\U1|U2|U3|cmp_cnt[8]~50\) # (!\U1|U2|U3|cmp_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(9),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[8]~50\,
	combout => \U1|U2|U3|cmp_cnt[9]~51_combout\,
	cout => \U1|U2|U3|cmp_cnt[9]~52\);

-- Location: FF_X10_Y28_N19
\U1|U2|U3|cmp_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[9]~51_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(9));

-- Location: LCCOMB_X10_Y28_N20
\U1|U2|U3|cmp_cnt[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[10]~53_combout\ = (\U1|U2|U3|cmp_cnt\(10) & (\U1|U2|U3|cmp_cnt[9]~52\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(10) & (!\U1|U2|U3|cmp_cnt[9]~52\ & VCC))
-- \U1|U2|U3|cmp_cnt[10]~54\ = CARRY((\U1|U2|U3|cmp_cnt\(10) & !\U1|U2|U3|cmp_cnt[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(10),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[9]~52\,
	combout => \U1|U2|U3|cmp_cnt[10]~53_combout\,
	cout => \U1|U2|U3|cmp_cnt[10]~54\);

-- Location: FF_X10_Y28_N21
\U1|U2|U3|cmp_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[10]~53_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(10));

-- Location: LCCOMB_X10_Y28_N22
\U1|U2|U3|cmp_cnt[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[11]~55_combout\ = (\U1|U2|U3|cmp_cnt\(11) & (!\U1|U2|U3|cmp_cnt[10]~54\)) # (!\U1|U2|U3|cmp_cnt\(11) & ((\U1|U2|U3|cmp_cnt[10]~54\) # (GND)))
-- \U1|U2|U3|cmp_cnt[11]~56\ = CARRY((!\U1|U2|U3|cmp_cnt[10]~54\) # (!\U1|U2|U3|cmp_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(11),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[10]~54\,
	combout => \U1|U2|U3|cmp_cnt[11]~55_combout\,
	cout => \U1|U2|U3|cmp_cnt[11]~56\);

-- Location: FF_X10_Y28_N23
\U1|U2|U3|cmp_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[11]~55_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(11));

-- Location: LCCOMB_X10_Y28_N24
\U1|U2|U3|cmp_cnt[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[12]~57_combout\ = (\U1|U2|U3|cmp_cnt\(12) & (\U1|U2|U3|cmp_cnt[11]~56\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(12) & (!\U1|U2|U3|cmp_cnt[11]~56\ & VCC))
-- \U1|U2|U3|cmp_cnt[12]~58\ = CARRY((\U1|U2|U3|cmp_cnt\(12) & !\U1|U2|U3|cmp_cnt[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(12),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[11]~56\,
	combout => \U1|U2|U3|cmp_cnt[12]~57_combout\,
	cout => \U1|U2|U3|cmp_cnt[12]~58\);

-- Location: FF_X10_Y28_N25
\U1|U2|U3|cmp_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[12]~57_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(12));

-- Location: LCCOMB_X10_Y28_N26
\U1|U2|U3|cmp_cnt[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[13]~59_combout\ = (\U1|U2|U3|cmp_cnt\(13) & (!\U1|U2|U3|cmp_cnt[12]~58\)) # (!\U1|U2|U3|cmp_cnt\(13) & ((\U1|U2|U3|cmp_cnt[12]~58\) # (GND)))
-- \U1|U2|U3|cmp_cnt[13]~60\ = CARRY((!\U1|U2|U3|cmp_cnt[12]~58\) # (!\U1|U2|U3|cmp_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(13),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[12]~58\,
	combout => \U1|U2|U3|cmp_cnt[13]~59_combout\,
	cout => \U1|U2|U3|cmp_cnt[13]~60\);

-- Location: FF_X10_Y28_N27
\U1|U2|U3|cmp_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[13]~59_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(13));

-- Location: LCCOMB_X10_Y28_N28
\U1|U2|U3|cmp_cnt[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[14]~61_combout\ = (\U1|U2|U3|cmp_cnt\(14) & (\U1|U2|U3|cmp_cnt[13]~60\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(14) & (!\U1|U2|U3|cmp_cnt[13]~60\ & VCC))
-- \U1|U2|U3|cmp_cnt[14]~62\ = CARRY((\U1|U2|U3|cmp_cnt\(14) & !\U1|U2|U3|cmp_cnt[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(14),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[13]~60\,
	combout => \U1|U2|U3|cmp_cnt[14]~61_combout\,
	cout => \U1|U2|U3|cmp_cnt[14]~62\);

-- Location: FF_X10_Y28_N29
\U1|U2|U3|cmp_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[14]~61_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(14));

-- Location: LCCOMB_X10_Y28_N30
\U1|U2|U3|cmp_cnt[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[15]~63_combout\ = (\U1|U2|U3|cmp_cnt\(15) & (!\U1|U2|U3|cmp_cnt[14]~62\)) # (!\U1|U2|U3|cmp_cnt\(15) & ((\U1|U2|U3|cmp_cnt[14]~62\) # (GND)))
-- \U1|U2|U3|cmp_cnt[15]~64\ = CARRY((!\U1|U2|U3|cmp_cnt[14]~62\) # (!\U1|U2|U3|cmp_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(15),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[14]~62\,
	combout => \U1|U2|U3|cmp_cnt[15]~63_combout\,
	cout => \U1|U2|U3|cmp_cnt[15]~64\);

-- Location: FF_X10_Y28_N31
\U1|U2|U3|cmp_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[15]~63_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(15));

-- Location: LCCOMB_X9_Y28_N22
\U1|U2|U3|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~3_combout\ = (((!\U1|U2|U3|cmp_cnt\(12)) # (!\U1|U2|U3|cmp_cnt\(13))) # (!\U1|U2|U3|cmp_cnt\(14))) # (!\U1|U2|U3|cmp_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(15),
	datab => \U1|U2|U3|cmp_cnt\(14),
	datac => \U1|U2|U3|cmp_cnt\(13),
	datad => \U1|U2|U3|cmp_cnt\(12),
	combout => \U1|U2|U3|Equal1~3_combout\);

-- Location: LCCOMB_X9_Y28_N28
\U1|U2|U3|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~0_combout\ = ((\U1|U2|U3|cmp_cnt\(1)) # ((!\U1|U2|U3|cmp_cnt\(3)) # (!\U1|U2|U3|cmp_cnt\(0)))) # (!\U1|U2|U3|cmp_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(2),
	datab => \U1|U2|U3|cmp_cnt\(1),
	datac => \U1|U2|U3|cmp_cnt\(0),
	datad => \U1|U2|U3|cmp_cnt\(3),
	combout => \U1|U2|U3|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y28_N8
\U1|U2|U3|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~2_combout\ = (((!\U1|U2|U3|cmp_cnt\(8)) # (!\U1|U2|U3|cmp_cnt\(11))) # (!\U1|U2|U3|cmp_cnt\(9))) # (!\U1|U2|U3|cmp_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(10),
	datab => \U1|U2|U3|cmp_cnt\(9),
	datac => \U1|U2|U3|cmp_cnt\(11),
	datad => \U1|U2|U3|cmp_cnt\(8),
	combout => \U1|U2|U3|Equal1~2_combout\);

-- Location: LCCOMB_X9_Y28_N10
\U1|U2|U3|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~1_combout\ = (((!\U1|U2|U3|cmp_cnt\(7)) # (!\U1|U2|U3|cmp_cnt\(5))) # (!\U1|U2|U3|cmp_cnt\(6))) # (!\U1|U2|U3|cmp_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(4),
	datab => \U1|U2|U3|cmp_cnt\(6),
	datac => \U1|U2|U3|cmp_cnt\(5),
	datad => \U1|U2|U3|cmp_cnt\(7),
	combout => \U1|U2|U3|Equal1~1_combout\);

-- Location: LCCOMB_X9_Y28_N20
\U1|U2|U3|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~4_combout\ = (\U1|U2|U3|Equal1~3_combout\) # ((\U1|U2|U3|Equal1~0_combout\) # ((\U1|U2|U3|Equal1~2_combout\) # (\U1|U2|U3|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|Equal1~3_combout\,
	datab => \U1|U2|U3|Equal1~0_combout\,
	datac => \U1|U2|U3|Equal1~2_combout\,
	datad => \U1|U2|U3|Equal1~1_combout\,
	combout => \U1|U2|U3|Equal1~4_combout\);

-- Location: LCCOMB_X10_Y27_N0
\U1|U2|U3|cmp_cnt[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[16]~65_combout\ = (\U1|U2|U3|cmp_cnt\(16) & (\U1|U2|U3|cmp_cnt[15]~64\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(16) & (!\U1|U2|U3|cmp_cnt[15]~64\ & VCC))
-- \U1|U2|U3|cmp_cnt[16]~66\ = CARRY((\U1|U2|U3|cmp_cnt\(16) & !\U1|U2|U3|cmp_cnt[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(16),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[15]~64\,
	combout => \U1|U2|U3|cmp_cnt[16]~65_combout\,
	cout => \U1|U2|U3|cmp_cnt[16]~66\);

-- Location: FF_X10_Y27_N1
\U1|U2|U3|cmp_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[16]~65_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(16));

-- Location: LCCOMB_X10_Y27_N2
\U1|U2|U3|cmp_cnt[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[17]~67_combout\ = (\U1|U2|U3|cmp_cnt\(17) & (!\U1|U2|U3|cmp_cnt[16]~66\)) # (!\U1|U2|U3|cmp_cnt\(17) & ((\U1|U2|U3|cmp_cnt[16]~66\) # (GND)))
-- \U1|U2|U3|cmp_cnt[17]~68\ = CARRY((!\U1|U2|U3|cmp_cnt[16]~66\) # (!\U1|U2|U3|cmp_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(17),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[16]~66\,
	combout => \U1|U2|U3|cmp_cnt[17]~67_combout\,
	cout => \U1|U2|U3|cmp_cnt[17]~68\);

-- Location: FF_X10_Y27_N3
\U1|U2|U3|cmp_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[17]~67_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(17));

-- Location: LCCOMB_X10_Y27_N4
\U1|U2|U3|cmp_cnt[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[18]~69_combout\ = (\U1|U2|U3|cmp_cnt\(18) & (\U1|U2|U3|cmp_cnt[17]~68\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(18) & (!\U1|U2|U3|cmp_cnt[17]~68\ & VCC))
-- \U1|U2|U3|cmp_cnt[18]~70\ = CARRY((\U1|U2|U3|cmp_cnt\(18) & !\U1|U2|U3|cmp_cnt[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(18),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[17]~68\,
	combout => \U1|U2|U3|cmp_cnt[18]~69_combout\,
	cout => \U1|U2|U3|cmp_cnt[18]~70\);

-- Location: FF_X10_Y27_N5
\U1|U2|U3|cmp_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[18]~69_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(18));

-- Location: LCCOMB_X10_Y27_N6
\U1|U2|U3|cmp_cnt[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[19]~71_combout\ = (\U1|U2|U3|cmp_cnt\(19) & (!\U1|U2|U3|cmp_cnt[18]~70\)) # (!\U1|U2|U3|cmp_cnt\(19) & ((\U1|U2|U3|cmp_cnt[18]~70\) # (GND)))
-- \U1|U2|U3|cmp_cnt[19]~72\ = CARRY((!\U1|U2|U3|cmp_cnt[18]~70\) # (!\U1|U2|U3|cmp_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(19),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[18]~70\,
	combout => \U1|U2|U3|cmp_cnt[19]~71_combout\,
	cout => \U1|U2|U3|cmp_cnt[19]~72\);

-- Location: FF_X10_Y27_N7
\U1|U2|U3|cmp_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[19]~71_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(19));

-- Location: LCCOMB_X9_Y28_N6
\U1|U2|U3|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~5_combout\ = (((!\U1|U2|U3|cmp_cnt\(17)) # (!\U1|U2|U3|cmp_cnt\(19))) # (!\U1|U2|U3|cmp_cnt\(16))) # (!\U1|U2|U3|cmp_cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(18),
	datab => \U1|U2|U3|cmp_cnt\(16),
	datac => \U1|U2|U3|cmp_cnt\(19),
	datad => \U1|U2|U3|cmp_cnt\(17),
	combout => \U1|U2|U3|Equal1~5_combout\);

-- Location: LCCOMB_X10_Y27_N8
\U1|U2|U3|cmp_cnt[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[20]~73_combout\ = (\U1|U2|U3|cmp_cnt\(20) & (\U1|U2|U3|cmp_cnt[19]~72\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(20) & (!\U1|U2|U3|cmp_cnt[19]~72\ & VCC))
-- \U1|U2|U3|cmp_cnt[20]~74\ = CARRY((\U1|U2|U3|cmp_cnt\(20) & !\U1|U2|U3|cmp_cnt[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(20),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[19]~72\,
	combout => \U1|U2|U3|cmp_cnt[20]~73_combout\,
	cout => \U1|U2|U3|cmp_cnt[20]~74\);

-- Location: FF_X10_Y27_N9
\U1|U2|U3|cmp_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[20]~73_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(20));

-- Location: LCCOMB_X10_Y27_N10
\U1|U2|U3|cmp_cnt[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[21]~75_combout\ = (\U1|U2|U3|cmp_cnt\(21) & (!\U1|U2|U3|cmp_cnt[20]~74\)) # (!\U1|U2|U3|cmp_cnt\(21) & ((\U1|U2|U3|cmp_cnt[20]~74\) # (GND)))
-- \U1|U2|U3|cmp_cnt[21]~76\ = CARRY((!\U1|U2|U3|cmp_cnt[20]~74\) # (!\U1|U2|U3|cmp_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(21),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[20]~74\,
	combout => \U1|U2|U3|cmp_cnt[21]~75_combout\,
	cout => \U1|U2|U3|cmp_cnt[21]~76\);

-- Location: FF_X10_Y27_N11
\U1|U2|U3|cmp_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[21]~75_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(21));

-- Location: LCCOMB_X10_Y27_N12
\U1|U2|U3|cmp_cnt[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[22]~77_combout\ = (\U1|U2|U3|cmp_cnt\(22) & (\U1|U2|U3|cmp_cnt[21]~76\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(22) & (!\U1|U2|U3|cmp_cnt[21]~76\ & VCC))
-- \U1|U2|U3|cmp_cnt[22]~78\ = CARRY((\U1|U2|U3|cmp_cnt\(22) & !\U1|U2|U3|cmp_cnt[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(22),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[21]~76\,
	combout => \U1|U2|U3|cmp_cnt[22]~77_combout\,
	cout => \U1|U2|U3|cmp_cnt[22]~78\);

-- Location: FF_X10_Y27_N13
\U1|U2|U3|cmp_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[22]~77_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(22));

-- Location: LCCOMB_X10_Y27_N14
\U1|U2|U3|cmp_cnt[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[23]~79_combout\ = (\U1|U2|U3|cmp_cnt\(23) & (!\U1|U2|U3|cmp_cnt[22]~78\)) # (!\U1|U2|U3|cmp_cnt\(23) & ((\U1|U2|U3|cmp_cnt[22]~78\) # (GND)))
-- \U1|U2|U3|cmp_cnt[23]~80\ = CARRY((!\U1|U2|U3|cmp_cnt[22]~78\) # (!\U1|U2|U3|cmp_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(23),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[22]~78\,
	combout => \U1|U2|U3|cmp_cnt[23]~79_combout\,
	cout => \U1|U2|U3|cmp_cnt[23]~80\);

-- Location: FF_X10_Y27_N15
\U1|U2|U3|cmp_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[23]~79_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(23));

-- Location: LCCOMB_X10_Y27_N16
\U1|U2|U3|cmp_cnt[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[24]~81_combout\ = (\U1|U2|U3|cmp_cnt\(24) & (\U1|U2|U3|cmp_cnt[23]~80\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(24) & (!\U1|U2|U3|cmp_cnt[23]~80\ & VCC))
-- \U1|U2|U3|cmp_cnt[24]~82\ = CARRY((\U1|U2|U3|cmp_cnt\(24) & !\U1|U2|U3|cmp_cnt[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(24),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[23]~80\,
	combout => \U1|U2|U3|cmp_cnt[24]~81_combout\,
	cout => \U1|U2|U3|cmp_cnt[24]~82\);

-- Location: FF_X10_Y27_N17
\U1|U2|U3|cmp_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[24]~81_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(24));

-- Location: LCCOMB_X10_Y27_N18
\U1|U2|U3|cmp_cnt[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[25]~83_combout\ = (\U1|U2|U3|cmp_cnt\(25) & (!\U1|U2|U3|cmp_cnt[24]~82\)) # (!\U1|U2|U3|cmp_cnt\(25) & ((\U1|U2|U3|cmp_cnt[24]~82\) # (GND)))
-- \U1|U2|U3|cmp_cnt[25]~84\ = CARRY((!\U1|U2|U3|cmp_cnt[24]~82\) # (!\U1|U2|U3|cmp_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(25),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[24]~82\,
	combout => \U1|U2|U3|cmp_cnt[25]~83_combout\,
	cout => \U1|U2|U3|cmp_cnt[25]~84\);

-- Location: FF_X10_Y27_N19
\U1|U2|U3|cmp_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[25]~83_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(25));

-- Location: LCCOMB_X10_Y27_N20
\U1|U2|U3|cmp_cnt[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[26]~85_combout\ = (\U1|U2|U3|cmp_cnt\(26) & (\U1|U2|U3|cmp_cnt[25]~84\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(26) & (!\U1|U2|U3|cmp_cnt[25]~84\ & VCC))
-- \U1|U2|U3|cmp_cnt[26]~86\ = CARRY((\U1|U2|U3|cmp_cnt\(26) & !\U1|U2|U3|cmp_cnt[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(26),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[25]~84\,
	combout => \U1|U2|U3|cmp_cnt[26]~85_combout\,
	cout => \U1|U2|U3|cmp_cnt[26]~86\);

-- Location: FF_X10_Y27_N21
\U1|U2|U3|cmp_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[26]~85_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(26));

-- Location: LCCOMB_X10_Y27_N22
\U1|U2|U3|cmp_cnt[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[27]~87_combout\ = (\U1|U2|U3|cmp_cnt\(27) & (!\U1|U2|U3|cmp_cnt[26]~86\)) # (!\U1|U2|U3|cmp_cnt\(27) & ((\U1|U2|U3|cmp_cnt[26]~86\) # (GND)))
-- \U1|U2|U3|cmp_cnt[27]~88\ = CARRY((!\U1|U2|U3|cmp_cnt[26]~86\) # (!\U1|U2|U3|cmp_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(27),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[26]~86\,
	combout => \U1|U2|U3|cmp_cnt[27]~87_combout\,
	cout => \U1|U2|U3|cmp_cnt[27]~88\);

-- Location: FF_X10_Y27_N23
\U1|U2|U3|cmp_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[27]~87_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(27));

-- Location: LCCOMB_X10_Y27_N24
\U1|U2|U3|cmp_cnt[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[28]~89_combout\ = (\U1|U2|U3|cmp_cnt\(28) & (\U1|U2|U3|cmp_cnt[27]~88\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(28) & (!\U1|U2|U3|cmp_cnt[27]~88\ & VCC))
-- \U1|U2|U3|cmp_cnt[28]~90\ = CARRY((\U1|U2|U3|cmp_cnt\(28) & !\U1|U2|U3|cmp_cnt[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(28),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[27]~88\,
	combout => \U1|U2|U3|cmp_cnt[28]~89_combout\,
	cout => \U1|U2|U3|cmp_cnt[28]~90\);

-- Location: FF_X10_Y27_N25
\U1|U2|U3|cmp_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[28]~89_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(28));

-- Location: LCCOMB_X10_Y27_N26
\U1|U2|U3|cmp_cnt[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[29]~91_combout\ = (\U1|U2|U3|cmp_cnt\(29) & (!\U1|U2|U3|cmp_cnt[28]~90\)) # (!\U1|U2|U3|cmp_cnt\(29) & ((\U1|U2|U3|cmp_cnt[28]~90\) # (GND)))
-- \U1|U2|U3|cmp_cnt[29]~92\ = CARRY((!\U1|U2|U3|cmp_cnt[28]~90\) # (!\U1|U2|U3|cmp_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(29),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[28]~90\,
	combout => \U1|U2|U3|cmp_cnt[29]~91_combout\,
	cout => \U1|U2|U3|cmp_cnt[29]~92\);

-- Location: FF_X10_Y27_N27
\U1|U2|U3|cmp_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[29]~91_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(29));

-- Location: LCCOMB_X10_Y27_N28
\U1|U2|U3|cmp_cnt[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[30]~93_combout\ = (\U1|U2|U3|cmp_cnt\(30) & (\U1|U2|U3|cmp_cnt[29]~92\ $ (GND))) # (!\U1|U2|U3|cmp_cnt\(30) & (!\U1|U2|U3|cmp_cnt[29]~92\ & VCC))
-- \U1|U2|U3|cmp_cnt[30]~94\ = CARRY((\U1|U2|U3|cmp_cnt\(30) & !\U1|U2|U3|cmp_cnt[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|cmp_cnt\(30),
	datad => VCC,
	cin => \U1|U2|U3|cmp_cnt[29]~92\,
	combout => \U1|U2|U3|cmp_cnt[30]~93_combout\,
	cout => \U1|U2|U3|cmp_cnt[30]~94\);

-- Location: FF_X10_Y27_N29
\U1|U2|U3|cmp_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[30]~93_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(30));

-- Location: LCCOMB_X10_Y27_N30
\U1|U2|U3|cmp_cnt[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[31]~95_combout\ = \U1|U2|U3|cmp_cnt\(31) $ (\U1|U2|U3|cmp_cnt[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(31),
	cin => \U1|U2|U3|cmp_cnt[30]~94\,
	combout => \U1|U2|U3|cmp_cnt[31]~95_combout\);

-- Location: FF_X10_Y27_N31
\U1|U2|U3|cmp_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|cmp_cnt[31]~95_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|cmp_cnt\(31));

-- Location: LCCOMB_X9_Y27_N0
\U1|U2|U3|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~8_combout\ = (((!\U1|U2|U3|cmp_cnt\(29)) # (!\U1|U2|U3|cmp_cnt\(31))) # (!\U1|U2|U3|cmp_cnt\(30))) # (!\U1|U2|U3|cmp_cnt\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(28),
	datab => \U1|U2|U3|cmp_cnt\(30),
	datac => \U1|U2|U3|cmp_cnt\(31),
	datad => \U1|U2|U3|cmp_cnt\(29),
	combout => \U1|U2|U3|Equal1~8_combout\);

-- Location: LCCOMB_X9_Y27_N26
\U1|U2|U3|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~7_combout\ = (((!\U1|U2|U3|cmp_cnt\(24)) # (!\U1|U2|U3|cmp_cnt\(27))) # (!\U1|U2|U3|cmp_cnt\(25))) # (!\U1|U2|U3|cmp_cnt\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(26),
	datab => \U1|U2|U3|cmp_cnt\(25),
	datac => \U1|U2|U3|cmp_cnt\(27),
	datad => \U1|U2|U3|cmp_cnt\(24),
	combout => \U1|U2|U3|Equal1~7_combout\);

-- Location: LCCOMB_X9_Y27_N12
\U1|U2|U3|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~6_combout\ = (((!\U1|U2|U3|cmp_cnt\(22)) # (!\U1|U2|U3|cmp_cnt\(21))) # (!\U1|U2|U3|cmp_cnt\(20))) # (!\U1|U2|U3|cmp_cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|cmp_cnt\(23),
	datab => \U1|U2|U3|cmp_cnt\(20),
	datac => \U1|U2|U3|cmp_cnt\(21),
	datad => \U1|U2|U3|cmp_cnt\(22),
	combout => \U1|U2|U3|Equal1~6_combout\);

-- Location: LCCOMB_X9_Y28_N24
\U1|U2|U3|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal1~9_combout\ = (\U1|U2|U3|Equal1~5_combout\) # ((\U1|U2|U3|Equal1~8_combout\) # ((\U1|U2|U3|Equal1~7_combout\) # (\U1|U2|U3|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|Equal1~5_combout\,
	datab => \U1|U2|U3|Equal1~8_combout\,
	datac => \U1|U2|U3|Equal1~7_combout\,
	datad => \U1|U2|U3|Equal1~6_combout\,
	combout => \U1|U2|U3|Equal1~9_combout\);

-- Location: LCCOMB_X9_Y28_N4
\U1|U2|U3|cmp_cnt[21]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|cmp_cnt[21]~32_combout\ = ((!\U1|U2|U3|Equal1~4_combout\ & !\U1|U2|U3|Equal1~9_combout\)) # (!\U1|U2|U3|pstate.COMPARE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|Equal1~4_combout\,
	datac => \U1|U2|U3|pstate.COMPARE~q\,
	datad => \U1|U2|U3|Equal1~9_combout\,
	combout => \U1|U2|U3|cmp_cnt[21]~32_combout\);

-- Location: LCCOMB_X7_Y28_N8
\U1|U2|U3|seed_cnt[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|seed_cnt[0]~6_combout\ = \U1|U2|U3|seed_cnt\(0) $ (VCC)
-- \U1|U2|U3|seed_cnt[0]~7\ = CARRY(\U1|U2|U3|seed_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|seed_cnt\(0),
	datad => VCC,
	combout => \U1|U2|U3|seed_cnt[0]~6_combout\,
	cout => \U1|U2|U3|seed_cnt[0]~7\);

-- Location: LCCOMB_X7_Y28_N4
\U1|U2|U3|nstate.LOSS_OF_LOCK~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|nstate.LOSS_OF_LOCK~2_combout\ = (\U1|U2|U3|pstate.PATTERN_LOCK~q\ & (\i_en_from_gen_to_det~input_o\ & (!\i_fixed_pn_pattern_sel~input_o\ & \U1|U3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|pstate.PATTERN_LOCK~q\,
	datab => \i_en_from_gen_to_det~input_o\,
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \U1|U3|Equal1~10_combout\,
	combout => \U1|U2|U3|nstate.LOSS_OF_LOCK~2_combout\);

-- Location: FF_X7_Y28_N5
\U1|U2|U3|pstate.LOSS_OF_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|nstate.LOSS_OF_LOCK~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pstate.LOSS_OF_LOCK~q\);

-- Location: LCCOMB_X7_Y28_N26
\U1|U2|U3|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Selector0~0_combout\ = (!\i_fixed_pn_pattern_sel~input_o\ & (\i_en_from_gen_to_det~input_o\ & !\U1|U2|U3|pstate.LOSS_OF_LOCK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pn_pattern_sel~input_o\,
	datab => \i_en_from_gen_to_det~input_o\,
	datac => \U1|U2|U3|pstate.LOSS_OF_LOCK~q\,
	combout => \U1|U2|U3|Selector0~0_combout\);

-- Location: FF_X7_Y28_N27
\U1|U2|U3|pstate.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|Selector0~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pstate.IDLE~q\);

-- Location: LCCOMB_X7_Y28_N24
\U1|U2|U3|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Selector1~2_combout\ = ((\U1|U2|U3|pstate.COMPARE~q\ & \U1|U2|U3|pn_cmp~q\)) # (!\U1|U2|U3|pstate.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|pstate.IDLE~q\,
	datab => \U1|U2|U3|pstate.COMPARE~q\,
	datac => \U1|U2|U3|pn_cmp~q\,
	combout => \U1|U2|U3|Selector1~2_combout\);

-- Location: LCCOMB_X7_Y28_N22
\U1|U2|U3|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Selector1~3_combout\ = (!\i_fixed_pn_pattern_sel~input_o\ & (\i_en_from_gen_to_det~input_o\ & ((\U1|U2|U3|Selector1~2_combout\) # (!\U1|U2|U3|seed_cnt[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pn_pattern_sel~input_o\,
	datab => \U1|U2|U3|seed_cnt[1]~5_combout\,
	datac => \i_en_from_gen_to_det~input_o\,
	datad => \U1|U2|U3|Selector1~2_combout\,
	combout => \U1|U2|U3|Selector1~3_combout\);

-- Location: FF_X7_Y28_N23
\U1|U2|U3|pstate.GENERATE_SEED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|Selector1~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pstate.GENERATE_SEED~q\);

-- Location: LCCOMB_X7_Y28_N28
\U1|U2|U3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Equal0~0_combout\ = ((\U1|U2|U3|seed_cnt\(0)) # ((!\U1|U2|U3|seed_cnt\(1)) # (!\U1|U2|U3|seed_cnt\(3)))) # (!\U1|U2|U3|seed_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|seed_cnt\(2),
	datab => \U1|U2|U3|seed_cnt\(0),
	datac => \U1|U2|U3|seed_cnt\(3),
	datad => \U1|U2|U3|seed_cnt\(1),
	combout => \U1|U2|U3|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y28_N0
\U1|U2|U3|seed_cnt[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|seed_cnt[1]~5_combout\ = ((\U1|U2|U3|seed_cnt\(4) & !\U1|U2|U3|Equal0~0_combout\)) # (!\U1|U2|U3|pstate.GENERATE_SEED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|seed_cnt\(4),
	datac => \U1|U2|U3|pstate.GENERATE_SEED~q\,
	datad => \U1|U2|U3|Equal0~0_combout\,
	combout => \U1|U2|U3|seed_cnt[1]~5_combout\);

-- Location: FF_X7_Y28_N9
\U1|U2|U3|seed_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|seed_cnt[0]~6_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|seed_cnt[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|seed_cnt\(0));

-- Location: LCCOMB_X7_Y28_N10
\U1|U2|U3|seed_cnt[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|seed_cnt[1]~8_combout\ = (\U1|U2|U3|seed_cnt\(1) & (!\U1|U2|U3|seed_cnt[0]~7\)) # (!\U1|U2|U3|seed_cnt\(1) & ((\U1|U2|U3|seed_cnt[0]~7\) # (GND)))
-- \U1|U2|U3|seed_cnt[1]~9\ = CARRY((!\U1|U2|U3|seed_cnt[0]~7\) # (!\U1|U2|U3|seed_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|seed_cnt\(1),
	datad => VCC,
	cin => \U1|U2|U3|seed_cnt[0]~7\,
	combout => \U1|U2|U3|seed_cnt[1]~8_combout\,
	cout => \U1|U2|U3|seed_cnt[1]~9\);

-- Location: FF_X7_Y28_N11
\U1|U2|U3|seed_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|seed_cnt[1]~8_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|seed_cnt[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|seed_cnt\(1));

-- Location: LCCOMB_X7_Y28_N12
\U1|U2|U3|seed_cnt[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|seed_cnt[2]~10_combout\ = (\U1|U2|U3|seed_cnt\(2) & (\U1|U2|U3|seed_cnt[1]~9\ $ (GND))) # (!\U1|U2|U3|seed_cnt\(2) & (!\U1|U2|U3|seed_cnt[1]~9\ & VCC))
-- \U1|U2|U3|seed_cnt[2]~11\ = CARRY((\U1|U2|U3|seed_cnt\(2) & !\U1|U2|U3|seed_cnt[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|seed_cnt\(2),
	datad => VCC,
	cin => \U1|U2|U3|seed_cnt[1]~9\,
	combout => \U1|U2|U3|seed_cnt[2]~10_combout\,
	cout => \U1|U2|U3|seed_cnt[2]~11\);

-- Location: FF_X7_Y28_N13
\U1|U2|U3|seed_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|seed_cnt[2]~10_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|seed_cnt[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|seed_cnt\(2));

-- Location: LCCOMB_X7_Y28_N14
\U1|U2|U3|seed_cnt[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|seed_cnt[3]~12_combout\ = (\U1|U2|U3|seed_cnt\(3) & (!\U1|U2|U3|seed_cnt[2]~11\)) # (!\U1|U2|U3|seed_cnt\(3) & ((\U1|U2|U3|seed_cnt[2]~11\) # (GND)))
-- \U1|U2|U3|seed_cnt[3]~13\ = CARRY((!\U1|U2|U3|seed_cnt[2]~11\) # (!\U1|U2|U3|seed_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|seed_cnt\(3),
	datad => VCC,
	cin => \U1|U2|U3|seed_cnt[2]~11\,
	combout => \U1|U2|U3|seed_cnt[3]~12_combout\,
	cout => \U1|U2|U3|seed_cnt[3]~13\);

-- Location: FF_X7_Y28_N15
\U1|U2|U3|seed_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|seed_cnt[3]~12_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|seed_cnt[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|seed_cnt\(3));

-- Location: LCCOMB_X7_Y28_N16
\U1|U2|U3|seed_cnt[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|seed_cnt[4]~14_combout\ = \U1|U2|U3|seed_cnt[3]~13\ $ (!\U1|U2|U3|seed_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|seed_cnt\(4),
	cin => \U1|U2|U3|seed_cnt[3]~13\,
	combout => \U1|U2|U3|seed_cnt[4]~14_combout\);

-- Location: FF_X7_Y28_N17
\U1|U2|U3|seed_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|seed_cnt[4]~14_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U3|seed_cnt[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|seed_cnt\(4));

-- Location: LCCOMB_X7_Y28_N18
\U1|U2|U3|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Selector2~0_combout\ = (\U1|U2|U3|seed_cnt\(4) & (\U1|U2|U3|pstate.GENERATE_SEED~q\ & !\U1|U2|U3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U3|seed_cnt\(4),
	datac => \U1|U2|U3|pstate.GENERATE_SEED~q\,
	datad => \U1|U2|U3|Equal0~0_combout\,
	combout => \U1|U2|U3|Selector2~0_combout\);

-- Location: LCCOMB_X7_Y28_N20
\U1|U2|U3|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Selector2~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U3|Selector2~0_combout\) # ((!\U1|U2|U3|cmp_cnt[21]~32_combout\ & !\U1|U2|U3|pn_cmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|o_pn_det~combout\,
	datab => \U1|U2|U3|cmp_cnt[21]~32_combout\,
	datac => \U1|U2|U3|pn_cmp~q\,
	datad => \U1|U2|U3|Selector2~0_combout\,
	combout => \U1|U2|U3|Selector2~1_combout\);

-- Location: FF_X7_Y28_N21
\U1|U2|U3|pstate.COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|Selector2~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pstate.COMPARE~q\);

-- Location: LCCOMB_X8_Y28_N26
\U1|U2|U3|pn_data[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[28]~feeder_combout\ = \U1|U2|U3|pn_data\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(27),
	combout => \U1|U2|U3|pn_data[28]~feeder_combout\);

-- Location: LCCOMB_X8_Y28_N6
\U1|U2|U3|pn_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data~0_combout\ = (\U1|U2|U3|pstate.PATTERN_LOCK~q\) # ((\U1|U2|U3|pstate.GENERATE_SEED~q\) # (\U1|U2|U3|pstate.COMPARE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|pstate.PATTERN_LOCK~q\,
	datab => \U1|U2|U3|pstate.GENERATE_SEED~q\,
	datad => \U1|U2|U3|pstate.COMPARE~q\,
	combout => \U1|U2|U3|pn_data~0_combout\);

-- Location: FF_X8_Y28_N27
\U1|U2|U3|pn_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[28]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(28));

-- Location: LCCOMB_X8_Y28_N20
\U1|U2|U3|pn_data[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[29]~feeder_combout\ = \U1|U2|U3|pn_data\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(28),
	combout => \U1|U2|U3|pn_data[29]~feeder_combout\);

-- Location: FF_X8_Y28_N21
\U1|U2|U3|pn_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[29]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(29));

-- Location: LCCOMB_X8_Y28_N0
\U1|U2|U3|pn_data[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[30]~feeder_combout\ = \U1|U2|U3|pn_data\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(29),
	combout => \U1|U2|U3|pn_data[30]~feeder_combout\);

-- Location: FF_X8_Y28_N1
\U1|U2|U3|pn_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[30]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(30));

-- Location: LCCOMB_X8_Y28_N8
\U1|U2|U3|pn_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data~2_combout\ = (\U1|U2|U3|pstate.PATTERN_LOCK~q\ & ((\U1|U2|U3|pn_data\(27) $ (\U1|U2|U3|pn_data\(30))))) # (!\U1|U2|U3|pstate.PATTERN_LOCK~q\ & (\U1|U2|U3|pstate.COMPARE~q\ & (\U1|U2|U3|pn_data\(27) $ (\U1|U2|U3|pn_data\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|pstate.PATTERN_LOCK~q\,
	datab => \U1|U2|U3|pstate.COMPARE~q\,
	datac => \U1|U2|U3|pn_data\(27),
	datad => \U1|U2|U3|pn_data\(30),
	combout => \U1|U2|U3|pn_data~2_combout\);

-- Location: LCCOMB_X8_Y28_N10
\U1|U2|U3|pn_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data~1_combout\ = (!\U1|U2|U3|pstate.PATTERN_LOCK~q\ & (!\U1|U2|U3|pstate.COMPARE~q\ & \U1|U2|U3|pn_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|pstate.PATTERN_LOCK~q\,
	datab => \U1|U2|U3|pstate.COMPARE~q\,
	datac => \U1|U2|U3|pn_data\(0),
	combout => \U1|U2|U3|pn_data~1_combout\);

-- Location: LCCOMB_X8_Y28_N22
\U1|U2|U3|pn_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data~3_combout\ = (\U1|U2|U3|pstate.GENERATE_SEED~q\ & (\U1|U0|o_pn_det~combout\)) # (!\U1|U2|U3|pstate.GENERATE_SEED~q\ & (((\U1|U2|U3|pn_data~2_combout\) # (\U1|U2|U3|pn_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|o_pn_det~combout\,
	datab => \U1|U2|U3|pstate.GENERATE_SEED~q\,
	datac => \U1|U2|U3|pn_data~2_combout\,
	datad => \U1|U2|U3|pn_data~1_combout\,
	combout => \U1|U2|U3|pn_data~3_combout\);

-- Location: FF_X8_Y28_N23
\U1|U2|U3|pn_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(0));

-- Location: FF_X8_Y28_N11
\U1|U2|U3|pn_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U3|pn_data\(0),
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(1));

-- Location: FF_X8_Y28_N7
\U1|U2|U3|pn_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U3|pn_data\(1),
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(2));

-- Location: LCCOMB_X11_Y28_N28
\U1|U2|U3|pn_data[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[3]~feeder_combout\ = \U1|U2|U3|pn_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(2),
	combout => \U1|U2|U3|pn_data[3]~feeder_combout\);

-- Location: FF_X11_Y28_N29
\U1|U2|U3|pn_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[3]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(3));

-- Location: LCCOMB_X11_Y28_N10
\U1|U2|U3|pn_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[4]~feeder_combout\ = \U1|U2|U3|pn_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(3),
	combout => \U1|U2|U3|pn_data[4]~feeder_combout\);

-- Location: FF_X11_Y28_N11
\U1|U2|U3|pn_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[4]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(4));

-- Location: LCCOMB_X11_Y28_N24
\U1|U2|U3|pn_data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[5]~feeder_combout\ = \U1|U2|U3|pn_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(4),
	combout => \U1|U2|U3|pn_data[5]~feeder_combout\);

-- Location: FF_X11_Y28_N25
\U1|U2|U3|pn_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[5]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(5));

-- Location: LCCOMB_X11_Y28_N2
\U1|U2|U3|pn_data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[6]~feeder_combout\ = \U1|U2|U3|pn_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(5),
	combout => \U1|U2|U3|pn_data[6]~feeder_combout\);

-- Location: FF_X11_Y28_N3
\U1|U2|U3|pn_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[6]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(6));

-- Location: LCCOMB_X11_Y28_N0
\U1|U2|U3|pn_data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[7]~feeder_combout\ = \U1|U2|U3|pn_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(6),
	combout => \U1|U2|U3|pn_data[7]~feeder_combout\);

-- Location: FF_X11_Y28_N1
\U1|U2|U3|pn_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[7]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(7));

-- Location: LCCOMB_X11_Y28_N6
\U1|U2|U3|pn_data[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[8]~feeder_combout\ = \U1|U2|U3|pn_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(7),
	combout => \U1|U2|U3|pn_data[8]~feeder_combout\);

-- Location: FF_X11_Y28_N7
\U1|U2|U3|pn_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[8]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(8));

-- Location: LCCOMB_X11_Y28_N12
\U1|U2|U3|pn_data[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[9]~feeder_combout\ = \U1|U2|U3|pn_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(8),
	combout => \U1|U2|U3|pn_data[9]~feeder_combout\);

-- Location: FF_X11_Y28_N13
\U1|U2|U3|pn_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[9]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(9));

-- Location: LCCOMB_X11_Y28_N26
\U1|U2|U3|pn_data[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[10]~feeder_combout\ = \U1|U2|U3|pn_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(9),
	combout => \U1|U2|U3|pn_data[10]~feeder_combout\);

-- Location: FF_X11_Y28_N27
\U1|U2|U3|pn_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[10]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(10));

-- Location: LCCOMB_X11_Y28_N16
\U1|U2|U3|pn_data[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[11]~feeder_combout\ = \U1|U2|U3|pn_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(10),
	combout => \U1|U2|U3|pn_data[11]~feeder_combout\);

-- Location: FF_X11_Y28_N17
\U1|U2|U3|pn_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[11]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(11));

-- Location: LCCOMB_X11_Y28_N14
\U1|U2|U3|pn_data[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[12]~feeder_combout\ = \U1|U2|U3|pn_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(11),
	combout => \U1|U2|U3|pn_data[12]~feeder_combout\);

-- Location: FF_X11_Y28_N15
\U1|U2|U3|pn_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[12]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(12));

-- Location: LCCOMB_X11_Y28_N4
\U1|U2|U3|pn_data[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[13]~feeder_combout\ = \U1|U2|U3|pn_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(12),
	combout => \U1|U2|U3|pn_data[13]~feeder_combout\);

-- Location: FF_X11_Y28_N5
\U1|U2|U3|pn_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[13]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(13));

-- Location: LCCOMB_X11_Y28_N22
\U1|U2|U3|pn_data[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[14]~feeder_combout\ = \U1|U2|U3|pn_data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(13),
	combout => \U1|U2|U3|pn_data[14]~feeder_combout\);

-- Location: FF_X11_Y28_N23
\U1|U2|U3|pn_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[14]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(14));

-- Location: LCCOMB_X11_Y28_N8
\U1|U2|U3|pn_data[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[15]~feeder_combout\ = \U1|U2|U3|pn_data\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(14),
	combout => \U1|U2|U3|pn_data[15]~feeder_combout\);

-- Location: FF_X11_Y28_N9
\U1|U2|U3|pn_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[15]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(15));

-- Location: LCCOMB_X11_Y28_N18
\U1|U2|U3|pn_data[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[16]~feeder_combout\ = \U1|U2|U3|pn_data\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(15),
	combout => \U1|U2|U3|pn_data[16]~feeder_combout\);

-- Location: FF_X11_Y28_N19
\U1|U2|U3|pn_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[16]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(16));

-- Location: LCCOMB_X11_Y28_N20
\U1|U2|U3|pn_data[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[17]~feeder_combout\ = \U1|U2|U3|pn_data\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(16),
	combout => \U1|U2|U3|pn_data[17]~feeder_combout\);

-- Location: FF_X11_Y28_N21
\U1|U2|U3|pn_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[17]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(17));

-- Location: LCCOMB_X9_Y28_N12
\U1|U2|U3|pn_data[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[18]~feeder_combout\ = \U1|U2|U3|pn_data\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(17),
	combout => \U1|U2|U3|pn_data[18]~feeder_combout\);

-- Location: FF_X9_Y28_N13
\U1|U2|U3|pn_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[18]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(18));

-- Location: LCCOMB_X9_Y28_N26
\U1|U2|U3|pn_data[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[19]~feeder_combout\ = \U1|U2|U3|pn_data\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(18),
	combout => \U1|U2|U3|pn_data[19]~feeder_combout\);

-- Location: FF_X9_Y28_N27
\U1|U2|U3|pn_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[19]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(19));

-- Location: LCCOMB_X8_Y28_N28
\U1|U2|U3|pn_data[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[20]~feeder_combout\ = \U1|U2|U3|pn_data\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(19),
	combout => \U1|U2|U3|pn_data[20]~feeder_combout\);

-- Location: FF_X8_Y28_N29
\U1|U2|U3|pn_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[20]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(20));

-- Location: LCCOMB_X8_Y28_N4
\U1|U2|U3|pn_data[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[21]~feeder_combout\ = \U1|U2|U3|pn_data\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(20),
	combout => \U1|U2|U3|pn_data[21]~feeder_combout\);

-- Location: FF_X8_Y28_N5
\U1|U2|U3|pn_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[21]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(21));

-- Location: LCCOMB_X8_Y28_N2
\U1|U2|U3|pn_data[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[22]~feeder_combout\ = \U1|U2|U3|pn_data\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(21),
	combout => \U1|U2|U3|pn_data[22]~feeder_combout\);

-- Location: FF_X8_Y28_N3
\U1|U2|U3|pn_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[22]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(22));

-- Location: LCCOMB_X8_Y28_N12
\U1|U2|U3|pn_data[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[23]~feeder_combout\ = \U1|U2|U3|pn_data\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(22),
	combout => \U1|U2|U3|pn_data[23]~feeder_combout\);

-- Location: FF_X8_Y28_N13
\U1|U2|U3|pn_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[23]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(23));

-- Location: LCCOMB_X8_Y28_N24
\U1|U2|U3|pn_data[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[24]~feeder_combout\ = \U1|U2|U3|pn_data\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(23),
	combout => \U1|U2|U3|pn_data[24]~feeder_combout\);

-- Location: FF_X8_Y28_N25
\U1|U2|U3|pn_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[24]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(24));

-- Location: LCCOMB_X8_Y28_N18
\U1|U2|U3|pn_data[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[25]~feeder_combout\ = \U1|U2|U3|pn_data\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(24),
	combout => \U1|U2|U3|pn_data[25]~feeder_combout\);

-- Location: FF_X8_Y28_N19
\U1|U2|U3|pn_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[25]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(25));

-- Location: LCCOMB_X8_Y28_N30
\U1|U2|U3|pn_data[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[26]~feeder_combout\ = \U1|U2|U3|pn_data\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U3|pn_data\(25),
	combout => \U1|U2|U3|pn_data[26]~feeder_combout\);

-- Location: FF_X8_Y28_N31
\U1|U2|U3|pn_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[26]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(26));

-- Location: LCCOMB_X8_Y28_N14
\U1|U2|U3|pn_data[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_data[27]~feeder_combout\ = \U1|U2|U3|pn_data\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|pn_data\(26),
	combout => \U1|U2|U3|pn_data[27]~feeder_combout\);

-- Location: FF_X8_Y28_N15
\U1|U2|U3|pn_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_data[27]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U3|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_data\(27));

-- Location: LCCOMB_X8_Y28_N16
\U1|U2|U3|pn_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|pn_cmp~0_combout\ = (\U1|U2|U3|pstate.COMPARE~q\ & (\U1|U0|o_pn_det~combout\ $ (\U1|U2|U3|pn_data\(27) $ (\U1|U2|U3|pn_data\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|o_pn_det~combout\,
	datab => \U1|U2|U3|pstate.COMPARE~q\,
	datac => \U1|U2|U3|pn_data\(27),
	datad => \U1|U2|U3|pn_data\(30),
	combout => \U1|U2|U3|pn_cmp~0_combout\);

-- Location: FF_X8_Y28_N17
\U1|U2|U3|pn_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|pn_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pn_cmp~q\);

-- Location: LCCOMB_X9_Y28_N2
\U1|U2|U3|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Selector3~0_combout\ = (!\U1|U2|U3|pn_cmp~q\ & (!\U1|U2|U3|Equal1~4_combout\ & (\U1|U2|U3|pstate.COMPARE~q\ & !\U1|U2|U3|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U3|pn_cmp~q\,
	datab => \U1|U2|U3|Equal1~4_combout\,
	datac => \U1|U2|U3|pstate.COMPARE~q\,
	datad => \U1|U2|U3|Equal1~9_combout\,
	combout => \U1|U2|U3|Selector3~0_combout\);

-- Location: LCCOMB_X8_Y29_N22
\U1|U2|U3|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|Selector3~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U3|Selector3~0_combout\) # ((\U1|U2|U3|pstate.PATTERN_LOCK~q\ & !\U1|U3|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|o_pn_det~combout\,
	datab => \U1|U2|U3|pstate.PATTERN_LOCK~q\,
	datac => \U1|U3|Equal1~10_combout\,
	datad => \U1|U2|U3|Selector3~0_combout\,
	combout => \U1|U2|U3|Selector3~1_combout\);

-- Location: FF_X8_Y29_N9
\U1|U2|U3|pstate.PATTERN_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U3|Selector3~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|pstate.PATTERN_LOCK~q\);

-- Location: LCCOMB_X6_Y28_N18
\U1|U2|U2|nstate.LOSS_OF_LOCK~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|nstate.LOSS_OF_LOCK~2_combout\ = (\i_en_from_gen_to_det~input_o\ & (!\i_fixed_pn_pattern_sel~input_o\ & (\U1|U2|U2|pstate.PATTERN_LOCK~q\ & \U1|U3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_en_from_gen_to_det~input_o\,
	datab => \i_fixed_pn_pattern_sel~input_o\,
	datac => \U1|U2|U2|pstate.PATTERN_LOCK~q\,
	datad => \U1|U3|Equal1~10_combout\,
	combout => \U1|U2|U2|nstate.LOSS_OF_LOCK~2_combout\);

-- Location: FF_X6_Y28_N19
\U1|U2|U2|pstate.LOSS_OF_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|nstate.LOSS_OF_LOCK~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pstate.LOSS_OF_LOCK~q\);

-- Location: LCCOMB_X6_Y28_N0
\U1|U2|U2|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Selector0~0_combout\ = (\i_en_from_gen_to_det~input_o\ & (!\i_fixed_pn_pattern_sel~input_o\ & !\U1|U2|U2|pstate.LOSS_OF_LOCK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_en_from_gen_to_det~input_o\,
	datab => \i_fixed_pn_pattern_sel~input_o\,
	datad => \U1|U2|U2|pstate.LOSS_OF_LOCK~q\,
	combout => \U1|U2|U2|Selector0~0_combout\);

-- Location: FF_X6_Y28_N1
\U1|U2|U2|pstate.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|Selector0~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pstate.IDLE~q\);

-- Location: LCCOMB_X4_Y29_N28
\U1|U2|U2|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Selector1~0_combout\ = ((\U1|U2|U2|pn_cmp~q\ & \U1|U2|U2|pstate.COMPARE~q\)) # (!\U1|U2|U2|pstate.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|pn_cmp~q\,
	datab => \U1|U2|U2|pstate.COMPARE~q\,
	datad => \U1|U2|U2|pstate.IDLE~q\,
	combout => \U1|U2|U2|Selector1~0_combout\);

-- Location: LCCOMB_X4_Y29_N26
\U1|U2|U2|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Selector1~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U2|Selector1~0_combout\) # ((\U1|U2|U2|Equal0~0_combout\ & \U1|U2|U2|pstate.GENERATE_SEED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|o_pn_det~combout\,
	datab => \U1|U2|U2|Equal0~0_combout\,
	datac => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	datad => \U1|U2|U2|Selector1~0_combout\,
	combout => \U1|U2|U2|Selector1~1_combout\);

-- Location: FF_X4_Y29_N27
\U1|U2|U2|pstate.GENERATE_SEED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|Selector1~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pstate.GENERATE_SEED~q\);

-- Location: LCCOMB_X4_Y28_N28
\U1|U2|U2|seed_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|seed_cnt~0_combout\ = (\U1|U2|U2|pstate.GENERATE_SEED~q\ & (!\U1|U2|U2|seed_cnt\(0) & \U1|U2|U2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	datac => \U1|U2|U2|seed_cnt\(0),
	datad => \U1|U2|U2|Equal0~0_combout\,
	combout => \U1|U2|U2|seed_cnt~0_combout\);

-- Location: FF_X4_Y28_N29
\U1|U2|U2|seed_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|seed_cnt~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|seed_cnt\(0));

-- Location: LCCOMB_X4_Y28_N10
\U1|U2|U2|seed_cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|seed_cnt~3_combout\ = (\U1|U2|U2|Equal0~0_combout\ & (\U1|U2|U2|pstate.GENERATE_SEED~q\ & (\U1|U2|U2|seed_cnt\(0) $ (\U1|U2|U2|seed_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|Equal0~0_combout\,
	datab => \U1|U2|U2|seed_cnt\(0),
	datac => \U1|U2|U2|seed_cnt\(1),
	datad => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U2|seed_cnt~3_combout\);

-- Location: FF_X4_Y28_N11
\U1|U2|U2|seed_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|seed_cnt~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|seed_cnt\(1));

-- Location: LCCOMB_X4_Y28_N12
\U1|U2|U2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Add0~1_combout\ = \U1|U2|U2|seed_cnt\(2) $ (((\U1|U2|U2|seed_cnt\(1) & \U1|U2|U2|seed_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|seed_cnt\(1),
	datac => \U1|U2|U2|seed_cnt\(2),
	datad => \U1|U2|U2|seed_cnt\(0),
	combout => \U1|U2|U2|Add0~1_combout\);

-- Location: LCCOMB_X4_Y28_N4
\U1|U2|U2|seed_cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|seed_cnt~2_combout\ = (\U1|U2|U2|Add0~1_combout\ & (\U1|U2|U2|pstate.GENERATE_SEED~q\ & \U1|U2|U2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|Add0~1_combout\,
	datab => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	datad => \U1|U2|U2|Equal0~0_combout\,
	combout => \U1|U2|U2|seed_cnt~2_combout\);

-- Location: FF_X4_Y28_N5
\U1|U2|U2|seed_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|seed_cnt~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|seed_cnt\(2));

-- Location: LCCOMB_X4_Y28_N6
\U1|U2|U2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Add0~0_combout\ = \U1|U2|U2|seed_cnt\(3) $ (((\U1|U2|U2|seed_cnt\(1) & (\U1|U2|U2|seed_cnt\(2) & \U1|U2|U2|seed_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|seed_cnt\(1),
	datab => \U1|U2|U2|seed_cnt\(3),
	datac => \U1|U2|U2|seed_cnt\(2),
	datad => \U1|U2|U2|seed_cnt\(0),
	combout => \U1|U2|U2|Add0~0_combout\);

-- Location: LCCOMB_X4_Y28_N18
\U1|U2|U2|seed_cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|seed_cnt~1_combout\ = (\U1|U2|U2|Add0~0_combout\ & (\U1|U2|U2|pstate.GENERATE_SEED~q\ & \U1|U2|U2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|Add0~0_combout\,
	datab => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	datad => \U1|U2|U2|Equal0~0_combout\,
	combout => \U1|U2|U2|seed_cnt~1_combout\);

-- Location: FF_X4_Y28_N19
\U1|U2|U2|seed_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|seed_cnt~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|seed_cnt\(3));

-- Location: LCCOMB_X4_Y28_N0
\U1|U2|U2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Equal0~0_combout\ = (((\U1|U2|U2|seed_cnt\(0)) # (!\U1|U2|U2|seed_cnt\(2))) # (!\U1|U2|U2|seed_cnt\(3))) # (!\U1|U2|U2|seed_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|seed_cnt\(1),
	datab => \U1|U2|U2|seed_cnt\(3),
	datac => \U1|U2|U2|seed_cnt\(2),
	datad => \U1|U2|U2|seed_cnt\(0),
	combout => \U1|U2|U2|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y29_N0
\U1|U2|U2|cmp_cnt[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[0]~17_combout\ = \U1|U2|U2|cmp_cnt\(0) $ (VCC)
-- \U1|U2|U2|cmp_cnt[0]~18\ = CARRY(\U1|U2|U2|cmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(0),
	datad => VCC,
	combout => \U1|U2|U2|cmp_cnt[0]~17_combout\,
	cout => \U1|U2|U2|cmp_cnt[0]~18\);

-- Location: FF_X3_Y29_N1
\U1|U2|U2|cmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[0]~17_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(0));

-- Location: LCCOMB_X3_Y29_N2
\U1|U2|U2|cmp_cnt[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[1]~19_combout\ = (\U1|U2|U2|cmp_cnt\(1) & (!\U1|U2|U2|cmp_cnt[0]~18\)) # (!\U1|U2|U2|cmp_cnt\(1) & ((\U1|U2|U2|cmp_cnt[0]~18\) # (GND)))
-- \U1|U2|U2|cmp_cnt[1]~20\ = CARRY((!\U1|U2|U2|cmp_cnt[0]~18\) # (!\U1|U2|U2|cmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(1),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[0]~18\,
	combout => \U1|U2|U2|cmp_cnt[1]~19_combout\,
	cout => \U1|U2|U2|cmp_cnt[1]~20\);

-- Location: FF_X3_Y29_N3
\U1|U2|U2|cmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[1]~19_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(1));

-- Location: LCCOMB_X3_Y29_N4
\U1|U2|U2|cmp_cnt[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[2]~21_combout\ = (\U1|U2|U2|cmp_cnt\(2) & (\U1|U2|U2|cmp_cnt[1]~20\ $ (GND))) # (!\U1|U2|U2|cmp_cnt\(2) & (!\U1|U2|U2|cmp_cnt[1]~20\ & VCC))
-- \U1|U2|U2|cmp_cnt[2]~22\ = CARRY((\U1|U2|U2|cmp_cnt\(2) & !\U1|U2|U2|cmp_cnt[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(2),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[1]~20\,
	combout => \U1|U2|U2|cmp_cnt[2]~21_combout\,
	cout => \U1|U2|U2|cmp_cnt[2]~22\);

-- Location: FF_X3_Y29_N5
\U1|U2|U2|cmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[2]~21_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(2));

-- Location: LCCOMB_X3_Y29_N6
\U1|U2|U2|cmp_cnt[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[3]~23_combout\ = (\U1|U2|U2|cmp_cnt\(3) & (!\U1|U2|U2|cmp_cnt[2]~22\)) # (!\U1|U2|U2|cmp_cnt\(3) & ((\U1|U2|U2|cmp_cnt[2]~22\) # (GND)))
-- \U1|U2|U2|cmp_cnt[3]~24\ = CARRY((!\U1|U2|U2|cmp_cnt[2]~22\) # (!\U1|U2|U2|cmp_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(3),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[2]~22\,
	combout => \U1|U2|U2|cmp_cnt[3]~23_combout\,
	cout => \U1|U2|U2|cmp_cnt[3]~24\);

-- Location: FF_X3_Y29_N7
\U1|U2|U2|cmp_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[3]~23_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(3));

-- Location: LCCOMB_X3_Y29_N8
\U1|U2|U2|cmp_cnt[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[4]~25_combout\ = (\U1|U2|U2|cmp_cnt\(4) & (\U1|U2|U2|cmp_cnt[3]~24\ $ (GND))) # (!\U1|U2|U2|cmp_cnt\(4) & (!\U1|U2|U2|cmp_cnt[3]~24\ & VCC))
-- \U1|U2|U2|cmp_cnt[4]~26\ = CARRY((\U1|U2|U2|cmp_cnt\(4) & !\U1|U2|U2|cmp_cnt[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(4),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[3]~24\,
	combout => \U1|U2|U2|cmp_cnt[4]~25_combout\,
	cout => \U1|U2|U2|cmp_cnt[4]~26\);

-- Location: FF_X3_Y29_N9
\U1|U2|U2|cmp_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[4]~25_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(4));

-- Location: LCCOMB_X3_Y29_N10
\U1|U2|U2|cmp_cnt[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[5]~27_combout\ = (\U1|U2|U2|cmp_cnt\(5) & (!\U1|U2|U2|cmp_cnt[4]~26\)) # (!\U1|U2|U2|cmp_cnt\(5) & ((\U1|U2|U2|cmp_cnt[4]~26\) # (GND)))
-- \U1|U2|U2|cmp_cnt[5]~28\ = CARRY((!\U1|U2|U2|cmp_cnt[4]~26\) # (!\U1|U2|U2|cmp_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(5),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[4]~26\,
	combout => \U1|U2|U2|cmp_cnt[5]~27_combout\,
	cout => \U1|U2|U2|cmp_cnt[5]~28\);

-- Location: FF_X3_Y29_N11
\U1|U2|U2|cmp_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[5]~27_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(5));

-- Location: LCCOMB_X3_Y29_N12
\U1|U2|U2|cmp_cnt[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[6]~29_combout\ = (\U1|U2|U2|cmp_cnt\(6) & (\U1|U2|U2|cmp_cnt[5]~28\ $ (GND))) # (!\U1|U2|U2|cmp_cnt\(6) & (!\U1|U2|U2|cmp_cnt[5]~28\ & VCC))
-- \U1|U2|U2|cmp_cnt[6]~30\ = CARRY((\U1|U2|U2|cmp_cnt\(6) & !\U1|U2|U2|cmp_cnt[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(6),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[5]~28\,
	combout => \U1|U2|U2|cmp_cnt[6]~29_combout\,
	cout => \U1|U2|U2|cmp_cnt[6]~30\);

-- Location: FF_X3_Y29_N13
\U1|U2|U2|cmp_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[6]~29_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(6));

-- Location: LCCOMB_X3_Y29_N14
\U1|U2|U2|cmp_cnt[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[7]~31_combout\ = (\U1|U2|U2|cmp_cnt\(7) & (!\U1|U2|U2|cmp_cnt[6]~30\)) # (!\U1|U2|U2|cmp_cnt\(7) & ((\U1|U2|U2|cmp_cnt[6]~30\) # (GND)))
-- \U1|U2|U2|cmp_cnt[7]~32\ = CARRY((!\U1|U2|U2|cmp_cnt[6]~30\) # (!\U1|U2|U2|cmp_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(7),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[6]~30\,
	combout => \U1|U2|U2|cmp_cnt[7]~31_combout\,
	cout => \U1|U2|U2|cmp_cnt[7]~32\);

-- Location: FF_X3_Y29_N15
\U1|U2|U2|cmp_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[7]~31_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(7));

-- Location: LCCOMB_X2_Y29_N24
\U1|U2|U2|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Equal1~1_combout\ = (((!\U1|U2|U2|cmp_cnt\(4)) # (!\U1|U2|U2|cmp_cnt\(7))) # (!\U1|U2|U2|cmp_cnt\(6))) # (!\U1|U2|U2|cmp_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(5),
	datab => \U1|U2|U2|cmp_cnt\(6),
	datac => \U1|U2|U2|cmp_cnt\(7),
	datad => \U1|U2|U2|cmp_cnt\(4),
	combout => \U1|U2|U2|Equal1~1_combout\);

-- Location: LCCOMB_X3_Y29_N16
\U1|U2|U2|cmp_cnt[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[8]~33_combout\ = (\U1|U2|U2|cmp_cnt\(8) & (\U1|U2|U2|cmp_cnt[7]~32\ $ (GND))) # (!\U1|U2|U2|cmp_cnt\(8) & (!\U1|U2|U2|cmp_cnt[7]~32\ & VCC))
-- \U1|U2|U2|cmp_cnt[8]~34\ = CARRY((\U1|U2|U2|cmp_cnt\(8) & !\U1|U2|U2|cmp_cnt[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(8),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[7]~32\,
	combout => \U1|U2|U2|cmp_cnt[8]~33_combout\,
	cout => \U1|U2|U2|cmp_cnt[8]~34\);

-- Location: FF_X3_Y29_N17
\U1|U2|U2|cmp_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[8]~33_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(8));

-- Location: LCCOMB_X3_Y29_N18
\U1|U2|U2|cmp_cnt[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[9]~35_combout\ = (\U1|U2|U2|cmp_cnt\(9) & (!\U1|U2|U2|cmp_cnt[8]~34\)) # (!\U1|U2|U2|cmp_cnt\(9) & ((\U1|U2|U2|cmp_cnt[8]~34\) # (GND)))
-- \U1|U2|U2|cmp_cnt[9]~36\ = CARRY((!\U1|U2|U2|cmp_cnt[8]~34\) # (!\U1|U2|U2|cmp_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(9),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[8]~34\,
	combout => \U1|U2|U2|cmp_cnt[9]~35_combout\,
	cout => \U1|U2|U2|cmp_cnt[9]~36\);

-- Location: FF_X3_Y29_N19
\U1|U2|U2|cmp_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[9]~35_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(9));

-- Location: LCCOMB_X3_Y29_N20
\U1|U2|U2|cmp_cnt[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[10]~37_combout\ = (\U1|U2|U2|cmp_cnt\(10) & (\U1|U2|U2|cmp_cnt[9]~36\ $ (GND))) # (!\U1|U2|U2|cmp_cnt\(10) & (!\U1|U2|U2|cmp_cnt[9]~36\ & VCC))
-- \U1|U2|U2|cmp_cnt[10]~38\ = CARRY((\U1|U2|U2|cmp_cnt\(10) & !\U1|U2|U2|cmp_cnt[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(10),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[9]~36\,
	combout => \U1|U2|U2|cmp_cnt[10]~37_combout\,
	cout => \U1|U2|U2|cmp_cnt[10]~38\);

-- Location: FF_X3_Y29_N21
\U1|U2|U2|cmp_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[10]~37_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(10));

-- Location: LCCOMB_X3_Y29_N22
\U1|U2|U2|cmp_cnt[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[11]~39_combout\ = (\U1|U2|U2|cmp_cnt\(11) & (!\U1|U2|U2|cmp_cnt[10]~38\)) # (!\U1|U2|U2|cmp_cnt\(11) & ((\U1|U2|U2|cmp_cnt[10]~38\) # (GND)))
-- \U1|U2|U2|cmp_cnt[11]~40\ = CARRY((!\U1|U2|U2|cmp_cnt[10]~38\) # (!\U1|U2|U2|cmp_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(11),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[10]~38\,
	combout => \U1|U2|U2|cmp_cnt[11]~39_combout\,
	cout => \U1|U2|U2|cmp_cnt[11]~40\);

-- Location: FF_X3_Y29_N23
\U1|U2|U2|cmp_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[11]~39_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(11));

-- Location: LCCOMB_X4_Y29_N4
\U1|U2|U2|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Equal1~2_combout\ = (((!\U1|U2|U2|cmp_cnt\(10)) # (!\U1|U2|U2|cmp_cnt\(8))) # (!\U1|U2|U2|cmp_cnt\(9))) # (!\U1|U2|U2|cmp_cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(11),
	datab => \U1|U2|U2|cmp_cnt\(9),
	datac => \U1|U2|U2|cmp_cnt\(8),
	datad => \U1|U2|U2|cmp_cnt\(10),
	combout => \U1|U2|U2|Equal1~2_combout\);

-- Location: LCCOMB_X4_Y29_N22
\U1|U2|U2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Equal1~0_combout\ = (((\U1|U2|U2|cmp_cnt\(1)) # (!\U1|U2|U2|cmp_cnt\(2))) # (!\U1|U2|U2|cmp_cnt\(3))) # (!\U1|U2|U2|cmp_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(0),
	datab => \U1|U2|U2|cmp_cnt\(3),
	datac => \U1|U2|U2|cmp_cnt\(2),
	datad => \U1|U2|U2|cmp_cnt\(1),
	combout => \U1|U2|U2|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y29_N24
\U1|U2|U2|cmp_cnt[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[12]~41_combout\ = (\U1|U2|U2|cmp_cnt\(12) & (\U1|U2|U2|cmp_cnt[11]~40\ $ (GND))) # (!\U1|U2|U2|cmp_cnt\(12) & (!\U1|U2|U2|cmp_cnt[11]~40\ & VCC))
-- \U1|U2|U2|cmp_cnt[12]~42\ = CARRY((\U1|U2|U2|cmp_cnt\(12) & !\U1|U2|U2|cmp_cnt[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(12),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[11]~40\,
	combout => \U1|U2|U2|cmp_cnt[12]~41_combout\,
	cout => \U1|U2|U2|cmp_cnt[12]~42\);

-- Location: FF_X3_Y29_N25
\U1|U2|U2|cmp_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[12]~41_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(12));

-- Location: LCCOMB_X3_Y29_N26
\U1|U2|U2|cmp_cnt[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[13]~43_combout\ = (\U1|U2|U2|cmp_cnt\(13) & (!\U1|U2|U2|cmp_cnt[12]~42\)) # (!\U1|U2|U2|cmp_cnt\(13) & ((\U1|U2|U2|cmp_cnt[12]~42\) # (GND)))
-- \U1|U2|U2|cmp_cnt[13]~44\ = CARRY((!\U1|U2|U2|cmp_cnt[12]~42\) # (!\U1|U2|U2|cmp_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(13),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[12]~42\,
	combout => \U1|U2|U2|cmp_cnt[13]~43_combout\,
	cout => \U1|U2|U2|cmp_cnt[13]~44\);

-- Location: FF_X3_Y29_N27
\U1|U2|U2|cmp_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[13]~43_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(13));

-- Location: LCCOMB_X3_Y29_N28
\U1|U2|U2|cmp_cnt[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[14]~45_combout\ = (\U1|U2|U2|cmp_cnt\(14) & (\U1|U2|U2|cmp_cnt[13]~44\ $ (GND))) # (!\U1|U2|U2|cmp_cnt\(14) & (!\U1|U2|U2|cmp_cnt[13]~44\ & VCC))
-- \U1|U2|U2|cmp_cnt[14]~46\ = CARRY((\U1|U2|U2|cmp_cnt\(14) & !\U1|U2|U2|cmp_cnt[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|cmp_cnt\(14),
	datad => VCC,
	cin => \U1|U2|U2|cmp_cnt[13]~44\,
	combout => \U1|U2|U2|cmp_cnt[14]~45_combout\,
	cout => \U1|U2|U2|cmp_cnt[14]~46\);

-- Location: FF_X3_Y29_N29
\U1|U2|U2|cmp_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[14]~45_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(14));

-- Location: LCCOMB_X3_Y29_N30
\U1|U2|U2|cmp_cnt[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[15]~47_combout\ = \U1|U2|U2|cmp_cnt\(15) $ (\U1|U2|U2|cmp_cnt[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(15),
	cin => \U1|U2|U2|cmp_cnt[14]~46\,
	combout => \U1|U2|U2|cmp_cnt[15]~47_combout\);

-- Location: FF_X3_Y29_N31
\U1|U2|U2|cmp_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|cmp_cnt[15]~47_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|cmp_cnt\(15));

-- Location: LCCOMB_X2_Y29_N6
\U1|U2|U2|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Equal1~3_combout\ = (((!\U1|U2|U2|cmp_cnt\(12)) # (!\U1|U2|U2|cmp_cnt\(13))) # (!\U1|U2|U2|cmp_cnt\(14))) # (!\U1|U2|U2|cmp_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|cmp_cnt\(15),
	datab => \U1|U2|U2|cmp_cnt\(14),
	datac => \U1|U2|U2|cmp_cnt\(13),
	datad => \U1|U2|U2|cmp_cnt\(12),
	combout => \U1|U2|U2|Equal1~3_combout\);

-- Location: LCCOMB_X4_Y29_N20
\U1|U2|U2|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Equal1~4_combout\ = (\U1|U2|U2|Equal1~1_combout\) # ((\U1|U2|U2|Equal1~2_combout\) # ((\U1|U2|U2|Equal1~0_combout\) # (\U1|U2|U2|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|Equal1~1_combout\,
	datab => \U1|U2|U2|Equal1~2_combout\,
	datac => \U1|U2|U2|Equal1~0_combout\,
	datad => \U1|U2|U2|Equal1~3_combout\,
	combout => \U1|U2|U2|Equal1~4_combout\);

-- Location: LCCOMB_X4_Y29_N12
\U1|U2|U2|cmp_cnt[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|cmp_cnt[0]~16_combout\ = (!\U1|U2|U2|Equal1~4_combout\) # (!\U1|U2|U2|pstate.COMPARE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|pstate.COMPARE~q\,
	datad => \U1|U2|U2|Equal1~4_combout\,
	combout => \U1|U2|U2|cmp_cnt[0]~16_combout\);

-- Location: LCCOMB_X4_Y29_N2
\U1|U2|U2|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Selector2~2_combout\ = (\U1|U2|U2|pn_cmp~q\ & (!\U1|U2|U2|Equal0~0_combout\ & (\U1|U2|U2|pstate.GENERATE_SEED~q\))) # (!\U1|U2|U2|pn_cmp~q\ & (((!\U1|U2|U2|Equal0~0_combout\ & \U1|U2|U2|pstate.GENERATE_SEED~q\)) # 
-- (!\U1|U2|U2|cmp_cnt[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|pn_cmp~q\,
	datab => \U1|U2|U2|Equal0~0_combout\,
	datac => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	datad => \U1|U2|U2|cmp_cnt[0]~16_combout\,
	combout => \U1|U2|U2|Selector2~2_combout\);

-- Location: LCCOMB_X4_Y29_N16
\U1|U2|U2|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Selector2~3_combout\ = (\i_en_from_gen_to_det~input_o\ & (!\i_fixed_pn_pattern_sel~input_o\ & \U1|U2|U2|Selector2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_en_from_gen_to_det~input_o\,
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \U1|U2|U2|Selector2~2_combout\,
	combout => \U1|U2|U2|Selector2~3_combout\);

-- Location: FF_X4_Y29_N17
\U1|U2|U2|pstate.COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|Selector2~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pstate.COMPARE~q\);

-- Location: LCCOMB_X4_Y29_N0
\U1|U2|U2|pn_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data~0_combout\ = (\U1|U2|U2|pstate.GENERATE_SEED~q\) # ((\U1|U2|U2|pstate.PATTERN_LOCK~q\) # (\U1|U2|U2|pstate.COMPARE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	datac => \U1|U2|U2|pstate.PATTERN_LOCK~q\,
	datad => \U1|U2|U2|pstate.COMPARE~q\,
	combout => \U1|U2|U2|pn_data~0_combout\);

-- Location: FF_X4_Y29_N19
\U1|U2|U2|pn_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U2|pn_data\(13),
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(14));

-- Location: LCCOMB_X4_Y29_N8
\U1|U2|U2|pn_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data~2_combout\ = (\U1|U2|U2|pstate.PATTERN_LOCK~q\ & (\U1|U2|U2|pn_data\(14) $ ((\U1|U2|U2|pn_data\(13))))) # (!\U1|U2|U2|pstate.PATTERN_LOCK~q\ & (\U1|U2|U2|pstate.COMPARE~q\ & (\U1|U2|U2|pn_data\(14) $ (\U1|U2|U2|pn_data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|pn_data\(14),
	datab => \U1|U2|U2|pstate.PATTERN_LOCK~q\,
	datac => \U1|U2|U2|pn_data\(13),
	datad => \U1|U2|U2|pstate.COMPARE~q\,
	combout => \U1|U2|U2|pn_data~2_combout\);

-- Location: LCCOMB_X4_Y29_N24
\U1|U2|U2|pn_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data~1_combout\ = (!\U1|U2|U2|pstate.PATTERN_LOCK~q\ & (\U1|U2|U2|pn_data\(0) & !\U1|U2|U2|pstate.COMPARE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U2|pstate.PATTERN_LOCK~q\,
	datac => \U1|U2|U2|pn_data\(0),
	datad => \U1|U2|U2|pstate.COMPARE~q\,
	combout => \U1|U2|U2|pn_data~1_combout\);

-- Location: LCCOMB_X4_Y29_N14
\U1|U2|U2|pn_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data~3_combout\ = (\U1|U2|U2|pstate.GENERATE_SEED~q\ & (((\U1|U0|o_pn_det~combout\)))) # (!\U1|U2|U2|pstate.GENERATE_SEED~q\ & ((\U1|U2|U2|pn_data~2_combout\) # ((\U1|U2|U2|pn_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|pstate.GENERATE_SEED~q\,
	datab => \U1|U2|U2|pn_data~2_combout\,
	datac => \U1|U2|U2|pn_data~1_combout\,
	datad => \U1|U0|o_pn_det~combout\,
	combout => \U1|U2|U2|pn_data~3_combout\);

-- Location: FF_X4_Y29_N15
\U1|U2|U2|pn_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(0));

-- Location: LCCOMB_X1_Y29_N22
\U1|U2|U2|pn_data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[1]~feeder_combout\ = \U1|U2|U2|pn_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(0),
	combout => \U1|U2|U2|pn_data[1]~feeder_combout\);

-- Location: FF_X1_Y29_N23
\U1|U2|U2|pn_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[1]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(1));

-- Location: LCCOMB_X1_Y29_N24
\U1|U2|U2|pn_data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[2]~feeder_combout\ = \U1|U2|U2|pn_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U2|pn_data\(1),
	combout => \U1|U2|U2|pn_data[2]~feeder_combout\);

-- Location: FF_X1_Y29_N25
\U1|U2|U2|pn_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[2]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(2));

-- Location: LCCOMB_X1_Y29_N26
\U1|U2|U2|pn_data[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[3]~feeder_combout\ = \U1|U2|U2|pn_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(2),
	combout => \U1|U2|U2|pn_data[3]~feeder_combout\);

-- Location: FF_X1_Y29_N27
\U1|U2|U2|pn_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[3]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(3));

-- Location: LCCOMB_X1_Y29_N12
\U1|U2|U2|pn_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[4]~feeder_combout\ = \U1|U2|U2|pn_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U2|pn_data\(3),
	combout => \U1|U2|U2|pn_data[4]~feeder_combout\);

-- Location: FF_X1_Y29_N13
\U1|U2|U2|pn_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[4]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(4));

-- Location: LCCOMB_X1_Y29_N18
\U1|U2|U2|pn_data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[5]~feeder_combout\ = \U1|U2|U2|pn_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(4),
	combout => \U1|U2|U2|pn_data[5]~feeder_combout\);

-- Location: FF_X1_Y29_N19
\U1|U2|U2|pn_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[5]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(5));

-- Location: LCCOMB_X1_Y29_N28
\U1|U2|U2|pn_data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[6]~feeder_combout\ = \U1|U2|U2|pn_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(5),
	combout => \U1|U2|U2|pn_data[6]~feeder_combout\);

-- Location: FF_X1_Y29_N29
\U1|U2|U2|pn_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[6]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(6));

-- Location: LCCOMB_X1_Y29_N6
\U1|U2|U2|pn_data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[7]~feeder_combout\ = \U1|U2|U2|pn_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(6),
	combout => \U1|U2|U2|pn_data[7]~feeder_combout\);

-- Location: FF_X1_Y29_N7
\U1|U2|U2|pn_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[7]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(7));

-- Location: LCCOMB_X1_Y29_N16
\U1|U2|U2|pn_data[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[8]~feeder_combout\ = \U1|U2|U2|pn_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(7),
	combout => \U1|U2|U2|pn_data[8]~feeder_combout\);

-- Location: FF_X1_Y29_N17
\U1|U2|U2|pn_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[8]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(8));

-- Location: LCCOMB_X1_Y29_N10
\U1|U2|U2|pn_data[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[9]~feeder_combout\ = \U1|U2|U2|pn_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(8),
	combout => \U1|U2|U2|pn_data[9]~feeder_combout\);

-- Location: FF_X1_Y29_N11
\U1|U2|U2|pn_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[9]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(9));

-- Location: LCCOMB_X1_Y29_N20
\U1|U2|U2|pn_data[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[10]~feeder_combout\ = \U1|U2|U2|pn_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(9),
	combout => \U1|U2|U2|pn_data[10]~feeder_combout\);

-- Location: FF_X1_Y29_N21
\U1|U2|U2|pn_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[10]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(10));

-- Location: LCCOMB_X1_Y29_N2
\U1|U2|U2|pn_data[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[11]~feeder_combout\ = \U1|U2|U2|pn_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(10),
	combout => \U1|U2|U2|pn_data[11]~feeder_combout\);

-- Location: FF_X1_Y29_N3
\U1|U2|U2|pn_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[11]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(11));

-- Location: LCCOMB_X1_Y29_N4
\U1|U2|U2|pn_data[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_data[12]~feeder_combout\ = \U1|U2|U2|pn_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U2|pn_data\(11),
	combout => \U1|U2|U2|pn_data[12]~feeder_combout\);

-- Location: FF_X1_Y29_N5
\U1|U2|U2|pn_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_data[12]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(12));

-- Location: FF_X4_Y29_N9
\U1|U2|U2|pn_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U2|pn_data\(12),
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|U2|U2|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_data\(13));

-- Location: LCCOMB_X4_Y29_N6
\U1|U2|U2|pn_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|pn_cmp~0_combout\ = (\U1|U2|U2|pstate.COMPARE~q\ & (\U1|U0|o_pn_det~combout\ $ (\U1|U2|U2|pn_data\(13) $ (\U1|U2|U2|pn_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|o_pn_det~combout\,
	datab => \U1|U2|U2|pstate.COMPARE~q\,
	datac => \U1|U2|U2|pn_data\(13),
	datad => \U1|U2|U2|pn_data\(14),
	combout => \U1|U2|U2|pn_cmp~0_combout\);

-- Location: FF_X4_Y29_N7
\U1|U2|U2|pn_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|pn_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pn_cmp~q\);

-- Location: LCCOMB_X4_Y29_N18
\U1|U2|U2|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Selector3~0_combout\ = (!\U1|U2|U2|pn_cmp~q\ & (\U1|U2|U2|pstate.COMPARE~q\ & !\U1|U2|U2|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|pn_cmp~q\,
	datab => \U1|U2|U2|pstate.COMPARE~q\,
	datad => \U1|U2|U2|Equal1~4_combout\,
	combout => \U1|U2|U2|Selector3~0_combout\);

-- Location: LCCOMB_X4_Y29_N30
\U1|U2|U2|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Selector3~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U2|Selector3~0_combout\) # ((\U1|U2|U2|pstate.PATTERN_LOCK~q\ & !\U1|U3|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|o_pn_det~combout\,
	datab => \U1|U2|U2|pstate.PATTERN_LOCK~q\,
	datac => \U1|U3|Equal1~10_combout\,
	datad => \U1|U2|U2|Selector3~0_combout\,
	combout => \U1|U2|U2|Selector3~1_combout\);

-- Location: FF_X4_Y29_N1
\U1|U2|U2|pstate.PATTERN_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U2|Selector3~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|pstate.PATTERN_LOCK~q\);

-- Location: LCCOMB_X10_Y25_N0
\U1|U1|data_cnt[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|data_cnt[0]~7_combout\ = \U1|U1|data_cnt\(0) $ (VCC)
-- \U1|U1|data_cnt[0]~8\ = CARRY(\U1|U1|data_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|data_cnt\(0),
	datad => VCC,
	combout => \U1|U1|data_cnt[0]~7_combout\,
	cout => \U1|U1|data_cnt[0]~8\);

-- Location: LCCOMB_X9_Y21_N12
\U1|U1|pattern_shift[21]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[21]~65_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[21]~65_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[21]~65_combout\,
	datac => \i_fixed_pattern[21]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[21]~65_combout\);

-- Location: LCCOMB_X6_Y28_N10
\U1|U4|o_fp_det\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U4|o_fp_det~combout\ = (\i_fixed_pn_pattern_sel~input_o\ & \i_en_from_gen_to_det~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pn_pattern_sel~input_o\,
	datad => \i_en_from_gen_to_det~input_o\,
	combout => \U1|U4|o_fp_det~combout\);

-- Location: FF_X6_Y28_N11
\U1|U1|detector_en_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U4|o_fp_det~combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|detector_en_dly~q\);

-- Location: FF_X9_Y25_N7
\U1|U1|detector_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U1|detector_en_dly~q\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|detector_en~q\);

-- Location: LCCOMB_X9_Y25_N22
\U1|U1|nstate.LOSS_OF_LOCK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|nstate.LOSS_OF_LOCK~0_combout\ = (\U1|U1|o_lock~q\ & (\U1|U1|detector_en~q\ & \U1|U3|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|o_lock~q\,
	datac => \U1|U1|detector_en~q\,
	datad => \U1|U3|Equal1~10_combout\,
	combout => \U1|U1|nstate.LOSS_OF_LOCK~0_combout\);

-- Location: FF_X9_Y25_N23
\U1|U1|pstate.LOSS_OF_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|nstate.LOSS_OF_LOCK~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pstate.LOSS_OF_LOCK~q\);

-- Location: FF_X9_Y25_N11
\U1|U1|pstate.FIND_FIRST_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U1|Selector1~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pstate.FIND_FIRST_BIT~q\);

-- Location: LCCOMB_X8_Y25_N24
\U1|U1|first_bit_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|first_bit_cmp~0_combout\ = (\U1|U1|Selector1~2_combout\ & (\U1|U1|Mux0~20_combout\ $ (((!\i_data_from_gen_to_det~input_o\) # (!\i_fixed_pn_pattern_sel~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Mux0~20_combout\,
	datab => \i_fixed_pn_pattern_sel~input_o\,
	datac => \U1|U1|Selector1~2_combout\,
	datad => \i_data_from_gen_to_det~input_o\,
	combout => \U1|U1|first_bit_cmp~0_combout\);

-- Location: FF_X8_Y25_N25
\U1|U1|first_bit_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|first_bit_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|first_bit_cmp~q\);

-- Location: LCCOMB_X9_Y25_N16
\U1|U1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector2~0_combout\ = (!\U1|U1|data_cnt_tc~q\ & (\U1|U1|pstate.FIND_PATTERN~q\ & \U1|U1|pattern_cmp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|data_cnt_tc~q\,
	datab => \U1|U1|pstate.FIND_PATTERN~q\,
	datad => \U1|U1|pattern_cmp~q\,
	combout => \U1|U1|Selector2~0_combout\);

-- Location: LCCOMB_X9_Y25_N6
\U1|U1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector2~1_combout\ = (\U1|U1|detector_en~q\ & ((\U1|U1|Selector2~0_combout\) # ((\U1|U1|pstate.FIND_FIRST_BIT~q\ & \U1|U1|first_bit_cmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pstate.FIND_FIRST_BIT~q\,
	datab => \U1|U1|first_bit_cmp~q\,
	datac => \U1|U1|detector_en~q\,
	datad => \U1|U1|Selector2~0_combout\,
	combout => \U1|U1|Selector2~1_combout\);

-- Location: FF_X9_Y25_N3
\U1|U1|pstate.FIND_PATTERN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U1|Selector2~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pstate.FIND_PATTERN~q\);

-- Location: LCCOMB_X9_Y25_N2
\U1|U1|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector3~0_combout\ = (\U1|U1|detector_en~q\ & ((\U1|U1|pstate.WAIT_PATTERN_LENGTH~q\) # ((\U1|U1|pstate.FIND_PATTERN~q\ & !\U1|U1|pattern_cmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pstate.WAIT_PATTERN_LENGTH~q\,
	datab => \U1|U1|detector_en~q\,
	datac => \U1|U1|pstate.FIND_PATTERN~q\,
	datad => \U1|U1|pattern_cmp~q\,
	combout => \U1|U1|Selector3~0_combout\);

-- Location: LCCOMB_X9_Y25_N20
\U1|U1|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector3~1_combout\ = (!\U1|U1|data_cnt_tc~q\ & \U1|U1|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|data_cnt_tc~q\,
	datad => \U1|U1|Selector3~0_combout\,
	combout => \U1|U1|Selector3~1_combout\);

-- Location: FF_X9_Y25_N9
\U1|U1|pstate.WAIT_PATTERN_LENGTH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U1|Selector3~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pstate.WAIT_PATTERN_LENGTH~q\);

-- Location: FF_X9_Y25_N29
\U1|U1|pstate.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U1|Selector0~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pstate.IDLE~q\);

-- Location: LCCOMB_X9_Y25_N24
\U1|U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector0~0_combout\ = (\U1|U1|pstate.FIND_FIRST_BIT~q\) # ((\U1|U1|o_lock~q\) # ((\U1|U1|pstate.FIND_PATTERN~q\) # (!\U1|U1|pstate.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pstate.FIND_FIRST_BIT~q\,
	datab => \U1|U1|o_lock~q\,
	datac => \U1|U1|pstate.FIND_PATTERN~q\,
	datad => \U1|U1|pstate.IDLE~q\,
	combout => \U1|U1|Selector0~0_combout\);

-- Location: LCCOMB_X9_Y25_N26
\U1|U1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector0~1_combout\ = (!\U1|U1|pstate.LOSS_OF_LOCK~q\ & ((\U1|U1|detector_en~q\) # ((!\U1|U1|pstate.WAIT_PATTERN_LENGTH~q\ & !\U1|U1|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pstate.LOSS_OF_LOCK~q\,
	datab => \U1|U1|detector_en~q\,
	datac => \U1|U1|pstate.WAIT_PATTERN_LENGTH~q\,
	datad => \U1|U1|Selector0~0_combout\,
	combout => \U1|U1|Selector0~1_combout\);

-- Location: LCCOMB_X9_Y25_N4
\U1|U1|process_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|process_3~0_combout\ = ((\U1|U1|data_cnt_tc~q\ & (\U1|U1|detector_en~q\ & \U1|U1|pstate.WAIT_PATTERN_LENGTH~q\))) # (!\U1|U1|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|data_cnt_tc~q\,
	datab => \U1|U1|detector_en~q\,
	datac => \U1|U1|Selector0~1_combout\,
	datad => \U1|U1|pstate.WAIT_PATTERN_LENGTH~q\,
	combout => \U1|U1|process_3~0_combout\);

-- Location: LCCOMB_X9_Y21_N10
\U1|U1|pattern_shift[20]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[20]~85_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[20]~85_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[20]~85_combout\,
	datab => \i_fixed_pattern[20]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[20]~85_combout\);

-- Location: LCCOMB_X8_Y21_N30
\U1|U1|pattern_shift[19]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[19]~97_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[19]~97_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[19]~input_o\,
	datac => \U1|U1|pattern_shift[19]~97_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[19]~97_combout\);

-- Location: LCCOMB_X8_Y21_N20
\U1|U1|pattern_shift[18]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[18]~121_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[18]~121_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|pattern_shift[18]~121_combout\,
	datac => \i_fixed_pattern[18]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[18]~121_combout\);

-- Location: LCCOMB_X8_Y21_N6
\U1|U1|pattern_shift[17]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[17]~73_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[17]~73_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[17]~73_combout\,
	datac => \i_fixed_pattern[17]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[17]~73_combout\);

-- Location: LCCOMB_X8_Y21_N0
\U1|U1|pattern_shift[16]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[16]~89_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[16]~89_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|pattern_shift[16]~89_combout\,
	datac => \i_fixed_pattern[16]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[16]~89_combout\);

-- Location: LCCOMB_X9_Y22_N30
\U1|U1|pattern_shift[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[14]~61_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[14]~61_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[14]~input_o\,
	datac => \U1|U1|pattern_shift[14]~61_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[14]~61_combout\);

-- Location: LCCOMB_X9_Y22_N0
\U1|U1|pattern_shift[13]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[13]~53_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[13]~53_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[13]~input_o\,
	datab => \U1|U1|pattern_shift[13]~53_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[13]~53_combout\);

-- Location: LCCOMB_X9_Y22_N6
\U1|U1|pattern_shift[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[12]~49_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[12]~49_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[12]~49_combout\,
	datab => \i_fixed_pattern[12]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[12]~49_combout\);

-- Location: LCCOMB_X8_Y22_N10
\U1|U1|pattern_shift[11]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[11]~57_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[11]~57_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[11]~57_combout\,
	datac => \i_fixed_pattern[11]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[11]~57_combout\);

-- Location: LCCOMB_X8_Y22_N16
\U1|U1|pattern_shift[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[10]~13_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[10]~13_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|pattern_shift[10]~13_combout\,
	datac => \i_fixed_pattern[10]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[10]~13_combout\);

-- Location: LCCOMB_X7_Y22_N24
\U1|U1|pattern_shift[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[9]~1_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[9]~1_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[9]~input_o\,
	datab => \U1|U1|pattern_shift[9]~1_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[9]~1_combout\);

-- Location: LCCOMB_X8_Y22_N4
\U1|U1|pattern_shift[8]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[8]~5_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[8]~5_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[8]~input_o\,
	datac => \U1|U1|pattern_shift[8]~5_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[8]~5_combout\);

-- Location: LCCOMB_X8_Y22_N22
\U1|U1|pattern_shift[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[7]~9_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[7]~9_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[7]~input_o\,
	datac => \U1|U1|pattern_shift[7]~9_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[7]~9_combout\);

-- Location: LCCOMB_X9_Y21_N26
\U1|U1|pattern_shift[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[6]~29_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[6]~29_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[6]~input_o\,
	datac => \U1|U1|pattern_shift[6]~29_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[6]~29_combout\);

-- Location: LCCOMB_X6_Y25_N2
\U1|U1|pattern_shift[2]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[2]~45_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[2]~45_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[2]~input_o\,
	datac => \U1|U1|pattern_shift[2]~45_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[2]~45_combout\);

-- Location: LCCOMB_X6_Y25_N6
\U1|U1|pattern_shift[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[1]~33_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[1]~33_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[1]~33_combout\,
	datab => \i_fixed_pattern[1]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[1]~33_combout\);

-- Location: LCCOMB_X6_Y25_N16
\U1|U1|pattern_shift[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[0]~37_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[0]~37_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|pattern_shift[0]~37_combout\,
	datac => \i_fixed_pattern[0]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[0]~37_combout\);

-- Location: LCCOMB_X8_Y25_N6
\U1|U1|pattern_shift[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[0]~39_combout\ = \U1|U1|pattern_shift[0]~37_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[0]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|Mux0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[0]~input_o\,
	datab => \U1|U1|Mux0~20_combout\,
	datac => \U1|U1|pattern_shift[0]~37_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[0]~39_combout\);

-- Location: LCCOMB_X9_Y25_N14
\U1|U1|pattern_shift[2]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[2]~160_combout\ = (\U1|U1|Selector2~1_combout\) # ((\U1|U1|process_3~0_combout\) # (\U1|U1|Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Selector2~1_combout\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|Selector4~1_combout\,
	combout => \U1|U1|pattern_shift[2]~160_combout\);

-- Location: FF_X8_Y25_N7
\U1|U1|pattern_shift[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[0]~39_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[0]~_emulated_q\);

-- Location: LCCOMB_X6_Y25_N12
\U1|U1|pattern_shift[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[0]~38_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[0]~_emulated_q\ $ (\U1|U1|pattern_shift[0]~37_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[0]~input_o\,
	datac => \U1|U1|pattern_shift[0]~_emulated_q\,
	datad => \U1|U1|pattern_shift[0]~37_combout\,
	combout => \U1|U1|pattern_shift[0]~38_combout\);

-- Location: LCCOMB_X6_Y25_N8
\U1|U1|pattern_shift[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[1]~35_combout\ = \U1|U1|pattern_shift[1]~33_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[1]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[1]~33_combout\,
	datab => \U1|U1|pattern_shift[0]~38_combout\,
	datac => \i_fixed_pattern[1]~input_o\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[1]~35_combout\);

-- Location: FF_X6_Y25_N9
\U1|U1|pattern_shift[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[1]~35_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[1]~_emulated_q\);

-- Location: LCCOMB_X6_Y25_N10
\U1|U1|pattern_shift[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[1]~34_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[1]~_emulated_q\ $ (\U1|U1|pattern_shift[1]~33_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[1]~input_o\,
	datac => \U1|U1|pattern_shift[1]~_emulated_q\,
	datad => \U1|U1|pattern_shift[1]~33_combout\,
	combout => \U1|U1|pattern_shift[1]~34_combout\);

-- Location: LCCOMB_X6_Y25_N22
\U1|U1|pattern_shift[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[2]~47_combout\ = \U1|U1|pattern_shift[2]~45_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[2]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[1]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[2]~45_combout\,
	datab => \i_fixed_pattern[2]~input_o\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|pattern_shift[1]~34_combout\,
	combout => \U1|U1|pattern_shift[2]~47_combout\);

-- Location: FF_X6_Y25_N23
\U1|U1|pattern_shift[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[2]~47_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[2]~_emulated_q\);

-- Location: LCCOMB_X6_Y25_N4
\U1|U1|pattern_shift[2]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[2]~46_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[2]~_emulated_q\ $ (\U1|U1|pattern_shift[2]~45_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[2]~input_o\,
	datac => \U1|U1|pattern_shift[2]~_emulated_q\,
	datad => \U1|U1|pattern_shift[2]~45_combout\,
	combout => \U1|U1|pattern_shift[2]~46_combout\);

-- Location: LCCOMB_X6_Y25_N28
\U1|U1|pattern_shift[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[3]~25_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[3]~25_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[3]~input_o\,
	datab => \U1|U1|pattern_shift[3]~25_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[3]~25_combout\);

-- Location: LCCOMB_X6_Y25_N20
\U1|U1|pattern_shift[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[3]~27_combout\ = \U1|U1|pattern_shift[3]~25_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[3]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[2]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[3]~input_o\,
	datab => \U1|U1|process_3~0_combout\,
	datac => \U1|U1|pattern_shift[2]~46_combout\,
	datad => \U1|U1|pattern_shift[3]~25_combout\,
	combout => \U1|U1|pattern_shift[3]~27_combout\);

-- Location: FF_X6_Y25_N21
\U1|U1|pattern_shift[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[3]~27_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[3]~_emulated_q\);

-- Location: LCCOMB_X6_Y25_N26
\U1|U1|pattern_shift[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[3]~26_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[3]~_emulated_q\ $ (\U1|U1|pattern_shift[3]~25_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[3]~input_o\,
	datab => \U1|U1|pattern_shift[3]~_emulated_q\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[3]~25_combout\,
	combout => \U1|U1|pattern_shift[3]~26_combout\);

-- Location: LCCOMB_X6_Y25_N30
\U1|U1|pattern_shift[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[4]~17_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[4]~17_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[4]~input_o\,
	datac => \U1|U1|pattern_shift[4]~17_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[4]~17_combout\);

-- Location: LCCOMB_X6_Y25_N0
\U1|U1|pattern_shift[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[4]~19_combout\ = \U1|U1|pattern_shift[4]~17_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[4]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[3]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[4]~input_o\,
	datab => \U1|U1|process_3~0_combout\,
	datac => \U1|U1|pattern_shift[3]~26_combout\,
	datad => \U1|U1|pattern_shift[4]~17_combout\,
	combout => \U1|U1|pattern_shift[4]~19_combout\);

-- Location: FF_X6_Y25_N1
\U1|U1|pattern_shift[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[4]~19_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[4]~_emulated_q\);

-- Location: LCCOMB_X6_Y25_N18
\U1|U1|pattern_shift[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[4]~18_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[4]~_emulated_q\ $ (((\U1|U1|pattern_shift[4]~17_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \U1|U1|pattern_shift[4]~_emulated_q\,
	datac => \i_fixed_pattern[4]~input_o\,
	datad => \U1|U1|pattern_shift[4]~17_combout\,
	combout => \U1|U1|pattern_shift[4]~18_combout\);

-- Location: LCCOMB_X9_Y21_N24
\U1|U1|pattern_shift[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[5]~21_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[5]~21_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[5]~input_o\,
	datac => \i_rst_l~inputclkctrl_outclk\,
	datad => \U1|U1|pattern_shift[5]~21_combout\,
	combout => \U1|U1|pattern_shift[5]~21_combout\);

-- Location: LCCOMB_X9_Y21_N8
\U1|U1|pattern_shift[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[5]~23_combout\ = \U1|U1|pattern_shift[5]~21_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[5]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[4]~18_combout\,
	datab => \U1|U1|pattern_shift[5]~21_combout\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \i_fixed_pattern[5]~input_o\,
	combout => \U1|U1|pattern_shift[5]~23_combout\);

-- Location: FF_X9_Y21_N9
\U1|U1|pattern_shift[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[5]~23_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[5]~_emulated_q\);

-- Location: LCCOMB_X9_Y21_N18
\U1|U1|pattern_shift[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[5]~22_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[5]~_emulated_q\ $ (\U1|U1|pattern_shift[5]~21_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[5]~input_o\,
	datac => \U1|U1|pattern_shift[5]~_emulated_q\,
	datad => \U1|U1|pattern_shift[5]~21_combout\,
	combout => \U1|U1|pattern_shift[5]~22_combout\);

-- Location: LCCOMB_X9_Y21_N20
\U1|U1|pattern_shift[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[6]~31_combout\ = \U1|U1|pattern_shift[6]~29_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[6]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[5]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|process_3~0_combout\,
	datab => \i_fixed_pattern[6]~input_o\,
	datac => \U1|U1|pattern_shift[6]~29_combout\,
	datad => \U1|U1|pattern_shift[5]~22_combout\,
	combout => \U1|U1|pattern_shift[6]~31_combout\);

-- Location: FF_X9_Y21_N21
\U1|U1|pattern_shift[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[6]~31_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[6]~_emulated_q\);

-- Location: LCCOMB_X9_Y21_N30
\U1|U1|pattern_shift[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[6]~30_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[6]~29_combout\ $ (\U1|U1|pattern_shift[6]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[6]~input_o\,
	datac => \U1|U1|pattern_shift[6]~29_combout\,
	datad => \U1|U1|pattern_shift[6]~_emulated_q\,
	combout => \U1|U1|pattern_shift[6]~30_combout\);

-- Location: LCCOMB_X8_Y22_N0
\U1|U1|pattern_shift[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[7]~11_combout\ = \U1|U1|pattern_shift[7]~9_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[7]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[6]~30_combout\,
	datab => \U1|U1|pattern_shift[7]~9_combout\,
	datac => \i_fixed_pattern[7]~input_o\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[7]~11_combout\);

-- Location: FF_X8_Y22_N1
\U1|U1|pattern_shift[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[7]~11_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[7]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N30
\U1|U1|pattern_shift[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[7]~10_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[7]~9_combout\ $ (((\U1|U1|pattern_shift[7]~_emulated_q\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[7]~9_combout\,
	datab => \i_fixed_pattern[7]~input_o\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[7]~_emulated_q\,
	combout => \U1|U1|pattern_shift[7]~10_combout\);

-- Location: LCCOMB_X8_Y22_N28
\U1|U1|pattern_shift[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[8]~7_combout\ = \U1|U1|pattern_shift[8]~5_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[8]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[7]~10_combout\,
	datab => \U1|U1|pattern_shift[8]~5_combout\,
	datac => \i_fixed_pattern[8]~input_o\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[8]~7_combout\);

-- Location: FF_X8_Y22_N29
\U1|U1|pattern_shift[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[8]~7_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[8]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N6
\U1|U1|pattern_shift[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[8]~6_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[8]~5_combout\ $ (\U1|U1|pattern_shift[8]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[8]~input_o\,
	datac => \U1|U1|pattern_shift[8]~5_combout\,
	datad => \U1|U1|pattern_shift[8]~_emulated_q\,
	combout => \U1|U1|pattern_shift[8]~6_combout\);

-- Location: LCCOMB_X8_Y22_N8
\U1|U1|pattern_shift[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[9]~3_combout\ = \U1|U1|pattern_shift[9]~1_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[9]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[8]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[9]~1_combout\,
	datab => \i_fixed_pattern[9]~input_o\,
	datac => \U1|U1|pattern_shift[8]~6_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[9]~3_combout\);

-- Location: FF_X8_Y22_N9
\U1|U1|pattern_shift[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[9]~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[9]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N26
\U1|U1|pattern_shift[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[9]~2_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[9]~_emulated_q\ $ (\U1|U1|pattern_shift[9]~1_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[9]~input_o\,
	datac => \U1|U1|pattern_shift[9]~_emulated_q\,
	datad => \U1|U1|pattern_shift[9]~1_combout\,
	combout => \U1|U1|pattern_shift[9]~2_combout\);

-- Location: LCCOMB_X8_Y22_N24
\U1|U1|pattern_shift[10]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[10]~15_combout\ = \U1|U1|pattern_shift[10]~13_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[10]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[9]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|process_3~0_combout\,
	datab => \U1|U1|pattern_shift[10]~13_combout\,
	datac => \i_fixed_pattern[10]~input_o\,
	datad => \U1|U1|pattern_shift[9]~2_combout\,
	combout => \U1|U1|pattern_shift[10]~15_combout\);

-- Location: FF_X8_Y22_N25
\U1|U1|pattern_shift[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[10]~15_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[10]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N2
\U1|U1|pattern_shift[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[10]~14_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[10]~_emulated_q\ $ (((\U1|U1|pattern_shift[10]~13_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \U1|U1|pattern_shift[10]~_emulated_q\,
	datac => \i_fixed_pattern[10]~input_o\,
	datad => \U1|U1|pattern_shift[10]~13_combout\,
	combout => \U1|U1|pattern_shift[10]~14_combout\);

-- Location: LCCOMB_X8_Y22_N12
\U1|U1|pattern_shift[11]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[11]~59_combout\ = \U1|U1|pattern_shift[11]~57_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[11]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[10]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[11]~57_combout\,
	datab => \i_fixed_pattern[11]~input_o\,
	datac => \U1|U1|pattern_shift[10]~14_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[11]~59_combout\);

-- Location: FF_X8_Y22_N13
\U1|U1|pattern_shift[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[11]~59_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[11]~_emulated_q\);

-- Location: LCCOMB_X8_Y22_N14
\U1|U1|pattern_shift[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[11]~58_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[11]~_emulated_q\ $ (((\U1|U1|pattern_shift[11]~57_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[11]~_emulated_q\,
	datab => \i_fixed_pattern[11]~input_o\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[11]~57_combout\,
	combout => \U1|U1|pattern_shift[11]~58_combout\);

-- Location: LCCOMB_X9_Y22_N24
\U1|U1|pattern_shift[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[12]~51_combout\ = \U1|U1|pattern_shift[12]~49_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[12]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[11]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[12]~49_combout\,
	datab => \i_fixed_pattern[12]~input_o\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|pattern_shift[11]~58_combout\,
	combout => \U1|U1|pattern_shift[12]~51_combout\);

-- Location: FF_X9_Y22_N25
\U1|U1|pattern_shift[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[12]~51_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[12]~_emulated_q\);

-- Location: LCCOMB_X9_Y22_N22
\U1|U1|pattern_shift[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[12]~50_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[12]~49_combout\ $ ((\U1|U1|pattern_shift[12]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[12]~49_combout\,
	datab => \U1|U1|pattern_shift[12]~_emulated_q\,
	datac => \i_rst_l~input_o\,
	datad => \i_fixed_pattern[12]~input_o\,
	combout => \U1|U1|pattern_shift[12]~50_combout\);

-- Location: LCCOMB_X9_Y22_N12
\U1|U1|pattern_shift[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[13]~55_combout\ = \U1|U1|pattern_shift[13]~53_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[13]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[12]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[13]~input_o\,
	datab => \U1|U1|pattern_shift[13]~53_combout\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|pattern_shift[12]~50_combout\,
	combout => \U1|U1|pattern_shift[13]~55_combout\);

-- Location: FF_X9_Y22_N13
\U1|U1|pattern_shift[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[13]~55_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[13]~_emulated_q\);

-- Location: LCCOMB_X9_Y22_N18
\U1|U1|pattern_shift[13]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[13]~54_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[13]~_emulated_q\ $ (((\U1|U1|pattern_shift[13]~53_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[13]~_emulated_q\,
	datab => \i_fixed_pattern[13]~input_o\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[13]~53_combout\,
	combout => \U1|U1|pattern_shift[13]~54_combout\);

-- Location: LCCOMB_X9_Y22_N20
\U1|U1|pattern_shift[14]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[14]~63_combout\ = \U1|U1|pattern_shift[14]~61_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[14]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[13]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[14]~61_combout\,
	datab => \U1|U1|pattern_shift[13]~54_combout\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \i_fixed_pattern[14]~input_o\,
	combout => \U1|U1|pattern_shift[14]~63_combout\);

-- Location: FF_X9_Y22_N21
\U1|U1|pattern_shift[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[14]~63_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[14]~_emulated_q\);

-- Location: LCCOMB_X9_Y22_N2
\U1|U1|pattern_shift[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[14]~62_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[14]~61_combout\ $ (\U1|U1|pattern_shift[14]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[14]~input_o\,
	datac => \U1|U1|pattern_shift[14]~61_combout\,
	datad => \U1|U1|pattern_shift[14]~_emulated_q\,
	combout => \U1|U1|pattern_shift[14]~62_combout\);

-- Location: LCCOMB_X9_Y22_N8
\U1|U1|pattern_shift[15]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[15]~105_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[15]~105_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[15]~input_o\,
	datac => \U1|U1|pattern_shift[15]~105_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[15]~105_combout\);

-- Location: LCCOMB_X9_Y22_N4
\U1|U1|pattern_shift[15]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[15]~107_combout\ = \U1|U1|pattern_shift[15]~105_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[15]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[14]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[15]~input_o\,
	datab => \U1|U1|process_3~0_combout\,
	datac => \U1|U1|pattern_shift[14]~62_combout\,
	datad => \U1|U1|pattern_shift[15]~105_combout\,
	combout => \U1|U1|pattern_shift[15]~107_combout\);

-- Location: FF_X9_Y22_N5
\U1|U1|pattern_shift[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[15]~107_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[15]~_emulated_q\);

-- Location: LCCOMB_X9_Y22_N26
\U1|U1|pattern_shift[15]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[15]~106_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[15]~_emulated_q\ $ (\U1|U1|pattern_shift[15]~105_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[15]~input_o\,
	datac => \U1|U1|pattern_shift[15]~_emulated_q\,
	datad => \U1|U1|pattern_shift[15]~105_combout\,
	combout => \U1|U1|pattern_shift[15]~106_combout\);

-- Location: LCCOMB_X8_Y21_N10
\U1|U1|pattern_shift[16]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[16]~91_combout\ = \U1|U1|pattern_shift[16]~89_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[16]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[15]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|process_3~0_combout\,
	datab => \U1|U1|pattern_shift[16]~89_combout\,
	datac => \i_fixed_pattern[16]~input_o\,
	datad => \U1|U1|pattern_shift[15]~106_combout\,
	combout => \U1|U1|pattern_shift[16]~91_combout\);

-- Location: FF_X8_Y21_N11
\U1|U1|pattern_shift[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[16]~91_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[16]~_emulated_q\);

-- Location: LCCOMB_X8_Y21_N12
\U1|U1|pattern_shift[16]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[16]~90_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[16]~_emulated_q\ $ (((\U1|U1|pattern_shift[16]~89_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[16]~_emulated_q\,
	datab => \i_fixed_pattern[16]~input_o\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[16]~89_combout\,
	combout => \U1|U1|pattern_shift[16]~90_combout\);

-- Location: LCCOMB_X8_Y21_N2
\U1|U1|pattern_shift[17]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[17]~75_combout\ = \U1|U1|pattern_shift[17]~73_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[17]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[16]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[17]~73_combout\,
	datab => \U1|U1|process_3~0_combout\,
	datac => \i_fixed_pattern[17]~input_o\,
	datad => \U1|U1|pattern_shift[16]~90_combout\,
	combout => \U1|U1|pattern_shift[17]~75_combout\);

-- Location: FF_X8_Y21_N3
\U1|U1|pattern_shift[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[17]~75_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[17]~_emulated_q\);

-- Location: LCCOMB_X8_Y21_N8
\U1|U1|pattern_shift[17]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[17]~74_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[17]~_emulated_q\ $ (\U1|U1|pattern_shift[17]~73_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[17]~input_o\,
	datab => \U1|U1|pattern_shift[17]~_emulated_q\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[17]~73_combout\,
	combout => \U1|U1|pattern_shift[17]~74_combout\);

-- Location: LCCOMB_X8_Y21_N22
\U1|U1|pattern_shift[18]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[18]~123_combout\ = \U1|U1|pattern_shift[18]~121_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[18]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[17]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[18]~input_o\,
	datab => \U1|U1|pattern_shift[18]~121_combout\,
	datac => \U1|U1|pattern_shift[17]~74_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[18]~123_combout\);

-- Location: FF_X8_Y21_N23
\U1|U1|pattern_shift[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[18]~123_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[18]~_emulated_q\);

-- Location: LCCOMB_X8_Y21_N28
\U1|U1|pattern_shift[18]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[18]~122_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[18]~121_combout\ $ ((\U1|U1|pattern_shift[18]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \U1|U1|pattern_shift[18]~121_combout\,
	datac => \U1|U1|pattern_shift[18]~_emulated_q\,
	datad => \i_fixed_pattern[18]~input_o\,
	combout => \U1|U1|pattern_shift[18]~122_combout\);

-- Location: LCCOMB_X8_Y21_N18
\U1|U1|pattern_shift[19]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[19]~99_combout\ = \U1|U1|pattern_shift[19]~97_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[19]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[18]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|process_3~0_combout\,
	datab => \U1|U1|pattern_shift[18]~122_combout\,
	datac => \U1|U1|pattern_shift[19]~97_combout\,
	datad => \i_fixed_pattern[19]~input_o\,
	combout => \U1|U1|pattern_shift[19]~99_combout\);

-- Location: FF_X8_Y21_N19
\U1|U1|pattern_shift[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[19]~99_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[19]~_emulated_q\);

-- Location: LCCOMB_X8_Y21_N16
\U1|U1|pattern_shift[19]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[19]~98_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[19]~97_combout\ $ (\U1|U1|pattern_shift[19]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[19]~input_o\,
	datac => \U1|U1|pattern_shift[19]~97_combout\,
	datad => \U1|U1|pattern_shift[19]~_emulated_q\,
	combout => \U1|U1|pattern_shift[19]~98_combout\);

-- Location: LCCOMB_X9_Y21_N28
\U1|U1|pattern_shift[20]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[20]~87_combout\ = \U1|U1|pattern_shift[20]~85_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[20]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[19]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[20]~85_combout\,
	datab => \i_fixed_pattern[20]~input_o\,
	datac => \U1|U1|pattern_shift[19]~98_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[20]~87_combout\);

-- Location: FF_X9_Y21_N29
\U1|U1|pattern_shift[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[20]~87_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[20]~_emulated_q\);

-- Location: LCCOMB_X9_Y21_N2
\U1|U1|pattern_shift[20]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[20]~86_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[20]~_emulated_q\ $ (\U1|U1|pattern_shift[20]~85_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[20]~input_o\,
	datac => \U1|U1|pattern_shift[20]~_emulated_q\,
	datad => \U1|U1|pattern_shift[20]~85_combout\,
	combout => \U1|U1|pattern_shift[20]~86_combout\);

-- Location: LCCOMB_X9_Y21_N0
\U1|U1|pattern_shift[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[21]~67_combout\ = \U1|U1|pattern_shift[21]~65_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[21]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[20]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[21]~input_o\,
	datab => \U1|U1|pattern_shift[21]~65_combout\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|pattern_shift[20]~86_combout\,
	combout => \U1|U1|pattern_shift[21]~67_combout\);

-- Location: FF_X9_Y21_N1
\U1|U1|pattern_shift[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[21]~67_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[21]~_emulated_q\);

-- Location: LCCOMB_X9_Y21_N14
\U1|U1|pattern_shift[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[21]~66_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[21]~_emulated_q\ $ (((\U1|U1|pattern_shift[21]~65_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \U1|U1|pattern_shift[21]~_emulated_q\,
	datac => \i_fixed_pattern[21]~input_o\,
	datad => \U1|U1|pattern_shift[21]~65_combout\,
	combout => \U1|U1|pattern_shift[21]~66_combout\);

-- Location: LCCOMB_X4_Y21_N26
\U1|U1|pattern_shift[22]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[22]~117_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[22]~117_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[22]~input_o\,
	datac => \U1|U1|pattern_shift[22]~117_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[22]~117_combout\);

-- Location: LCCOMB_X4_Y21_N22
\U1|U1|pattern_shift[22]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[22]~119_combout\ = \U1|U1|pattern_shift[22]~117_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[22]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[21]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[21]~66_combout\,
	datab => \i_fixed_pattern[22]~input_o\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|pattern_shift[22]~117_combout\,
	combout => \U1|U1|pattern_shift[22]~119_combout\);

-- Location: FF_X4_Y21_N23
\U1|U1|pattern_shift[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[22]~119_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[22]~_emulated_q\);

-- Location: LCCOMB_X4_Y21_N0
\U1|U1|pattern_shift[22]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[22]~118_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[22]~_emulated_q\ $ (((\U1|U1|pattern_shift[22]~117_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[22]~_emulated_q\,
	datab => \i_fixed_pattern[22]~input_o\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[22]~117_combout\,
	combout => \U1|U1|pattern_shift[22]~118_combout\);

-- Location: LCCOMB_X8_Y21_N26
\U1|U1|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~7_combout\ = (\i_fp_length[3]~input_o\ & (((\i_fp_length[2]~input_o\)))) # (!\i_fp_length[3]~input_o\ & ((\i_fp_length[2]~input_o\ & (\U1|U1|pattern_shift[22]~118_combout\)) # (!\i_fp_length[2]~input_o\ & 
-- ((\U1|U1|pattern_shift[18]~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[22]~118_combout\,
	datab => \i_fp_length[3]~input_o\,
	datac => \U1|U1|pattern_shift[18]~122_combout\,
	datad => \i_fp_length[2]~input_o\,
	combout => \U1|U1|Mux0~7_combout\);

-- Location: LCCOMB_X4_Y25_N24
\U1|U1|pattern_shift[30]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[30]~125_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[30]~125_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[30]~input_o\,
	datac => \U1|U1|pattern_shift[30]~125_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[30]~125_combout\);

-- Location: LCCOMB_X4_Y25_N4
\U1|U1|pattern_shift[29]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[29]~77_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[29]~77_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[29]~input_o\,
	datac => \U1|U1|pattern_shift[29]~77_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[29]~77_combout\);

-- Location: LCCOMB_X4_Y25_N26
\U1|U1|pattern_shift[28]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[28]~93_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[28]~93_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[28]~input_o\,
	datac => \U1|U1|pattern_shift[28]~93_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[28]~93_combout\);

-- Location: LCCOMB_X7_Y25_N6
\U1|U1|pattern_shift[27]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[27]~109_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[27]~109_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[27]~109_combout\,
	datab => \i_fixed_pattern[27]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[27]~109_combout\);

-- Location: LCCOMB_X7_Y25_N8
\U1|U1|pattern_shift[26]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[26]~113_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[26]~113_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[26]~input_o\,
	datac => \U1|U1|pattern_shift[26]~113_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[26]~113_combout\);

-- Location: LCCOMB_X7_Y25_N12
\U1|U1|pattern_shift[25]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[25]~69_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\U1|U1|pattern_shift[25]~69_combout\)) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\i_fixed_pattern[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[25]~69_combout\,
	datac => \i_fixed_pattern[25]~input_o\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[25]~69_combout\);

-- Location: LCCOMB_X4_Y21_N2
\U1|U1|pattern_shift[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[24]~81_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[24]~81_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[24]~input_o\,
	datac => \U1|U1|pattern_shift[24]~81_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[24]~81_combout\);

-- Location: LCCOMB_X4_Y21_N12
\U1|U1|pattern_shift[23]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[23]~101_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[23]~101_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[23]~input_o\,
	datac => \U1|U1|pattern_shift[23]~101_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[23]~101_combout\);

-- Location: LCCOMB_X4_Y21_N30
\U1|U1|pattern_shift[23]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[23]~103_combout\ = \U1|U1|pattern_shift[23]~101_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[23]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[22]~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[23]~input_o\,
	datab => \U1|U1|process_3~0_combout\,
	datac => \U1|U1|pattern_shift[22]~118_combout\,
	datad => \U1|U1|pattern_shift[23]~101_combout\,
	combout => \U1|U1|pattern_shift[23]~103_combout\);

-- Location: FF_X4_Y21_N31
\U1|U1|pattern_shift[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[23]~103_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[23]~_emulated_q\);

-- Location: LCCOMB_X4_Y21_N20
\U1|U1|pattern_shift[23]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[23]~102_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[23]~_emulated_q\ $ (\U1|U1|pattern_shift[23]~101_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[23]~input_o\,
	datab => \i_rst_l~input_o\,
	datac => \U1|U1|pattern_shift[23]~_emulated_q\,
	datad => \U1|U1|pattern_shift[23]~101_combout\,
	combout => \U1|U1|pattern_shift[23]~102_combout\);

-- Location: LCCOMB_X4_Y21_N10
\U1|U1|pattern_shift[24]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[24]~83_combout\ = \U1|U1|pattern_shift[24]~81_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[24]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[23]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[24]~81_combout\,
	datab => \i_fixed_pattern[24]~input_o\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|pattern_shift[23]~102_combout\,
	combout => \U1|U1|pattern_shift[24]~83_combout\);

-- Location: FF_X4_Y21_N11
\U1|U1|pattern_shift[24]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[24]~83_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[24]~_emulated_q\);

-- Location: LCCOMB_X4_Y21_N4
\U1|U1|pattern_shift[24]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[24]~82_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[24]~_emulated_q\ $ (((\U1|U1|pattern_shift[24]~81_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[24]~_emulated_q\,
	datab => \i_fixed_pattern[24]~input_o\,
	datac => \i_rst_l~input_o\,
	datad => \U1|U1|pattern_shift[24]~81_combout\,
	combout => \U1|U1|pattern_shift[24]~82_combout\);

-- Location: LCCOMB_X7_Y25_N28
\U1|U1|pattern_shift[25]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[25]~71_combout\ = \U1|U1|pattern_shift[25]~69_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[25]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[24]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[25]~69_combout\,
	datab => \i_fixed_pattern[25]~input_o\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|pattern_shift[24]~82_combout\,
	combout => \U1|U1|pattern_shift[25]~71_combout\);

-- Location: FF_X7_Y25_N29
\U1|U1|pattern_shift[25]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[25]~71_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[25]~_emulated_q\);

-- Location: LCCOMB_X7_Y25_N2
\U1|U1|pattern_shift[25]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[25]~70_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[25]~69_combout\ $ (((\U1|U1|pattern_shift[25]~_emulated_q\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[25]~69_combout\,
	datab => \i_rst_l~input_o\,
	datac => \i_fixed_pattern[25]~input_o\,
	datad => \U1|U1|pattern_shift[25]~_emulated_q\,
	combout => \U1|U1|pattern_shift[25]~70_combout\);

-- Location: LCCOMB_X7_Y25_N4
\U1|U1|pattern_shift[26]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[26]~115_combout\ = \U1|U1|pattern_shift[26]~113_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[26]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[25]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[26]~113_combout\,
	datab => \U1|U1|process_3~0_combout\,
	datac => \U1|U1|pattern_shift[25]~70_combout\,
	datad => \i_fixed_pattern[26]~input_o\,
	combout => \U1|U1|pattern_shift[26]~115_combout\);

-- Location: FF_X7_Y25_N5
\U1|U1|pattern_shift[26]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[26]~115_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[26]~_emulated_q\);

-- Location: LCCOMB_X7_Y25_N18
\U1|U1|pattern_shift[26]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[26]~114_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[26]~_emulated_q\ $ (\U1|U1|pattern_shift[26]~113_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[26]~input_o\,
	datac => \U1|U1|pattern_shift[26]~_emulated_q\,
	datad => \U1|U1|pattern_shift[26]~113_combout\,
	combout => \U1|U1|pattern_shift[26]~114_combout\);

-- Location: LCCOMB_X7_Y25_N16
\U1|U1|pattern_shift[27]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[27]~111_combout\ = \U1|U1|pattern_shift[27]~109_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[27]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[26]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[27]~109_combout\,
	datab => \U1|U1|process_3~0_combout\,
	datac => \U1|U1|pattern_shift[26]~114_combout\,
	datad => \i_fixed_pattern[27]~input_o\,
	combout => \U1|U1|pattern_shift[27]~111_combout\);

-- Location: FF_X7_Y25_N17
\U1|U1|pattern_shift[27]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[27]~111_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[27]~_emulated_q\);

-- Location: LCCOMB_X7_Y25_N14
\U1|U1|pattern_shift[27]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[27]~110_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[27]~109_combout\ $ (((\U1|U1|pattern_shift[27]~_emulated_q\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[27]~109_combout\,
	datab => \i_rst_l~input_o\,
	datac => \i_fixed_pattern[27]~input_o\,
	datad => \U1|U1|pattern_shift[27]~_emulated_q\,
	combout => \U1|U1|pattern_shift[27]~110_combout\);

-- Location: LCCOMB_X4_Y25_N20
\U1|U1|pattern_shift[28]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[28]~95_combout\ = \U1|U1|pattern_shift[28]~93_combout\ $ (((\U1|U1|process_3~0_combout\ & ((\i_fixed_pattern[28]~input_o\))) # (!\U1|U1|process_3~0_combout\ & (\U1|U1|pattern_shift[27]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[28]~93_combout\,
	datab => \U1|U1|pattern_shift[27]~110_combout\,
	datac => \i_fixed_pattern[28]~input_o\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[28]~95_combout\);

-- Location: FF_X4_Y25_N21
\U1|U1|pattern_shift[28]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[28]~95_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[28]~_emulated_q\);

-- Location: LCCOMB_X4_Y25_N10
\U1|U1|pattern_shift[28]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[28]~94_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[28]~93_combout\ $ (\U1|U1|pattern_shift[28]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[28]~input_o\,
	datab => \i_rst_l~input_o\,
	datac => \U1|U1|pattern_shift[28]~93_combout\,
	datad => \U1|U1|pattern_shift[28]~_emulated_q\,
	combout => \U1|U1|pattern_shift[28]~94_combout\);

-- Location: LCCOMB_X4_Y25_N28
\U1|U1|pattern_shift[29]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[29]~79_combout\ = \U1|U1|pattern_shift[29]~77_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[29]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[28]~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[29]~input_o\,
	datab => \U1|U1|pattern_shift[29]~77_combout\,
	datac => \U1|U1|pattern_shift[28]~94_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[29]~79_combout\);

-- Location: FF_X4_Y25_N29
\U1|U1|pattern_shift[29]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[29]~79_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[29]~_emulated_q\);

-- Location: LCCOMB_X4_Y25_N18
\U1|U1|pattern_shift[29]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[29]~78_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[29]~77_combout\ $ (\U1|U1|pattern_shift[29]~_emulated_q\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fixed_pattern[29]~input_o\,
	datab => \i_rst_l~input_o\,
	datac => \U1|U1|pattern_shift[29]~77_combout\,
	datad => \U1|U1|pattern_shift[29]~_emulated_q\,
	combout => \U1|U1|pattern_shift[29]~78_combout\);

-- Location: LCCOMB_X4_Y25_N8
\U1|U1|pattern_shift[30]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[30]~127_combout\ = \U1|U1|pattern_shift[30]~125_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[30]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[29]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[30]~125_combout\,
	datab => \i_fixed_pattern[30]~input_o\,
	datac => \U1|U1|pattern_shift[29]~78_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[30]~127_combout\);

-- Location: FF_X4_Y25_N9
\U1|U1|pattern_shift[30]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[30]~127_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[30]~_emulated_q\);

-- Location: LCCOMB_X4_Y25_N6
\U1|U1|pattern_shift[30]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[30]~126_combout\ = (\i_rst_l~input_o\ & ((\U1|U1|pattern_shift[30]~_emulated_q\ $ (\U1|U1|pattern_shift[30]~125_combout\)))) # (!\i_rst_l~input_o\ & (\i_fixed_pattern[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_l~input_o\,
	datab => \i_fixed_pattern[30]~input_o\,
	datac => \U1|U1|pattern_shift[30]~_emulated_q\,
	datad => \U1|U1|pattern_shift[30]~125_combout\,
	combout => \U1|U1|pattern_shift[30]~126_combout\);

-- Location: LCCOMB_X8_Y21_N4
\U1|U1|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~8_combout\ = (\U1|U1|Mux0~7_combout\ & (((\U1|U1|pattern_shift[30]~126_combout\)) # (!\i_fp_length[3]~input_o\))) # (!\U1|U1|Mux0~7_combout\ & (\i_fp_length[3]~input_o\ & ((\U1|U1|pattern_shift[26]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Mux0~7_combout\,
	datab => \i_fp_length[3]~input_o\,
	datac => \U1|U1|pattern_shift[30]~126_combout\,
	datad => \U1|U1|pattern_shift[26]~114_combout\,
	combout => \U1|U1|Mux0~8_combout\);

-- Location: LCCOMB_X7_Y25_N20
\U1|U1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~0_combout\ = (\i_fp_length[3]~input_o\ & (((\U1|U1|pattern_shift[25]~70_combout\) # (\i_fp_length[2]~input_o\)))) # (!\i_fp_length[3]~input_o\ & (\U1|U1|pattern_shift[17]~74_combout\ & ((!\i_fp_length[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[3]~input_o\,
	datab => \U1|U1|pattern_shift[17]~74_combout\,
	datac => \U1|U1|pattern_shift[25]~70_combout\,
	datad => \i_fp_length[2]~input_o\,
	combout => \U1|U1|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y25_N22
\U1|U1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~1_combout\ = (\U1|U1|Mux0~0_combout\ & (((\U1|U1|pattern_shift[29]~78_combout\) # (!\i_fp_length[2]~input_o\)))) # (!\U1|U1|Mux0~0_combout\ & (\U1|U1|pattern_shift[21]~66_combout\ & ((\i_fp_length[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[21]~66_combout\,
	datab => \U1|U1|pattern_shift[29]~78_combout\,
	datac => \U1|U1|Mux0~0_combout\,
	datad => \i_fp_length[2]~input_o\,
	combout => \U1|U1|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y25_N14
\U1|U1|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~4_combout\ = (\i_fp_length[2]~input_o\ & (((\i_fp_length[3]~input_o\)))) # (!\i_fp_length[2]~input_o\ & ((\i_fp_length[3]~input_o\ & ((\U1|U1|pattern_shift[23]~102_combout\))) # (!\i_fp_length[3]~input_o\ & 
-- (\U1|U1|pattern_shift[15]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[2]~input_o\,
	datab => \U1|U1|pattern_shift[15]~106_combout\,
	datac => \U1|U1|pattern_shift[23]~102_combout\,
	datad => \i_fp_length[3]~input_o\,
	combout => \U1|U1|Mux0~4_combout\);

-- Location: LCCOMB_X8_Y25_N8
\U1|U1|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~5_combout\ = (\U1|U1|Mux0~4_combout\ & (((\U1|U1|pattern_shift[27]~110_combout\) # (!\i_fp_length[2]~input_o\)))) # (!\U1|U1|Mux0~4_combout\ & (\U1|U1|pattern_shift[19]~98_combout\ & ((\i_fp_length[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[19]~98_combout\,
	datab => \U1|U1|pattern_shift[27]~110_combout\,
	datac => \U1|U1|Mux0~4_combout\,
	datad => \i_fp_length[2]~input_o\,
	combout => \U1|U1|Mux0~5_combout\);

-- Location: LCCOMB_X8_Y21_N24
\U1|U1|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~2_combout\ = (\i_fp_length[3]~input_o\ & (((\i_fp_length[2]~input_o\)))) # (!\i_fp_length[3]~input_o\ & ((\i_fp_length[2]~input_o\ & ((\U1|U1|pattern_shift[20]~86_combout\))) # (!\i_fp_length[2]~input_o\ & 
-- (\U1|U1|pattern_shift[16]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[16]~90_combout\,
	datab => \i_fp_length[3]~input_o\,
	datac => \U1|U1|pattern_shift[20]~86_combout\,
	datad => \i_fp_length[2]~input_o\,
	combout => \U1|U1|Mux0~2_combout\);

-- Location: LCCOMB_X8_Y25_N0
\U1|U1|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~3_combout\ = (\i_fp_length[3]~input_o\ & ((\U1|U1|Mux0~2_combout\ & (\U1|U1|pattern_shift[28]~94_combout\)) # (!\U1|U1|Mux0~2_combout\ & ((\U1|U1|pattern_shift[24]~82_combout\))))) # (!\i_fp_length[3]~input_o\ & (((\U1|U1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[3]~input_o\,
	datab => \U1|U1|pattern_shift[28]~94_combout\,
	datac => \U1|U1|pattern_shift[24]~82_combout\,
	datad => \U1|U1|Mux0~2_combout\,
	combout => \U1|U1|Mux0~3_combout\);

-- Location: LCCOMB_X8_Y25_N22
\U1|U1|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~6_combout\ = (\i_fp_length[1]~input_o\ & (((\i_fp_length[0]~input_o\)))) # (!\i_fp_length[1]~input_o\ & ((\i_fp_length[0]~input_o\ & ((\U1|U1|Mux0~3_combout\))) # (!\i_fp_length[0]~input_o\ & (\U1|U1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[1]~input_o\,
	datab => \U1|U1|Mux0~5_combout\,
	datac => \i_fp_length[0]~input_o\,
	datad => \U1|U1|Mux0~3_combout\,
	combout => \U1|U1|Mux0~6_combout\);

-- Location: LCCOMB_X8_Y25_N12
\U1|U1|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~9_combout\ = (\i_fp_length[1]~input_o\ & ((\U1|U1|Mux0~6_combout\ & (\U1|U1|Mux0~8_combout\)) # (!\U1|U1|Mux0~6_combout\ & ((\U1|U1|Mux0~1_combout\))))) # (!\i_fp_length[1]~input_o\ & (((\U1|U1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[1]~input_o\,
	datab => \U1|U1|Mux0~8_combout\,
	datac => \U1|U1|Mux0~1_combout\,
	datad => \U1|U1|Mux0~6_combout\,
	combout => \U1|U1|Mux0~9_combout\);

-- Location: LCCOMB_X4_Y25_N22
\U1|U1|pattern_shift[31]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[31]~41_combout\ = (GLOBAL(\i_rst_l~inputclkctrl_outclk\) & ((\U1|U1|pattern_shift[31]~41_combout\))) # (!GLOBAL(\i_rst_l~inputclkctrl_outclk\) & (\i_fixed_pattern[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fixed_pattern[31]~input_o\,
	datac => \U1|U1|pattern_shift[31]~41_combout\,
	datad => \i_rst_l~inputclkctrl_outclk\,
	combout => \U1|U1|pattern_shift[31]~41_combout\);

-- Location: LCCOMB_X4_Y25_N12
\U1|U1|pattern_shift[31]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[31]~43_combout\ = \U1|U1|pattern_shift[31]~41_combout\ $ (((\U1|U1|process_3~0_combout\ & (\i_fixed_pattern[31]~input_o\)) # (!\U1|U1|process_3~0_combout\ & ((\U1|U1|pattern_shift[30]~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[31]~41_combout\,
	datab => \i_fixed_pattern[31]~input_o\,
	datac => \U1|U1|pattern_shift[30]~126_combout\,
	datad => \U1|U1|process_3~0_combout\,
	combout => \U1|U1|pattern_shift[31]~43_combout\);

-- Location: FF_X4_Y25_N13
\U1|U1|pattern_shift[31]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_shift[31]~43_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U1|pattern_shift[2]~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_shift[31]~_emulated_q\);

-- Location: LCCOMB_X4_Y25_N14
\U1|U1|pattern_shift[31]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_shift[31]~42_combout\ = (\i_rst_l~input_o\ & (\U1|U1|pattern_shift[31]~_emulated_q\ $ (((\U1|U1|pattern_shift[31]~41_combout\))))) # (!\i_rst_l~input_o\ & (((\i_fixed_pattern[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[31]~_emulated_q\,
	datab => \i_fixed_pattern[31]~input_o\,
	datac => \U1|U1|pattern_shift[31]~41_combout\,
	datad => \i_rst_l~input_o\,
	combout => \U1|U1|pattern_shift[31]~42_combout\);

-- Location: LCCOMB_X8_Y25_N30
\U1|U1|Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~14_combout\ = (\i_fp_length[1]~input_o\ & (\i_fp_length[0]~input_o\)) # (!\i_fp_length[1]~input_o\ & ((\i_fp_length[0]~input_o\ & (\U1|U1|pattern_shift[0]~38_combout\)) # (!\i_fp_length[0]~input_o\ & ((\U1|U1|pattern_shift[31]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[1]~input_o\,
	datab => \i_fp_length[0]~input_o\,
	datac => \U1|U1|pattern_shift[0]~38_combout\,
	datad => \U1|U1|pattern_shift[31]~42_combout\,
	combout => \U1|U1|Mux0~14_combout\);

-- Location: LCCOMB_X8_Y25_N20
\U1|U1|Mux0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~15_combout\ = (\i_fp_length[1]~input_o\ & ((\U1|U1|Mux0~14_combout\ & (\U1|U1|pattern_shift[2]~46_combout\)) # (!\U1|U1|Mux0~14_combout\ & ((\U1|U1|pattern_shift[1]~34_combout\))))) # (!\i_fp_length[1]~input_o\ & (((\U1|U1|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[1]~input_o\,
	datab => \U1|U1|pattern_shift[2]~46_combout\,
	datac => \U1|U1|Mux0~14_combout\,
	datad => \U1|U1|pattern_shift[1]~34_combout\,
	combout => \U1|U1|Mux0~15_combout\);

-- Location: LCCOMB_X8_Y25_N18
\U1|U1|Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~12_combout\ = (\i_fp_length[1]~input_o\ & ((\U1|U1|pattern_shift[5]~22_combout\) # ((\i_fp_length[0]~input_o\)))) # (!\i_fp_length[1]~input_o\ & (((!\i_fp_length[0]~input_o\ & \U1|U1|pattern_shift[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[1]~input_o\,
	datab => \U1|U1|pattern_shift[5]~22_combout\,
	datac => \i_fp_length[0]~input_o\,
	datad => \U1|U1|pattern_shift[3]~26_combout\,
	combout => \U1|U1|Mux0~12_combout\);

-- Location: LCCOMB_X8_Y25_N4
\U1|U1|Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~13_combout\ = (\U1|U1|Mux0~12_combout\ & ((\U1|U1|pattern_shift[6]~30_combout\) # ((!\i_fp_length[0]~input_o\)))) # (!\U1|U1|Mux0~12_combout\ & (((\i_fp_length[0]~input_o\ & \U1|U1|pattern_shift[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[6]~30_combout\,
	datab => \U1|U1|Mux0~12_combout\,
	datac => \i_fp_length[0]~input_o\,
	datad => \U1|U1|pattern_shift[4]~18_combout\,
	combout => \U1|U1|Mux0~13_combout\);

-- Location: LCCOMB_X8_Y25_N10
\U1|U1|Mux0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~16_combout\ = (\i_fp_length[3]~input_o\ & (((\i_fp_length[2]~input_o\)))) # (!\i_fp_length[3]~input_o\ & ((\i_fp_length[2]~input_o\ & ((\U1|U1|Mux0~13_combout\))) # (!\i_fp_length[2]~input_o\ & (\U1|U1|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[3]~input_o\,
	datab => \U1|U1|Mux0~15_combout\,
	datac => \U1|U1|Mux0~13_combout\,
	datad => \i_fp_length[2]~input_o\,
	combout => \U1|U1|Mux0~16_combout\);

-- Location: LCCOMB_X8_Y22_N20
\U1|U1|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~10_combout\ = (\i_fp_length[0]~input_o\ & (((\U1|U1|pattern_shift[8]~6_combout\) # (\i_fp_length[1]~input_o\)))) # (!\i_fp_length[0]~input_o\ & (\U1|U1|pattern_shift[7]~10_combout\ & ((!\i_fp_length[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[7]~10_combout\,
	datab => \i_fp_length[0]~input_o\,
	datac => \U1|U1|pattern_shift[8]~6_combout\,
	datad => \i_fp_length[1]~input_o\,
	combout => \U1|U1|Mux0~10_combout\);

-- Location: LCCOMB_X8_Y22_N18
\U1|U1|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~11_combout\ = (\U1|U1|Mux0~10_combout\ & ((\U1|U1|pattern_shift[10]~14_combout\) # ((!\i_fp_length[1]~input_o\)))) # (!\U1|U1|Mux0~10_combout\ & (((\U1|U1|pattern_shift[9]~2_combout\ & \i_fp_length[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[10]~14_combout\,
	datab => \U1|U1|Mux0~10_combout\,
	datac => \U1|U1|pattern_shift[9]~2_combout\,
	datad => \i_fp_length[1]~input_o\,
	combout => \U1|U1|Mux0~11_combout\);

-- Location: LCCOMB_X9_Y22_N28
\U1|U1|Mux0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~17_combout\ = (\i_fp_length[1]~input_o\ & ((\i_fp_length[0]~input_o\) # ((\U1|U1|pattern_shift[13]~54_combout\)))) # (!\i_fp_length[1]~input_o\ & (!\i_fp_length[0]~input_o\ & ((\U1|U1|pattern_shift[11]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[1]~input_o\,
	datab => \i_fp_length[0]~input_o\,
	datac => \U1|U1|pattern_shift[13]~54_combout\,
	datad => \U1|U1|pattern_shift[11]~58_combout\,
	combout => \U1|U1|Mux0~17_combout\);

-- Location: LCCOMB_X9_Y22_N10
\U1|U1|Mux0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~18_combout\ = (\i_fp_length[0]~input_o\ & ((\U1|U1|Mux0~17_combout\ & ((\U1|U1|pattern_shift[14]~62_combout\))) # (!\U1|U1|Mux0~17_combout\ & (\U1|U1|pattern_shift[12]~50_combout\)))) # (!\i_fp_length[0]~input_o\ & 
-- (((\U1|U1|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_shift[12]~50_combout\,
	datab => \i_fp_length[0]~input_o\,
	datac => \U1|U1|pattern_shift[14]~62_combout\,
	datad => \U1|U1|Mux0~17_combout\,
	combout => \U1|U1|Mux0~18_combout\);

-- Location: LCCOMB_X8_Y25_N28
\U1|U1|Mux0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~19_combout\ = (\U1|U1|Mux0~16_combout\ & (((\U1|U1|Mux0~18_combout\) # (!\i_fp_length[3]~input_o\)))) # (!\U1|U1|Mux0~16_combout\ & (\U1|U1|Mux0~11_combout\ & ((\i_fp_length[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Mux0~16_combout\,
	datab => \U1|U1|Mux0~11_combout\,
	datac => \U1|U1|Mux0~18_combout\,
	datad => \i_fp_length[3]~input_o\,
	combout => \U1|U1|Mux0~19_combout\);

-- Location: LCCOMB_X8_Y25_N26
\U1|U1|Mux0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Mux0~20_combout\ = (\i_fp_length[4]~input_o\ & (\U1|U1|Mux0~9_combout\)) # (!\i_fp_length[4]~input_o\ & ((\U1|U1|Mux0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Mux0~9_combout\,
	datac => \i_fp_length[4]~input_o\,
	datad => \U1|U1|Mux0~19_combout\,
	combout => \U1|U1|Mux0~20_combout\);

-- Location: LCCOMB_X7_Y29_N6
\U1|U0|o_fp_det\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|o_fp_det~combout\ = (\i_fixed_pn_pattern_sel~input_o\ & \i_data_from_gen_to_det~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \i_data_from_gen_to_det~input_o\,
	combout => \U1|U0|o_fp_det~combout\);

-- Location: FF_X7_Y29_N7
\U1|U1|data_delay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U0|o_fp_det~combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|data_delay~q\);

-- Location: LCCOMB_X8_Y25_N2
\U1|U1|pattern_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|pattern_cmp~0_combout\ = (!\U1|U1|Selector1~2_combout\ & (\U1|U1|Selector2~1_combout\ & (\U1|U1|Mux0~20_combout\ $ (!\U1|U1|data_delay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Mux0~20_combout\,
	datab => \U1|U1|Selector1~2_combout\,
	datac => \U1|U1|data_delay~q\,
	datad => \U1|U1|Selector2~1_combout\,
	combout => \U1|U1|pattern_cmp~0_combout\);

-- Location: FF_X8_Y25_N3
\U1|U1|pattern_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|pattern_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pattern_cmp~q\);

-- Location: LCCOMB_X9_Y25_N30
\U1|U1|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector1~1_combout\ = ((!\U1|U1|pattern_cmp~q\ & (\U1|U1|pstate.FIND_PATTERN~q\ & \U1|U1|data_cnt_tc~q\))) # (!\U1|U1|pstate.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pattern_cmp~q\,
	datab => \U1|U1|pstate.IDLE~q\,
	datac => \U1|U1|pstate.FIND_PATTERN~q\,
	datad => \U1|U1|data_cnt_tc~q\,
	combout => \U1|U1|Selector1~1_combout\);

-- Location: LCCOMB_X9_Y25_N10
\U1|U1|nstate.RESTART~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|nstate.RESTART~0_combout\ = (\U1|U1|pstate.WAIT_PATTERN_LENGTH~q\ & (\U1|U1|detector_en~q\ & \U1|U1|data_cnt_tc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pstate.WAIT_PATTERN_LENGTH~q\,
	datab => \U1|U1|detector_en~q\,
	datad => \U1|U1|data_cnt_tc~q\,
	combout => \U1|U1|nstate.RESTART~0_combout\);

-- Location: FF_X9_Y25_N1
\U1|U1|pstate.RESTART\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U1|nstate.RESTART~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pstate.RESTART~q\);

-- Location: LCCOMB_X9_Y25_N28
\U1|U1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector1~0_combout\ = (\U1|U1|pstate.FIND_FIRST_BIT~q\ & !\U1|U1|first_bit_cmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pstate.FIND_FIRST_BIT~q\,
	datad => \U1|U1|first_bit_cmp~q\,
	combout => \U1|U1|Selector1~0_combout\);

-- Location: LCCOMB_X9_Y25_N0
\U1|U1|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector1~2_combout\ = (\U1|U1|pstate.RESTART~q\) # ((\U1|U1|detector_en~q\ & ((\U1|U1|Selector1~1_combout\) # (\U1|U1|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Selector1~1_combout\,
	datab => \U1|U1|detector_en~q\,
	datac => \U1|U1|pstate.RESTART~q\,
	datad => \U1|U1|Selector1~0_combout\,
	combout => \U1|U1|Selector1~2_combout\);

-- Location: LCCOMB_X10_Y25_N22
\U1|U1|data_cnt[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|data_cnt[1]~18_combout\ = (\U1|U1|Selector1~2_combout\) # ((!\U1|U1|Selector2~1_combout\ & ((\U1|U1|data_cnt_tc~q\) # (!\U1|U1|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|data_cnt_tc~q\,
	datab => \U1|U1|Selector2~1_combout\,
	datac => \U1|U1|Selector1~2_combout\,
	datad => \U1|U1|Selector3~0_combout\,
	combout => \U1|U1|data_cnt[1]~18_combout\);

-- Location: LCCOMB_X10_Y25_N20
\U1|U1|data_cnt[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|data_cnt[1]~11_combout\ = (\U1|U1|Selector1~2_combout\) # ((\U1|U1|Selector2~1_combout\) # ((\U1|U1|process_3~0_combout\) # (\U1|U1|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Selector1~2_combout\,
	datab => \U1|U1|Selector2~1_combout\,
	datac => \U1|U1|process_3~0_combout\,
	datad => \U1|U1|Selector3~1_combout\,
	combout => \U1|U1|data_cnt[1]~11_combout\);

-- Location: FF_X10_Y25_N1
\U1|U1|data_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|data_cnt[0]~7_combout\,
	asdata => \U1|U1|Selector1~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => \U1|U1|data_cnt[1]~18_combout\,
	ena => \U1|U1|data_cnt[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|data_cnt\(0));

-- Location: LCCOMB_X10_Y25_N2
\U1|U1|data_cnt[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|data_cnt[1]~9_combout\ = (\U1|U1|data_cnt\(1) & (!\U1|U1|data_cnt[0]~8\)) # (!\U1|U1|data_cnt\(1) & ((\U1|U1|data_cnt[0]~8\) # (GND)))
-- \U1|U1|data_cnt[1]~10\ = CARRY((!\U1|U1|data_cnt[0]~8\) # (!\U1|U1|data_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|data_cnt\(1),
	datad => VCC,
	cin => \U1|U1|data_cnt[0]~8\,
	combout => \U1|U1|data_cnt[1]~9_combout\,
	cout => \U1|U1|data_cnt[1]~10\);

-- Location: LCCOMB_X10_Y25_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X10_Y25_N3
\U1|U1|data_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|data_cnt[1]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => \U1|U1|data_cnt[1]~18_combout\,
	ena => \U1|U1|data_cnt[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|data_cnt\(1));

-- Location: LCCOMB_X10_Y25_N4
\U1|U1|data_cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|data_cnt[2]~12_combout\ = (\U1|U1|data_cnt\(2) & (\U1|U1|data_cnt[1]~10\ $ (GND))) # (!\U1|U1|data_cnt\(2) & (!\U1|U1|data_cnt[1]~10\ & VCC))
-- \U1|U1|data_cnt[2]~13\ = CARRY((\U1|U1|data_cnt\(2) & !\U1|U1|data_cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|data_cnt\(2),
	datad => VCC,
	cin => \U1|U1|data_cnt[1]~10\,
	combout => \U1|U1|data_cnt[2]~12_combout\,
	cout => \U1|U1|data_cnt[2]~13\);

-- Location: FF_X10_Y25_N5
\U1|U1|data_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|data_cnt[2]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => \U1|U1|data_cnt[1]~18_combout\,
	ena => \U1|U1|data_cnt[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|data_cnt\(2));

-- Location: LCCOMB_X10_Y25_N6
\U1|U1|data_cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|data_cnt[3]~14_combout\ = (\U1|U1|data_cnt\(3) & (!\U1|U1|data_cnt[2]~13\)) # (!\U1|U1|data_cnt\(3) & ((\U1|U1|data_cnt[2]~13\) # (GND)))
-- \U1|U1|data_cnt[3]~15\ = CARRY((!\U1|U1|data_cnt[2]~13\) # (!\U1|U1|data_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|data_cnt\(3),
	datad => VCC,
	cin => \U1|U1|data_cnt[2]~13\,
	combout => \U1|U1|data_cnt[3]~14_combout\,
	cout => \U1|U1|data_cnt[3]~15\);

-- Location: FF_X10_Y25_N7
\U1|U1|data_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|data_cnt[3]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => \U1|U1|data_cnt[1]~18_combout\,
	ena => \U1|U1|data_cnt[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|data_cnt\(3));

-- Location: LCCOMB_X10_Y25_N10
\U1|U1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Add1~0_combout\ = \i_fp_length[0]~input_o\ $ (VCC)
-- \U1|U1|Add1~1\ = CARRY(\i_fp_length[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_fp_length[0]~input_o\,
	datad => VCC,
	combout => \U1|U1|Add1~0_combout\,
	cout => \U1|U1|Add1~1\);

-- Location: LCCOMB_X10_Y25_N12
\U1|U1|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Add1~2_combout\ = (\i_fp_length[1]~input_o\ & (\U1|U1|Add1~1\ & VCC)) # (!\i_fp_length[1]~input_o\ & (!\U1|U1|Add1~1\))
-- \U1|U1|Add1~3\ = CARRY((!\i_fp_length[1]~input_o\ & !\U1|U1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_fp_length[1]~input_o\,
	datad => VCC,
	cin => \U1|U1|Add1~1\,
	combout => \U1|U1|Add1~2_combout\,
	cout => \U1|U1|Add1~3\);

-- Location: LCCOMB_X10_Y25_N14
\U1|U1|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Add1~4_combout\ = (\i_fp_length[2]~input_o\ & ((GND) # (!\U1|U1|Add1~3\))) # (!\i_fp_length[2]~input_o\ & (\U1|U1|Add1~3\ $ (GND)))
-- \U1|U1|Add1~5\ = CARRY((\i_fp_length[2]~input_o\) # (!\U1|U1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[2]~input_o\,
	datad => VCC,
	cin => \U1|U1|Add1~3\,
	combout => \U1|U1|Add1~4_combout\,
	cout => \U1|U1|Add1~5\);

-- Location: LCCOMB_X10_Y25_N16
\U1|U1|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Add1~6_combout\ = (\i_fp_length[3]~input_o\ & (\U1|U1|Add1~5\ & VCC)) # (!\i_fp_length[3]~input_o\ & (!\U1|U1|Add1~5\))
-- \U1|U1|Add1~7\ = CARRY((!\i_fp_length[3]~input_o\ & !\U1|U1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_fp_length[3]~input_o\,
	datad => VCC,
	cin => \U1|U1|Add1~5\,
	combout => \U1|U1|Add1~6_combout\,
	cout => \U1|U1|Add1~7\);

-- Location: LCCOMB_X10_Y25_N30
\U1|U1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~1_combout\ = (\U1|U1|data_cnt\(3) & (\U1|U1|Add1~6_combout\ & (\U1|U1|Add1~4_combout\ $ (!\U1|U1|data_cnt\(2))))) # (!\U1|U1|data_cnt\(3) & (!\U1|U1|Add1~6_combout\ & (\U1|U1|Add1~4_combout\ $ (!\U1|U1|data_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|data_cnt\(3),
	datab => \U1|U1|Add1~4_combout\,
	datac => \U1|U1|data_cnt\(2),
	datad => \U1|U1|Add1~6_combout\,
	combout => \U1|U1|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y25_N28
\U1|U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~0_combout\ = (\U1|U1|Add1~0_combout\ & (\U1|U1|data_cnt\(0) & (\U1|U1|data_cnt\(1) $ (!\U1|U1|Add1~2_combout\)))) # (!\U1|U1|Add1~0_combout\ & (!\U1|U1|data_cnt\(0) & (\U1|U1|data_cnt\(1) $ (!\U1|U1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Add1~0_combout\,
	datab => \U1|U1|data_cnt\(1),
	datac => \U1|U1|Add1~2_combout\,
	datad => \U1|U1|data_cnt\(0),
	combout => \U1|U1|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y25_N8
\U1|U1|data_cnt[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|data_cnt[4]~16_combout\ = \U1|U1|data_cnt\(4) $ (!\U1|U1|data_cnt[3]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|data_cnt\(4),
	cin => \U1|U1|data_cnt[3]~15\,
	combout => \U1|U1|data_cnt[4]~16_combout\);

-- Location: FF_X10_Y25_N9
\U1|U1|data_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|data_cnt[4]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => \U1|U1|data_cnt[1]~18_combout\,
	ena => \U1|U1|data_cnt[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|data_cnt\(4));

-- Location: LCCOMB_X10_Y25_N18
\U1|U1|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Add1~8_combout\ = \U1|U1|Add1~7\ $ (\i_fp_length[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_fp_length[4]~input_o\,
	cin => \U1|U1|Add1~7\,
	combout => \U1|U1|Add1~8_combout\);

-- Location: LCCOMB_X9_Y25_N12
\U1|U1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Equal0~2_combout\ = (\U1|U1|Equal0~1_combout\ & (\U1|U1|Equal0~0_combout\ & (\U1|U1|data_cnt\(4) $ (!\U1|U1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Equal0~1_combout\,
	datab => \U1|U1|Equal0~0_combout\,
	datac => \U1|U1|data_cnt\(4),
	datad => \U1|U1|Add1~8_combout\,
	combout => \U1|U1|Equal0~2_combout\);

-- Location: FF_X9_Y25_N13
\U1|U1|data_cnt_tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|Equal0~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|data_cnt_tc~q\);

-- Location: LCCOMB_X9_Y25_N8
\U1|U1|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector4~0_combout\ = (\U1|U1|data_cnt_tc~q\ & (\U1|U1|pstate.FIND_PATTERN~q\ & \U1|U1|pattern_cmp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|data_cnt_tc~q\,
	datab => \U1|U1|pstate.FIND_PATTERN~q\,
	datad => \U1|U1|pattern_cmp~q\,
	combout => \U1|U1|Selector4~0_combout\);

-- Location: LCCOMB_X9_Y25_N18
\U1|U1|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|Selector4~1_combout\ = (\U1|U1|detector_en~q\ & ((\U1|U1|Selector4~0_combout\) # ((\U1|U1|o_lock~q\ & !\U1|U3|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Selector4~0_combout\,
	datab => \U1|U1|o_lock~q\,
	datac => \U1|U1|detector_en~q\,
	datad => \U1|U3|Equal1~10_combout\,
	combout => \U1|U1|Selector4~1_combout\);

-- Location: FF_X9_Y25_N21
\U1|U1|o_lock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U1|Selector4~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|o_lock~q\);

-- Location: LCCOMB_X8_Y29_N2
\U1|lock_into_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|lock_into_counter~0_combout\ = (\U1|U2|U1|pstate.PATTERN_LOCK~q\) # ((\U1|U2|U3|pstate.PATTERN_LOCK~q\) # ((\U1|U2|U2|pstate.PATTERN_LOCK~q\) # (\U1|U1|o_lock~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pstate.PATTERN_LOCK~q\,
	datab => \U1|U2|U3|pstate.PATTERN_LOCK~q\,
	datac => \U1|U2|U2|pstate.PATTERN_LOCK~q\,
	datad => \U1|U1|o_lock~q\,
	combout => \U1|lock_into_counter~0_combout\);

-- Location: LCCOMB_X8_Y29_N6
\U1|U2|U3|data_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U3|data_cmp~0_combout\ = (\U1|U2|U3|Selector3~1_combout\ & (\U1|U0|o_pn_det~combout\ $ (\U1|U2|U3|pn_data\(27) $ (\U1|U2|U3|pn_data\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|o_pn_det~combout\,
	datab => \U1|U2|U3|pn_data\(27),
	datac => \U1|U2|U3|Selector3~1_combout\,
	datad => \U1|U2|U3|pn_data\(30),
	combout => \U1|U2|U3|data_cmp~0_combout\);

-- Location: FF_X8_Y29_N7
\U1|U2|U3|data_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U3|data_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U3|data_cmp~q\);

-- Location: LCCOMB_X8_Y29_N26
\U1|U2|U0|data_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|data_cmp~0_combout\ = (\U1|U2|U0|Selector3~1_combout\ & (\U1|U0|o_pn_det~combout\ $ (\U1|U2|U0|pn_data\(2) $ (\U1|U2|U0|pn_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|o_pn_det~combout\,
	datab => \U1|U2|U0|pn_data\(2),
	datac => \U1|U2|U0|Selector3~1_combout\,
	datad => \U1|U2|U0|pn_data\(3),
	combout => \U1|U2|U0|data_cmp~0_combout\);

-- Location: FF_X8_Y29_N27
\U1|U2|U0|data_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|data_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|data_cmp~q\);

-- Location: LCCOMB_X8_Y29_N16
\U1|U2|U1|data_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U1|data_cmp~0_combout\ = (\U1|U2|U1|Selector3~1_combout\ & (\U1|U2|U1|pn_data\(5) $ (\U1|U2|U1|pn_data\(6) $ (\U1|U0|o_pn_det~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|pn_data\(5),
	datab => \U1|U2|U1|pn_data\(6),
	datac => \U1|U0|o_pn_det~combout\,
	datad => \U1|U2|U1|Selector3~1_combout\,
	combout => \U1|U2|U1|data_cmp~0_combout\);

-- Location: FF_X8_Y29_N17
\U1|U2|U1|data_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|data_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|data_cmp~q\);

-- Location: LCCOMB_X8_Y25_N16
\U1|U1|fixed_data_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|fixed_data_cmp~0_combout\ = (\U1|U1|Selector4~1_combout\ & (\U1|U1|Mux0~20_combout\ $ (\U1|U1|data_delay~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Mux0~20_combout\,
	datac => \U1|U1|data_delay~q\,
	datad => \U1|U1|Selector4~1_combout\,
	combout => \U1|U1|fixed_data_cmp~0_combout\);

-- Location: FF_X8_Y25_N17
\U1|U1|fixed_data_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U1|fixed_data_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|fixed_data_cmp~q\);

-- Location: LCCOMB_X4_Y29_N10
\U1|U2|U2|data_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U2|data_cmp~0_combout\ = (\U1|U2|U2|Selector3~1_combout\ & (\U1|U2|U2|pn_data\(13) $ (\U1|U2|U2|pn_data\(14) $ (\U1|U0|o_pn_det~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U2|pn_data\(13),
	datab => \U1|U2|U2|pn_data\(14),
	datac => \U1|U2|U2|Selector3~1_combout\,
	datad => \U1|U0|o_pn_det~combout\,
	combout => \U1|U2|U2|data_cmp~0_combout\);

-- Location: FF_X4_Y29_N11
\U1|U2|U2|data_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U2|data_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U2|data_cmp~q\);

-- Location: LCCOMB_X8_Y29_N24
\U1|error_into_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|error_into_counter~0_combout\ = (\U1|U2|U0|data_cmp~q\) # ((\U1|U2|U1|data_cmp~q\) # ((\U1|U1|fixed_data_cmp~q\) # (\U1|U2|U2|data_cmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|data_cmp~q\,
	datab => \U1|U2|U1|data_cmp~q\,
	datac => \U1|U1|fixed_data_cmp~q\,
	datad => \U1|U2|U2|data_cmp~q\,
	combout => \U1|error_into_counter~0_combout\);

-- Location: LCCOMB_X9_Y29_N14
\U1|U3|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|process_1~0_combout\ = (\U1|lock_into_counter~0_combout\ & (((\U1|U2|U3|data_cmp~q\) # (\U1|error_into_counter~0_combout\)))) # (!\U1|lock_into_counter~0_combout\ & (\U1|U2|U0|pstate.PATTERN_LOCK~q\ & ((\U1|U2|U3|data_cmp~q\) # 
-- (\U1|error_into_counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|lock_into_counter~0_combout\,
	datab => \U1|U2|U0|pstate.PATTERN_LOCK~q\,
	datac => \U1|U2|U3|data_cmp~q\,
	datad => \U1|error_into_counter~0_combout\,
	combout => \U1|U3|process_1~0_combout\);

-- Location: LCCOMB_X10_Y29_N6
\U1|U3|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|process_1~1_combout\ = (\U1|U3|process_1~0_combout\ & ((\U1|U3|count_error\(31)) # ((\U1|U3|Equal1~11_combout\ & !\U1|U3|count_error\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(31),
	datab => \U1|U3|Equal1~11_combout\,
	datac => \U1|U3|count_error\(4),
	datad => \U1|U3|process_1~0_combout\,
	combout => \U1|U3|process_1~1_combout\);

-- Location: LCCOMB_X12_Y28_N30
\U1|U3|Add1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Add1~63_combout\ = \U1|U3|count_error\(31) $ (\U1|U3|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(31),
	cin => \U1|U3|Add1~61\,
	combout => \U1|U3|Add1~63_combout\);

-- Location: LCCOMB_X9_Y29_N16
\U1|U3|count_error[31]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|count_error[31]~29_combout\ = (\U1|U3|process_1~1_combout\ & (((\U1|U3|Add1~63_combout\)))) # (!\U1|U3|process_1~1_combout\ & (\U1|U3|count_error[0]~0_combout\ & (\U1|U3|count_error\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|process_1~1_combout\,
	datab => \U1|U3|count_error[0]~0_combout\,
	datac => \U1|U3|count_error\(31),
	datad => \U1|U3|Add1~63_combout\,
	combout => \U1|U3|count_error[31]~29_combout\);

-- Location: FF_X9_Y29_N17
\U1|U3|count_error[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U3|count_error[31]~29_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|count_error\(31));

-- Location: LCCOMB_X10_Y29_N12
\U1|U3|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~8_combout\ = (!\U1|U3|count_error\(31) & (!\U1|U3|count_error\(0) & (!\U1|U3|count_error\(3) & \U1|U3|count_error\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|count_error\(31),
	datab => \U1|U3|count_error\(0),
	datac => \U1|U3|count_error\(3),
	datad => \U1|U3|count_error\(4),
	combout => \U1|U3|Equal1~8_combout\);

-- Location: LCCOMB_X11_Y29_N12
\U1|U3|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~9_combout\ = (!\U1|U3|count_error\(1) & !\U1|U3|count_error\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|count_error\(1),
	datad => \U1|U3|count_error\(2),
	combout => \U1|U3|Equal1~9_combout\);

-- Location: LCCOMB_X10_Y29_N26
\U1|U3|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal1~10_combout\ = (\U1|U3|Equal1~8_combout\ & (\U1|U3|Equal1~9_combout\ & (\U1|U3|Equal1~4_combout\ & \U1|U3|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal1~8_combout\,
	datab => \U1|U3|Equal1~9_combout\,
	datac => \U1|U3|Equal1~4_combout\,
	datad => \U1|U3|Equal1~7_combout\,
	combout => \U1|U3|Equal1~10_combout\);

-- Location: LCCOMB_X8_Y29_N18
\U1|U2|U0|nstate.LOSS_OF_LOCK~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|nstate.LOSS_OF_LOCK~2_combout\ = (\U1|U2|U0|pstate.PATTERN_LOCK~q\ & (\U1|U3|Equal1~10_combout\ & (!\i_fixed_pn_pattern_sel~input_o\ & \i_en_from_gen_to_det~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|pstate.PATTERN_LOCK~q\,
	datab => \U1|U3|Equal1~10_combout\,
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \i_en_from_gen_to_det~input_o\,
	combout => \U1|U2|U0|nstate.LOSS_OF_LOCK~2_combout\);

-- Location: FF_X8_Y29_N19
\U1|U2|U0|pstate.LOSS_OF_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|nstate.LOSS_OF_LOCK~2_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pstate.LOSS_OF_LOCK~q\);

-- Location: LCCOMB_X7_Y28_N6
\U1|U2|U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Selector0~0_combout\ = (\i_en_from_gen_to_det~input_o\ & (!\i_fixed_pn_pattern_sel~input_o\ & !\U1|U2|U0|pstate.LOSS_OF_LOCK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_en_from_gen_to_det~input_o\,
	datac => \i_fixed_pn_pattern_sel~input_o\,
	datad => \U1|U2|U0|pstate.LOSS_OF_LOCK~q\,
	combout => \U1|U2|U0|Selector0~0_combout\);

-- Location: FF_X7_Y28_N7
\U1|U2|U0|pstate.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|Selector0~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pstate.IDLE~q\);

-- Location: LCCOMB_X8_Y27_N26
\U1|U2|U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Selector1~0_combout\ = ((\U1|U2|U0|pstate.GENERATE_SEED~q\ & ((!\U1|U2|U0|seed_cnt\(1)) # (!\U1|U2|U0|seed_cnt\(0))))) # (!\U1|U2|U0|pstate.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|seed_cnt\(0),
	datab => \U1|U2|U0|seed_cnt\(1),
	datac => \U1|U2|U0|pstate.IDLE~q\,
	datad => \U1|U2|U0|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U0|Selector1~0_combout\);

-- Location: LCCOMB_X8_Y27_N2
\U1|U2|U0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Selector1~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U0|Selector1~0_combout\) # ((\U1|U2|U0|pstate.COMPARE~q\ & \U1|U2|U0|pn_cmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|Selector1~0_combout\,
	datab => \U1|U2|U0|pstate.COMPARE~q\,
	datac => \U1|U4|o_pn_det~combout\,
	datad => \U1|U2|U0|pn_cmp~q\,
	combout => \U1|U2|U0|Selector1~1_combout\);

-- Location: FF_X8_Y27_N3
\U1|U2|U0|pstate.GENERATE_SEED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|Selector1~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pstate.GENERATE_SEED~q\);

-- Location: LCCOMB_X8_Y29_N20
\U1|U2|U0|pn_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|pn_data~2_combout\ = (\U1|U2|U0|pstate.COMPARE~q\ & (\U1|U2|U0|pn_data\(3) $ ((\U1|U2|U0|pn_data\(2))))) # (!\U1|U2|U0|pstate.COMPARE~q\ & (\U1|U2|U0|pstate.PATTERN_LOCK~q\ & (\U1|U2|U0|pn_data\(3) $ (\U1|U2|U0|pn_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|pn_data\(3),
	datab => \U1|U2|U0|pstate.COMPARE~q\,
	datac => \U1|U2|U0|pn_data\(2),
	datad => \U1|U2|U0|pstate.PATTERN_LOCK~q\,
	combout => \U1|U2|U0|pn_data~2_combout\);

-- Location: LCCOMB_X8_Y29_N28
\U1|U2|U0|pn_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|pn_data~1_combout\ = (!\U1|U2|U0|pstate.COMPARE~q\ & (!\U1|U2|U0|pstate.PATTERN_LOCK~q\ & \U1|U2|U0|pn_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U0|pstate.COMPARE~q\,
	datac => \U1|U2|U0|pstate.PATTERN_LOCK~q\,
	datad => \U1|U2|U0|pn_data\(0),
	combout => \U1|U2|U0|pn_data~1_combout\);

-- Location: LCCOMB_X8_Y29_N12
\U1|U2|U0|pn_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|pn_data~3_combout\ = (\U1|U2|U0|pstate.GENERATE_SEED~q\ & (((\U1|U0|o_pn_det~combout\)))) # (!\U1|U2|U0|pstate.GENERATE_SEED~q\ & ((\U1|U2|U0|pn_data~2_combout\) # ((\U1|U2|U0|pn_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|pstate.GENERATE_SEED~q\,
	datab => \U1|U2|U0|pn_data~2_combout\,
	datac => \U1|U0|o_pn_det~combout\,
	datad => \U1|U2|U0|pn_data~1_combout\,
	combout => \U1|U2|U0|pn_data~3_combout\);

-- Location: FF_X8_Y29_N13
\U1|U2|U0|pn_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|pn_data~3_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pn_data\(0));

-- Location: LCCOMB_X8_Y29_N4
\U1|U2|U0|pn_data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|pn_data[1]~feeder_combout\ = \U1|U2|U0|pn_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U0|pn_data\(0),
	combout => \U1|U2|U0|pn_data[1]~feeder_combout\);

-- Location: LCCOMB_X8_Y29_N8
\U1|U2|U0|pn_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|pn_data~0_combout\ = (\U1|U2|U0|pstate.GENERATE_SEED~q\) # ((\U1|U2|U0|pstate.COMPARE~q\) # (\U1|U2|U0|pstate.PATTERN_LOCK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|pstate.GENERATE_SEED~q\,
	datab => \U1|U2|U0|pstate.COMPARE~q\,
	datad => \U1|U2|U0|pstate.PATTERN_LOCK~q\,
	combout => \U1|U2|U0|pn_data~0_combout\);

-- Location: FF_X8_Y29_N5
\U1|U2|U0|pn_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|pn_data[1]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U0|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pn_data\(1));

-- Location: FF_X8_Y29_N21
\U1|U2|U0|pn_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U0|pn_data\(1),
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|U2|U0|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pn_data\(2));

-- Location: LCCOMB_X8_Y29_N10
\U1|U2|U0|pn_data[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|pn_data[3]~feeder_combout\ = \U1|U2|U0|pn_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|U0|pn_data\(2),
	combout => \U1|U2|U0|pn_data[3]~feeder_combout\);

-- Location: FF_X8_Y29_N11
\U1|U2|U0|pn_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|pn_data[3]~feeder_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	ena => \U1|U2|U0|pn_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pn_data\(3));

-- Location: LCCOMB_X8_Y29_N14
\U1|U2|U0|pn_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|pn_cmp~0_combout\ = (\U1|U2|U0|pstate.COMPARE~q\ & (\U1|U2|U0|pn_data\(3) $ (\U1|U0|o_pn_det~combout\ $ (\U1|U2|U0|pn_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|pn_data\(3),
	datab => \U1|U2|U0|pstate.COMPARE~q\,
	datac => \U1|U0|o_pn_det~combout\,
	datad => \U1|U2|U0|pn_data\(2),
	combout => \U1|U2|U0|pn_cmp~0_combout\);

-- Location: FF_X8_Y29_N15
\U1|U2|U0|pn_cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|pn_cmp~0_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pn_cmp~q\);

-- Location: LCCOMB_X8_Y27_N4
\U1|U2|U0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Selector2~0_combout\ = (\U1|U2|U0|seed_cnt\(1) & (\U1|U2|U0|seed_cnt\(0) & \U1|U2|U0|pstate.GENERATE_SEED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U0|seed_cnt\(1),
	datac => \U1|U2|U0|seed_cnt\(0),
	datad => \U1|U2|U0|pstate.GENERATE_SEED~q\,
	combout => \U1|U2|U0|Selector2~0_combout\);

-- Location: LCCOMB_X8_Y27_N20
\U1|U2|U0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Selector2~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U0|Selector2~0_combout\) # ((!\U1|U2|U0|pn_cmp~q\ & !\U1|U2|U0|cmp_cnt[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|o_pn_det~combout\,
	datab => \U1|U2|U0|pn_cmp~q\,
	datac => \U1|U2|U0|Selector2~0_combout\,
	datad => \U1|U2|U0|cmp_cnt[3]~15_combout\,
	combout => \U1|U2|U0|Selector2~1_combout\);

-- Location: FF_X8_Y27_N21
\U1|U2|U0|pstate.COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|Selector2~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pstate.COMPARE~q\);

-- Location: LCCOMB_X8_Y27_N28
\U1|U2|U0|cmp_cnt[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|cmp_cnt[3]~15_combout\ = ((!\U1|U2|U0|Equal1~0_combout\ & \U1|U2|U0|cmp_cnt\(4))) # (!\U1|U2|U0|pstate.COMPARE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|Equal1~0_combout\,
	datac => \U1|U2|U0|cmp_cnt\(4),
	datad => \U1|U2|U0|pstate.COMPARE~q\,
	combout => \U1|U2|U0|cmp_cnt[3]~15_combout\);

-- Location: FF_X8_Y27_N7
\U1|U2|U0|cmp_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|cmp_cnt[0]~5_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U0|cmp_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|cmp_cnt\(0));

-- Location: LCCOMB_X8_Y27_N8
\U1|U2|U0|cmp_cnt[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|cmp_cnt[1]~7_combout\ = (\U1|U2|U0|cmp_cnt\(1) & (!\U1|U2|U0|cmp_cnt[0]~6\)) # (!\U1|U2|U0|cmp_cnt\(1) & ((\U1|U2|U0|cmp_cnt[0]~6\) # (GND)))
-- \U1|U2|U0|cmp_cnt[1]~8\ = CARRY((!\U1|U2|U0|cmp_cnt[0]~6\) # (!\U1|U2|U0|cmp_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|U0|cmp_cnt\(1),
	datad => VCC,
	cin => \U1|U2|U0|cmp_cnt[0]~6\,
	combout => \U1|U2|U0|cmp_cnt[1]~7_combout\,
	cout => \U1|U2|U0|cmp_cnt[1]~8\);

-- Location: FF_X8_Y27_N9
\U1|U2|U0|cmp_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|cmp_cnt[1]~7_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U0|cmp_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|cmp_cnt\(1));

-- Location: FF_X8_Y27_N11
\U1|U2|U0|cmp_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|U2|U0|cmp_cnt[2]~9_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sclr => \U1|U2|U0|cmp_cnt[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|cmp_cnt\(2));

-- Location: LCCOMB_X8_Y27_N30
\U1|U2|U0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Equal1~0_combout\ = (((\U1|U2|U0|cmp_cnt\(1)) # (!\U1|U2|U0|cmp_cnt\(0))) # (!\U1|U2|U0|cmp_cnt\(3))) # (!\U1|U2|U0|cmp_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|cmp_cnt\(2),
	datab => \U1|U2|U0|cmp_cnt\(3),
	datac => \U1|U2|U0|cmp_cnt\(1),
	datad => \U1|U2|U0|cmp_cnt\(0),
	combout => \U1|U2|U0|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y27_N16
\U1|U2|U0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Selector3~0_combout\ = (!\U1|U2|U0|Equal1~0_combout\ & (!\U1|U2|U0|pn_cmp~q\ & (\U1|U2|U0|cmp_cnt\(4) & \U1|U2|U0|pstate.COMPARE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|Equal1~0_combout\,
	datab => \U1|U2|U0|pn_cmp~q\,
	datac => \U1|U2|U0|cmp_cnt\(4),
	datad => \U1|U2|U0|pstate.COMPARE~q\,
	combout => \U1|U2|U0|Selector3~0_combout\);

-- Location: LCCOMB_X8_Y29_N30
\U1|U2|U0|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|U0|Selector3~1_combout\ = (\U1|U4|o_pn_det~combout\ & ((\U1|U2|U0|Selector3~0_combout\) # ((\U1|U2|U0|pstate.PATTERN_LOCK~q\ & !\U1|U3|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U0|pstate.PATTERN_LOCK~q\,
	datab => \U1|U2|U0|Selector3~0_combout\,
	datac => \U1|U3|Equal1~10_combout\,
	datad => \U1|U4|o_pn_det~combout\,
	combout => \U1|U2|U0|Selector3~1_combout\);

-- Location: FF_X8_Y29_N29
\U1|U2|U0|pstate.PATTERN_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U0|Selector3~1_combout\,
	clrn => \i_rst_l~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U0|pstate.PATTERN_LOCK~q\);

-- Location: LCCOMB_X10_Y31_N8
\U1|lock_into_counter\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|lock_into_counter~combout\ = (\U1|U2|U0|pstate.PATTERN_LOCK~q\) # (\U1|lock_into_counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U0|pstate.PATTERN_LOCK~q\,
	datad => \U1|lock_into_counter~0_combout\,
	combout => \U1|lock_into_counter~combout\);

-- Location: LCCOMB_X9_Y29_N12
\U1|error_into_counter\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|error_into_counter~combout\ = (\U1|U2|U3|data_cmp~q\) # (\U1|error_into_counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U3|data_cmp~q\,
	datad => \U1|error_into_counter~0_combout\,
	combout => \U1|error_into_counter~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_o_data_from_gen <= \o_data_from_gen~output_o\;

ww_o_en_from_gen <= \o_en_from_gen~output_o\;

ww_o_lock <= \o_lock~output_o\;

ww_o_bit_error <= \o_bit_error~output_o\;
END structure;


