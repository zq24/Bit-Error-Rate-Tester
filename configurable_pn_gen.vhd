--Description: configurable PN generator
--Author: Zhaoming Qin
--Date: 5/9/2018
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.ALL;
--=======================================
-- ENTITY DECLARATION
--=======================================
ENTITY configurable_pn_gen IS
	PORT (
		i_clk : IN STD_LOGIC;
		i_rst_1 : IN STD_LOGIC;
		i_data_en : IN STD_LOGIC;
		i_pattern_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		o_data : OUT STD_LOGIC;
		o_en : OUT STD_LOGIC
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF configurable_pn_gen IS
	--=======================================
	-- DECLARE COMPONENTS
	--=======================================
	COMPONENT pn_four IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_1 : IN STD_LOGIC;
			i_data_en : IN STD_LOGIC;
			i_pattern_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			o_data : OUT STD_LOGIC;
			o_en : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT pn_seven IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_1 : IN STD_LOGIC;
			i_data_en : IN STD_LOGIC;
			i_pattern_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			o_data : OUT STD_LOGIC;
			o_en : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT pn_fifteen IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_1 : IN STD_LOGIC;
			i_data_en : IN STD_LOGIC;
			i_pattern_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			o_data : OUT STD_LOGIC;
			o_en : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT pn_thirty_one IS
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
	SIGNAL C1, C2, C3, C4 : STD_LOGIC;
	SIGNAL C5, C6, C7, C8 : STD_LOGIC;
BEGIN
	--=======================================
	-- COMPONENT INSTANTIATION
	--=======================================
	U0 : pn_four
	PORT MAP(i_clk, i_rst_1, i_data_en, i_pattern_sel, C1, C5);
	U1 : pn_seven
	PORT MAP(i_clk, i_rst_1, i_data_en, i_pattern_sel, C2, C6);
	U2 : pn_fifteen
	PORT MAP(i_clk, i_rst_1, i_data_en, i_pattern_sel, C3, C7);
U3 : pn_thirty_one
PORT MAP(i_clk, i_rst_1, i_data_en, i_pattern_sel, C4, C8);
--=======================================
-- OR operation for the output of the four
--different PN generator make the correct
--one output bit
--=======================================
o_data <= C1 OR C2 OR C3 OR C4;
o_en <= C5 OR C6 OR C7 OR C8;
END rtl;