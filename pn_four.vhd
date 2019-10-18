--Description: PN 4 generator
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
ENTITY pn_four IS
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
ARCHITECTURE rtl OF pn_four IS
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL fdbk : STD_LOGIC;
	SIGNAL reg : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	--=======================================
	-- seed for the PN4 generator; when this
	-- generator is selected, left shift one
	-- bit the whole pattern every clock cycle
	--=======================================
	shift_reg : PROCESS (i_clk, i_rst_1, i_pattern_sel)
	BEGIN
		IF (i_rst_1 = '0') THEN
			reg <= "1010";
		ELSIF (i_clk'EVENT AND i_clk = '1') THEN
			IF (i_pattern_sel = "00") THEN
				reg <= reg(2 DOWNTO 0) & fdbk;
			ELSE
				reg <= "1010";
			END IF;
		END IF;
	END PROCESS;
	--=======================================
	-- The feedback bit for the PN4 generator
	-- OR operation the 4th and 3th bit
	--=======================================
	fdbk <= reg(3) XOR reg(2);
	o_data <= reg(3) WHEN i_data_en = '1' AND i_pattern_sel = "00" ELSE '0';
	o_en <= '1' WHEN i_data_en = '1' ELSE '0';
END rtl;