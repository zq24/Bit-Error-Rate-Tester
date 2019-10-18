--Description: top level for generator
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
ENTITY bert_generator IS
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
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF bert_generator IS
	--=======================================
	-- COMPONENT DECLARATION
	--=======================================
	COMPONENT debounce IS
		PORT (
			i_button : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_clk : IN STD_LOGIC;
			i_reset : IN STD_LOGIC;
			o_button : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT mux IS
		PORT (
			i_pn : IN STD_LOGIC;
			i_fixed_pattern : IN STD_LOGIC;
			i_fixed_pn_pattern_sel : IN STD_LOGIC;
			o_data : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT error_injector IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_reset : IN STD_LOGIC;
			i_inject_signal : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_data : IN STD_LOGIC;
			i_data_en : IN STD_LOGIC;
			o_data : OUT STD_LOGIC;
			o_data_en : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT fixed_pattern_generator IS
		PORT (
			i_reset : IN STD_LOGIC;
			i_clk : IN STD_LOGIC;
			i_fp_length : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			i_fixed_pattern : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			i_fixed_pattern_wr : IN STD_LOGIC;
			i_data_oe : IN STD_LOGIC;
			o_fp_data : OUT STD_LOGIC;
			o_fp_en : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT configurable_pn_gen IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_1 : IN STD_LOGIC;
			i_data_en : IN STD_LOGIC;
			i_pattern_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			o_data : OUT STD_LOGIC;
			o_en : OUT STD_LOGIC
		);
	END COMPONENT;
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL C1, C2 : STD_LOGIC;
	SIGNAL C3, C4 : STD_LOGIC;
	SIGNAL C5 : STD_LOGIC;
	SIGNAL C6 : STD_LOGIC;
	SIGNAL C7, C8 : STD_LOGIC;
	SIGNAL button_sig : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	C6 <= C4 OR C2;
	--=======================================
	-- COMPONENT INSTANTIATION
	--=======================================
	U0 : debounce
	PORT MAP(i_inject_signal, i_clk, i_rst_1, button_sig);
	U1 : fixed_pattern_generator
	PORT MAP(i_rst_1, i_clk, i_fp_length, i_fixed_pattern, i_fixed_pattern_wr, i_data_en, C1, C2);
	U2 : configurable_pn_gen
	PORT MAP(i_clk, i_rst_1, i_data_en, i_pattern_sel, C3, C4);
U3 : mux
PORT MAP(C3, C1, i_fixed_pn_pattern_sel, C5);
U4 : error_injector
PORT MAP(i_clk, i_rst_1, button_sig, C5, C6, o_data, o_enable);
END rtl;