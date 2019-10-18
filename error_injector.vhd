--Description: error-injector
--Author: Zhaoming Qin
--Date: 5/18/2018
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
--=======================================
-- ENTITY DECLARATION
--=======================================
ENTITY error_injector IS
	PORT (
		i_clk : IN STD_LOGIC;
		i_reset : IN STD_LOGIC;
		i_inject_signal : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		i_data : IN STD_LOGIC;
		i_data_en : IN STD_LOGIC;
		o_data : OUT STD_LOGIC;
		o_data_en : OUT STD_LOGIC
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF error_injector IS
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL state : STD_LOGIC;
	SIGNAL count : NATURAL;
	SIGNAL max_count : NATURAL;
BEGIN
	--=======================================
	-- This process inverts the incoming data
	-- and make it an error; counts how many
	-- as well based on the selection by user
	--=======================================
	PROCESS (i_clk, i_reset)
	BEGIN
		IF i_reset = '0' THEN
			count <= 0;
			state <= '0';
			max_count <= 0;
		ELSIF i_clk'EVENT AND i_clk = '1' THEN
			IF i_inject_signal = "01" THEN
				count <= count + 1;
				state <= NOT(i_data);
				max_count <= 3;
			ELSIF i_inject_signal = "10" THEN
				count <= count + 1;
				state <= NOT(i_data);
				max_count <= 20;
			ELSIF count = 0 THEN
				count <= count;
				state <= i_data;
				max_count <= max_count;
			ELSIF count = max_count THEN
				count <= 0;
				state <= i_data;
				max_count <= 0;
				--ELSIF count = 19 THEN
				--count <= 0;
				--state <= i_data;
			ELSE
				state <= NOT(i_data);
				count <= count + 1;
				max_count <= max_count;
			END IF;
		END IF;
	END PROCESS;
	--=======================================
	-- output the modified data and the enable
	-- signal
	--=======================================
	o_data <= state;
	o_data_en <= i_data_en;
END ARCHITECTURE;