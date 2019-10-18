--Description: PN 31 generator
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
ENTITY pn_thirty_one IS
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
ARCHITECTURE rtl OF pn_thirty_one IS
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL fdbk : STD_LOGIC;
	SIGNAL reg : STD_LOGIC_VECTOR(30 DOWNTO 0);
BEGIN
	--=======================================
	-- seed for the PN31 generator; when this
	-- generator is selected, left shift one
	-- bit the whole pattern every clock cycle
	--=======================================
	shift_reg : PROCESS (i_clk, i_rst_1, i_pattern_sel)
	BEGIN
		IF (i_rst_1 = '0') THEN
			reg <= "1010101010101010101010101010101";
		ELSIF (i_clk'EVENT AND i_clk = '1') THEN
			IF (i_pattern_sel = "11") THEN
				reg <= reg(29 DOWNTO 0) & fdbk;
			ELSE
				reg <= "1010101010101010101010101010101";
			END IF;
		END IF;
	END PROCESS;
	--=======================================
	-- The feedback bit for the PN31 generator
	-- OR operation the 31th and 28th bit
	--=======================================
	fdbk <= reg(30) XOR reg(27);
	o_data <= reg(30) WHEN i_data_en = '1' AND i_pattern_sel = "11" ELSE '0';
	o_en <= '1' WHEN i_data_en = '1' ELSE '0';
END rtl;