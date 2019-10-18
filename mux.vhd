--Description: 2-to-1 Multiplexer
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
ENTITY mux IS
	PORT (
		i_pn : IN STD_LOGIC;
		i_fixed_pattern : IN STD_LOGIC;
		i_fixed_pn_pattern_sel : IN STD_LOGIC;
		o_data : OUT STD_LOGIC
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF mux IS
BEGIN
	--=======================================
	-- output would be one of the inputs based
	-- on the selection of the user
	--=======================================
	o_data <= i_fixed_pattern WHEN (i_fixed_pn_pattern_sel) = '1' ELSE
	          i_pn;
END rtl;