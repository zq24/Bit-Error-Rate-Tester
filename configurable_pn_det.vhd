--Description: Configurable PN detector
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
ENTITY configurable_pn_det IS
	PORT (
		i_clk : IN STD_LOGIC;
		i_rst_l : IN STD_LOGIC;
		i_data : IN STD_LOGIC;
		i_en : IN STD_LOGIC;
		i_resync : IN STD_LOGIC;
		o_lock : OUT STD_LOGIC;
		o_bit_error : OUT STD_LOGIC
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF configurable_pn_det IS
	--=======================================
	-- DECLARE COMPONENTS
	--=======================================
	COMPONENT pn4_det IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_l : IN STD_LOGIC;
			i_data : IN STD_LOGIC;
			i_en : IN STD_LOGIC;
			i_resync : IN STD_LOGIC;
			o_lock : OUT STD_LOGIC;
			o_bit_error : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT pn7_det IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_l : IN STD_LOGIC;
			i_data : IN STD_LOGIC;
			i_en : IN STD_LOGIC;
			i_resync : IN STD_LOGIC;
			o_lock : OUT STD_LOGIC;
			o_bit_error : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT pn15_det IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_l : IN STD_LOGIC;
			i_data : IN STD_LOGIC;
			i_en : IN STD_LOGIC;
			i_resync : IN STD_LOGIC;
			o_lock : OUT STD_LOGIC;
			o_bit_error : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT pn31_det IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_l : IN STD_LOGIC;
			i_data : IN STD_LOGIC;
			i_en : IN STD_LOGIC;
			i_resync : IN STD_LOGIC;
			o_lock : OUT STD_LOGIC;
			o_bit_error : OUT STD_LOGIC
		);
	END COMPONENT;
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL C1, C2, C3, C4 : STD_LOGIC;
	SIGNAL C5, C6, C7, C8 : STD_LOGIC;
	SIGNAL resync_sig : STD_LOGIC;
BEGIN
	resync_sig <= i_resync;
	--=======================================
	-- COMPONENT INSTANTIATION
	--=======================================
	U0 : pn4_det
	PORT MAP(i_clk, i_rst_l, i_data, i_en, resync_sig, C1, C5);
	U1 : pn7_det
	PORT MAP(i_clk, i_rst_l, i_data, i_en, resync_sig, C2, C6);
	U2 : pn15_det
	PORT MAP(i_clk, i_rst_l, i_data, i_en, resync_sig, C3, C7);
U3 : pn31_det
PORT MAP(i_clk, i_rst_l, i_data, i_en, resync_sig, C4, C8);
o_lock <= C1 OR C2 OR C3 OR C4;
o_bit_error <= C5 OR C6 OR C7 OR C8;
END rtl;