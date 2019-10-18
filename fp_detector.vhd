-- PROJECT: Loopback BERT
-- AUTHOR: J Bonniwell
-- DATE: 3/23/2018
-- MODULE: fp_det
-- DESCRIPTION: receive serial fixed pattern
-- and detect the pattern and any errors
-- VERSION: 1.0
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
-- USE ieee.numeric_std.all;
-- ENTITY DECLARATION
ENTITY fp_detector IS
	PORT (
		i_rst_l : IN STD_LOGIC;
		i_clk : IN STD_LOGIC;
		i_data : IN STD_LOGIC;
		i_data_en : IN STD_LOGIC;
		i_length : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		i_pattern : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		i_resync : IN STD_LOGIC;
		o_lock : OUT STD_LOGIC;
		o_bit_error : OUT STD_LOGIC
	);
END fp_detector;
ARCHITECTURE rtl OF fp_detector IS
	-- COMPONENT DECLARATIONS
	-- SIGNAL DECLARATIONS
	TYPE state_type IS (IDLE, FIND_FIRST_BIT, FIND_PATTERN, WAIT_PATTERN_LENGTH, 
	PATTERN_LOCK, LOSS_OF_LOCK, RESTART);
	SIGNAL nstate : state_type;
	SIGNAL pstate : state_type;
	SIGNAL detector_en : STD_LOGIC;
	SIGNAL first_bit_cmp : STD_LOGIC;
	SIGNAL data_cnt_tc : STD_LOGIC;
	SIGNAL data_cnt : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL pattern_cmp : STD_LOGIC;
	SIGNAL resync : STD_LOGIC;
	--===================================================
	-- Added signals after coding
	--===================================================
	SIGNAL pattern_shift : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL fp_length : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL pattern_bit : STD_LOGIC;
	SIGNAL fixed_data_cmp : STD_LOGIC;
	SIGNAL detector_en_dly : STD_LOGIC;
	SIGNAL data_delay : STD_LOGIC;
