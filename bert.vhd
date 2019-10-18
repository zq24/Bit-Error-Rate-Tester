--Description: top level for BERT.
--Author: Zhaoming Qin
--Date: 5/18/2018
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.ALL;
--=======================================
-- ENTITY DECLARATION
--=======================================
ENTITY bert IS
	PORT (
		i_clk : IN STD_LOGIC;
		i_rst_l : IN STD_LOGIC;
		i_data_en : IN STD_LOGIC;
		i_pattern_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		i_fixed_pn_pattern_sel : IN STD_LOGIC;
		i_inject_signal : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		i_fp_length : IN std_logic_vector(4 DOWNTO 0);
		i_fixed_pattern : IN std_logic_vector(31 DOWNTO 0);
		i_fixed_pattern_wr : IN std_logic;
		i_data_from_gen_to_det : IN STD_LOGIC;
		i_en_from_gen_to_det : IN STD_logic;
		o_data_from_gen : OUT STD_LOGIC;
		o_en_from_gen : OUT STD_LOGIC;
		o_lock : OUT STD_LOGIC;
		o_bit_error : OUT STD_LOGIC
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF bert IS
	--=======================================
	-- COMPONENT DECLARATION
	--=======================================
	COMPONENT bert_detector IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_l : IN STD_LOGIC;
			i_data : IN STD_LOGIC;
			i_enable : IN STD_LOGIC;
			i_sel_fp_or_pn : IN STD_LOGIC;
			i_fp_length : IN std_logic_vector(4 DOWNTO 0);
			i_fixed_pattern : IN std_logic_vector(31 DOWNTO 0);
			o_lock : OUT STD_LOGIC;
			o_bit_error : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT bert_generator IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_1 : IN STD_LOGIC;
			i_data_en : IN STD_LOGIC;
			i_pattern_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_fixed_pn_pattern_sel : IN STD_LOGIC;
			i_inject_signal : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_fp_length : IN std_logic_vector(4 DOWNTO 0);
			i_fixed_pattern : IN std_logic_vector(31 DOWNTO 0);
			i_fixed_pattern_wr : IN std_logic;
			o_data : OUT STD_LOGIC;
			o_enable : OUT STD_LOGIC
		);
	END COMPONENT;
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL C1, C2 : STD_LOGIC;
	--=======================================
	-- COMPONENT INSTANTIATION
	--=======================================
BEGIN
	U0 : bert_generator
	PORT MAP(i_clk, i_rst_l, i_data_en, i_pattern_sel, i_fixed_pn_pattern_sel, i_inject_signal, i_fp_length, i_fixed_pattern, i_fixed_pattern_wr, o_data_from_gen, o_en_from_gen);
	U1 : bert_detector
	PORT MAP(i_clk, i_rst_l, i_data_from_gen_to_det, i_en_from_gen_to_det, i_fixed_pn_pattern_sel, i_fp_length, i_fixed_pattern, o_lock, o_bit_error);
END rtl;