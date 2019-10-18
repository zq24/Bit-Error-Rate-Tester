--Description: edge detector
--Author: Zhaoming Qin
--Date: 5/18/2018
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
--=======================================
-- ENTITY DECLARATION
--=======================================
ENTITY debounce IS
	PORT (
		i_button : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		i_clk : IN STD_LOGIC;
		i_reset : IN STD_LOGIC;
		o_button : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF debounce IS
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL delay1, delay2, delay3 : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	--=======================================
	-- This process delays the signal one and
	-- two clock cycle then be assigned
	--=======================================
	PROCESS (i_clk, i_reset)
	BEGIN
		IF i_reset = '0' THEN
			delay1 <= "00";
			delay2 <= "00";
			delay3 <= "00";
		ELSIF i_clk'EVENT AND i_clk = '1' THEN
			delay1 <= i_button;
			delay2 <= delay1;
			delay3 <= delay2;
		END IF;
	END PROCESS;
	--=======================================
	-- only one clock cycle is high
	--=======================================
	o_button <= NOT delay3 AND delay2;
END rtl;