BEGIN
	resync <= i_resync;
	-- Sync external signal
	PROCESS (i_clk, i_rst_l)
	BEGIN
		IF (i_rst_l = '0') THEN
			detector_en_dly <= '0';
			detector_en <= '0';
		ELSIF (i_clk'EVENT AND i_clk = '1') THEN
			detector_en_dly <= i_data_en;
			detector_en <= detector_en_dly;
		END IF;
	END PROCESS;
	-- CLOCK THE STATE
	state_reg : PROCESS (i_rst_l, i_clk)
	BEGIN
		IF (i_rst_l = '0') THEN
			pstate <= IDLE;
		ELSIF (i_clk'EVENT AND i_clk = '1') THEN
			pstate <= nstate;
		END IF;
	END PROCESS;
	-- STATE MACHINE
	sm : PROCESS (pstate, data_cnt_tc, first_bit_cmp, pattern_cmp, resync, 
		detector_en)
	BEGIN
		CASE pstate IS
			WHEN IDLE => 
				IF (detector_en = '1') THEN
					nstate <= FIND_FIRST_BIT;
				ELSE
					nstate <= IDLE;
				END IF;
			WHEN FIND_FIRST_BIT => 
				IF (detector_en = '1') THEN
					IF (first_bit_cmp = '1') THEN
						nstate <= FIND_PATTERN;
					ELSE
						nstate <= FIND_FIRST_BIT;
					END IF;
				ELSE
					nstate <= IDLE;
				END IF;
			WHEN FIND_PATTERN => 
				IF (detector_en = '1') THEN
					IF (data_cnt_tc = '1') THEN
						IF (pattern_cmp = '1') THEN
							nstate <= PATTERN_LOCK;
						ELSE
							nstate <= FIND_FIRST_BIT;
						END IF;
					ELSE
						IF (pattern_cmp = '1') THEN
							nstate <= FIND_PATTERN;
						ELSE
							nstate <= WAIT_PATTERN_LENGTH;
						END IF;
					END IF;
				ELSE
					nstate <= IDLE;
				END IF;
				-- Ended here on March 23,2018
			WHEN WAIT_PATTERN_LENGTH => 
				IF (detector_en = '1') THEN
					IF (data_cnt_tc = '1') THEN
						nstate <= RESTART;
					ELSE
						nstate <= WAIT_PATTERN_LENGTH;
					END IF;
				ELSE
					nstate <= IDLE;
				END IF;
			WHEN RESTART => 
				nstate <= FIND_FIRST_BIT;
			WHEN PATTERN_LOCK => 
				IF (detector_en = '1') THEN
					IF (resync = '1') THEN
						nstate <= LOSS_OF_LOCK;
					ELSE
						nstate <= PATTERN_LOCK;
					END IF;
				ELSE
					nstate <= IDLE;
				END IF;
			WHEN LOSS_OF_LOCK => 
				nstate <= IDLE;
				--===================================================
				-- Always have an others case
				--===================================================
			WHEN OTHERS => 
				nstate <= IDLE;
		END CASE;
	END PROCESS;
	--===================================================
	-- Count the total bits received
	--===================================================
	PROCESS (i_clk, i_rst_l)
		BEGIN
			IF (i_rst_l = '0') THEN
				data_cnt <= (OTHERS => '0');
			ELSIF (i_clk'EVENT AND i_clk = '1') THEN
				IF (nstate = FIND_FIRST_BIT) THEN
					-- This will force the count to be 1 when we find the first bit
					-- even if we have to compare 5 bits first
					data_cnt <= "00001";
				ELSIF (nstate = FIND_PATTERN OR nstate = WAIT_PATTERN_LENGTH) THEN
					data_cnt <= data_cnt + 1;
				ELSIF (nstate = RESTART OR nstate = IDLE) THEN
					data_cnt <= (OTHERS => '0');
				ELSE
					data_cnt <= data_cnt;
				END IF;
			END IF;
		END PROCESS;
		--===================================================
		-- Generate the terminal count signal when we have
		-- receive the number of bits in our pattern
		--===================================================
		PROCESS (i_clk, i_rst_l)
			BEGIN
				IF (i_rst_l = '0') THEN
					data_cnt_tc <= '0';
				ELSIF (i_clk'EVENT AND i_clk = '1') THEN
					IF (data_cnt = (fp_length)) THEN
						data_cnt_tc <= '1';
					ELSE
						data_cnt_tc <= '0';
					END IF;
				END IF;
			END PROCESS;
			-- Made into a variable so we can use it mult. places
			fp_length <= i_length - 1;
			--===================================================
			-- Given the programmed n-bit fixed pattern, create
			-- the serial fixed pattern to compare to the
			-- incoming data (MSB first)
			--===================================================
			PROCESS (i_clk, i_rst_l)
				BEGIN
					IF (i_rst_l = '0') THEN
						pattern_shift <= i_pattern;
					ELSIF (i_clk'EVENT AND i_clk = '1') THEN
						IF (nstate = IDLE OR nstate = RESTART) THEN
							-- Reset the pattern
							pattern_shift <= i_pattern;
						ELSIF (nstate = FIND_PATTERN OR nstate = PATTERN_LOCK) THEN
							pattern_shift <= pattern_shift(30 DOWNTO 0) & 
								pattern_shift(CONV_INTEGER(fp_length));
						ELSE
							pattern_shift <= pattern_shift;
						END IF;
					END IF;
				END PROCESS;
				-- Pull out the bit to compare to the incoming bit
				pattern_bit <= pattern_shift(CONV_INTEGER(fp_length));
				--===================================================
				-- Compare the self-generated pattern to the
				-- incoming stream
				--===================================================
				PROCESS (i_clk, i_rst_l)
					BEGIN
						IF (i_rst_l = '0') THEN
							first_bit_cmp <= '0';
							pattern_cmp <= '0';
						ELSIF (i_clk'EVENT AND i_clk = '1') THEN
							IF (nstate = FIND_FIRST_BIT) THEN
								IF (i_data = pattern_bit) THEN
									first_bit_cmp <= '1';
								ELSE
									first_bit_cmp <= '0';
								END IF;
								pattern_cmp <= '0';
							ELSIF (nstate = FIND_PATTERN) THEN
								first_bit_cmp <= '0';
								-- Use data delay because we do not generate the pattern until
								-- we get to nstate = FIND PATTERN
								IF (data_delay = pattern_bit) THEN
									pattern_cmp <= '1';
								ELSE
									pattern_cmp <= '0';
								END IF;
							ELSE
								first_bit_cmp <= '0';
								pattern_cmp <= '0';
							END IF;
						END IF;
					END PROCESS;
					--===================================================
					-- Delay the incoming data by one clock cylce to
					-- align with the pattern generated in this code
					--===================================================
					PROCESS (i_clk, i_rst_l)
						BEGIN
							IF (i_rst_l = '0') THEN
								data_delay <= '0';
							ELSIF (i_clk'EVENT AND i_clk = '1') THEN
								data_delay <= i_data;
							END IF;
						END PROCESS;
						--===================================================
						-- Once we have locked, signal with a ONE if there
						-- is an error in the data
						--===================================================
						PROCESS (i_clk, i_rst_l)
							BEGIN
								IF (i_rst_l = '0') THEN
									fixed_data_cmp <= '0';
								ELSIF (i_clk'EVENT AND i_clk = '1') THEN
									IF (nstate = PATTERN_LOCK) THEN
										IF (data_delay = pattern_bit) THEN
											fixed_data_cmp <= '0';
										ELSE
											fixed_data_cmp <= '1';
										END IF;
									ELSE
										fixed_data_cmp <= '0';
									END IF;
								END IF;
							END PROCESS;
							o_bit_error <= fixed_data_cmp;
							--===================================================
							-- Generte the signal to start counting the incoming
							-- bits allowing us to calculate the BER
							--===================================================
							PROCESS (i_clk, i_rst_l)
								BEGIN
									IF (i_rst_l = '0') THEN
										o_lock <= '0';
									ELSIF (i_clk'EVENT AND i_clk = '1') THEN
										IF (nstate = PATTERN_LOCK) THEN
											o_lock <= '1';
										ELSE
											o_lock <= '0';
										END IF;
									END IF;
								END PROCESS;
END rtl;