--Description: 1 to 2 de-multiplexer
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
ENTITY demux IS
	PORT (
		i_data : IN STD_LOGIC;
		i_sel : IN STD_LOGIC;
		o_pn_det : OUT STD_LOGIC;
		o_fp_det : OUT STD_LOGIC
	);
END demux;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF demux IS
BEGIN
	--=======================================
	-- only one output would get assigned by
	-- input based on the selection of the user
	--=======================================
	o_pn_det <= i_data AND(NOT i_sel);
	o_fp_det <= i_data AND i_sel;
END rtl;