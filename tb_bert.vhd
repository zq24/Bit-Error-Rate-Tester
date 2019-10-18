--Description: test bench for BERT
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
ENTITY tb_bert IS
END ENTITY;
ARCHITECTURE rtl OF tb_bert IS
	--=======================================
	-- Declare Components
	--=======================================
	COMPONENT bert IS
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
	END COMPONENT;
	--========================================
	-- Constant Declarations
	--========================================
	CONSTANT T_clk : TIME := 20 ns;
	--========================================
	-- Signal declarations
	--========================================
	SIGNAL clk : STD_LOGIC;
	SIGNAL rst_l : STD_LOGIC;
	SIGNAL data_en : STD_LOGIC;
	SIGNAL pattern_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL fixed_pn_pattern_sel : STD_LOGIC;
	SIGNAL inject_signal : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL fp_length : std_logic_vector(4 DOWNTO 0);
	SIGNAL fixed_pattern : std_logic_vector(31 DOWNTO 0);
	SIGNAL fixed_pattern_wr : std_logic;
	SIGNAL data_from_gen_to_det : STD_LOGIC;
	SIGNAL en_from_gen_to_det : STD_LOGIC;
	SIGNAL data_from_gen : STD_LOGIC;
	SIGNAL en_from_gen : STD_LOGIC;
	SIGNAL lock : STD_LOGIC;
	SIGNAL bit_error : STD_LOGIC;
	SIGNAL data_gen_to_det : STD_LOGIC;
	SIGNAL en_gen_to_det : STD_LOGIC;
BEGIN
	--========================================
	-- Clock generation process
	--========================================
	clock1_gen : PROCESS -- no sensitivity list
	BEGIN
		clk <= '0';
		WAIT FOR T_clk/2;
		clk <= '1';
		WAIT FOR T_clk/2;
	END PROCESS;
	--========================================
	-- Signal Assignments
	--========================================
	data_gen_to_det <= data_from_gen;
	en_gen_to_det <= en_from_gen;
	data_from_gen_to_det <= data_gen_to_det;
	en_from_gen_to_det <= en_gen_to_det;
	rst_l <= '0', '1' AFTER 20 ns;
	fixed_pn_pattern_sel <= '1', '0' AFTER 5000 ns;
	inject_signal <= "00", "01" AFTER 2500 ns, "00" AFTER 2800 ns, "10" AFTER 3000 ns, "00" AFTER 3050 ns, "10" AFTER 1.4 ms;
	pattern_sel <= "10";
	fixed_pattern_wr <= '0', '1' AFTER 20 ns, '0' AFTER 40 ns;
	data_en <= '0', '1' AFTER 20 ns, '0' AFTER 1100 ns, '1' AFTER 1500 ns, '0' AFTER 4950 ns, '1' AFTER 5000 ns;
	fp_length <= "00111";
	fixed_pattern <= x"0000004B";
	--=======================================
	-- COMPONENT INSTANTIATION
	--=======================================
	U0 : bert
	PORT MAP(
		i_clk => clk, 
		i_rst_l => rst_l, 
		i_data_en => data_en, 
		i_pattern_sel => pattern_sel, 
		i_fixed_pn_pattern_sel => fixed_pn_pattern_sel, 
		i_inject_signal => inject_signal, 
		i_fp_length => fp_length, 
		i_fixed_pattern => fixed_pattern, 
		i_fixed_pattern_wr => fixed_pattern_wr, 
		i_data_from_gen_to_det => data_from_gen_to_det, 
		i_en_from_gen_to_det => en_from_gen_to_det, 
		o_data_from_gen => data_from_gen, 
		o_en_from_gen => en_from_gen, 
		o_lock => lock, 
		o_bit_error => bit_error
		);
END rtl;