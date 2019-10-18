--PROJECT: Fixed Pattern Generator
--AUTHOR: Zhaoming Qin
--DATE: 3/19/2018
--MODULE: fixed_pattern_generator
--DESCRIPTION: variable length fixed pattern
--generator that is capable of serially outputting
--a fixed pattern of anylength, from 2 bits to 32
--bits. The pattern should transmit from msb to lsb.
--VERSION: 1.0
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;
--=======================================
-- ENTITY DECLARATION
--=======================================
ENTITY fixed_pattern_generator IS
	PORT (
		i_reset : IN std_logic;
		i_clk : IN std_logic;
		i_fp_length : IN std_logic_vector(4 DOWNTO 0);
		i_fixed_pattern : IN std_logic_vector(31 DOWNTO 0);
		i_fixed_pattern_wr : IN std_logic;
		i_data_oe : IN std_logic;
		o_fp_data : OUT std_logic;
		o_fp_en : OUT std_logic
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE behavior OF fixed_pattern_generator IS
	--=======================================
	-- SIGNAL DECLARATIONS
	--=======================================
	SIGNAL length_vary : INTEGER;
	SIGNAL length_const : INTEGER;
	SIGNAL output_data : std_logic;
	SIGNAL fixed_pattern_signal : std_logic_vector(31 DOWNTO 0);
BEGIN
	--=======================================
	-- This process updates the fixed pattern
	-- when the pattern write is 1
	--=======================================
	PROCESS (i_clk, i_reset, i_fixed_pattern_wr)
	BEGIN
		IF i_reset = '0' THEN
			fixed_pattern_signal <= x"00000000";
			length_const <= 0;
		ELSIF i_clk'EVENT AND i_clk = '1' THEN
			IF (i_fixed_pattern_wr = '1') THEN
				fixed_pattern_signal <= i_fixed_pattern;
				length_const <= CONV_INTEGER(i_fp_length);
			ELSE --if(i_fixed_pattern_wr = '0') then
				fixed_pattern_signal <= fixed_pattern_signal;
				length_const <= length_const;
			END IF;
		END IF;
	END PROCESS;
	--=======================================
	-- This process shifts the pattern
	--=======================================
	PROCESS (i_clk, i_reset, length_vary, length_const)
		BEGIN
			IF i_reset = '0' THEN
				length_vary <= CONV_INTEGER(i_fp_length);
				output_data <= '0';
			ELSIF i_clk'EVENT AND i_clk = '1' THEN
				IF (length_vary = 1) THEN
					length_vary <= length_const;
					output_data <= fixed_pattern_signal(length_vary - 1);
				ELSIF (length_vary = 0) THEN
					length_vary <= length_const;
					output_data <= '0';
				ELSE
					output_data <= fixed_pattern_signal(length_vary - 1);
					length_vary <= length_vary - 1;
				END IF;
			END IF;
		END PROCESS;
		--=======================================
		--conditions for outputing the data and
		--enable
		--=======================================
		o_fp_data <= output_data WHEN i_data_oe = '1' AND i_fixed_pattern_wr = '0' ELSE '0';
		o_fp_en <= '1' WHEN i_data_oe = '1' AND i_fixed_pattern_wr = '0'ELSE '0';
END ARCHITECTURE;