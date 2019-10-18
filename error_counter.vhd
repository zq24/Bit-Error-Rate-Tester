--Description: error counter.
--Author: Zhaoming Qin
--Date: 5/18/2018
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
--=======================================
-- ENTITY DECLARATION
--=======================================
ENTITY error_counter IS
	PORT (
		i_clk : IN STD_LOGIC;
		i_reset : IN STD_LOGIC;
		i_lock : IN STD_LOGIC;
		i_error : IN STD_LOGIC;
		o_resync : OUT STD_LOGIC
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF error_counter IS
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL count_error : INTEGER;
	SIGNAL count_data : INTEGER;
BEGIN
	--=======================================
	-- count the total number of incoming data
	-- 1024 is the max
	--=======================================
	PROCESS (i_clk, i_reset, count_data)
	BEGIN
		IF i_reset = '0' THEN
			count_data <= 0;
		ELSIF i_clk'EVENT AND i_clk = '1' THEN
			IF count_data < 1024 THEN
				count_data <= count_data + 1;
			ELSE
				count_data <= 0;
			END IF;
		END IF;
	END PROCESS;
	--=======================================
	-- This process counts the error; if it
	-- reaches the max number of error or max
	-- number of data, resync signal would be
	-- sent.
	--=======================================
	PROCESS (i_clk, i_reset, i_error, i_lock, count_data)
		BEGIN
			IF i_reset = '0' THEN
				count_error <= 0;
			ELSIF i_clk'EVENT AND i_clk = '1' THEN
				IF i_error = '1' AND i_lock = '1' AND count_error < 16 THEN
					count_error <= count_error + 1;
				ELSIF count_data = 1024 OR i_lock = '0' THEN
					count_error <= 0;
				ELSE
					count_error <= count_error;
				END IF;
			END IF;
		END PROCESS;
		--count_error <= 0 WHEN count_data = 1024 ELSE count_error;
		o_resync <= '1' WHEN count_error = 16 ELSE '0';
END rtl;