--Description: PN4 pattern detector
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
ENTITY pn4_det IS
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
ARCHITECTURE rtl OF pn4_det IS
	--=======================================
	-- STATE TYPE FOR STATE MACHINE
	--=======================================
	TYPE state_type IS (IDLE, GENERATE_SEED, COMPARE, PATTERN_LOCK, LOSS_OF_LOCK);
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL pstate : state_type;
	SIGNAL nstate : state_type;
	SIGNAL seed_tc : STD_LOGIC;
	SIGNAL seed_cnt : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL cmp_tc : STD_LOGIC;
	SIGNAL cmp_cnt : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL pn_cmp : STD_LOGIC;
	SIGNAL pn_data : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL data_delay : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL fdbk : STD_LOGIC;
	SIGNAL resync : STD_LOGIC;
	SIGNAL data_cmp : STD_LOGIC;
BEGIN
	resync <= i_resync;
	--=======================================
	-- Clock the state_type(asynchronous reset)
	--=======================================
	state_reg : PROCESS (i_clk, i_rst_l)
	BEGIN
		IF (i_rst_l = '0') THEN
			pstate <= IDLE;
		ELSIF (i_clk'EVENT AND i_clk = '1') THEN
			pstate <= nstate;
		END IF;
	END PROCESS;
	--=======================================
	-- STATE MACHINE
	--=======================================
	sm_logic : PROCESS (pstate, i_en, seed_tc, pn_cmp, cmp_tc, resync) -- (all)
	BEGIN
		CASE pstate IS
			WHEN IDLE => 
				IF (i_en = '1') THEN
					nstate <= GENERATE_SEED;
				ELSE
					nstate <= IDLE;
				END IF;
			WHEN GENERATE_SEED => 
				IF (i_en = '1') THEN
					IF (seed_tc = '1') THEN
						nstate <= COMPARE;
					ELSE
						nstate <= GENERATE_SEED;
					END IF;
				ELSE
					nstate <= IDLE;
				END IF;
			WHEN COMPARE => 
				IF (i_en = '1') THEN
					IF (pn_cmp = '1') THEN
						nstate <= GENERATE_SEED;
					ELSIF (pn_cmp = '0' AND cmp_tc = '1') THEN
						nstate <= PATTERN_LOCK;
					ELSE
						nstate <= COMPARE;
					END IF;
				ELSE
					nstate <= IDLE;
				END IF;
			WHEN PATTERN_LOCK => 
				IF (i_en = '1') THEN
					--nstate <= PATTERN_LOCK;
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
			WHEN OTHERS => 
				nstate <= IDLE;
		END CASE;
	END PROCESS;
	--=======================================
	-- Shift in 4-bit seed
	--=======================================
	seed_gen : PROCESS (i_clk, i_rst_l)
	BEGIN
		IF (i_rst_l = '0') THEN
			pn_data <= (OTHERS => '0');
		ELSIF (i_clk'EVENT AND i_clk = '1') THEN
			IF (pstate = GENERATE_SEED) THEN
				pn_data <= pn_data(2 DOWNTO 0) & i_data;
			ELSIF (pstate = COMPARE OR pstate = PATTERN_LOCK) THEN
				pn_data <= pn_data(2 DOWNTO 0) & fdbk;
			ELSE
				pn_data <= pn_data;
			END IF;
		END IF;
	END PROCESS;
	--=======================================
	-- The feedback bit for the PN4 generator
	-- OR operation the 4th and 3th bit
	--=======================================
	fdbk <= pn_data(3) XOR pn_data(2);
	--=======================================
	-- Compare the incoming data to generated
	-- data
	--=======================================
	comp : PROCESS (i_clk, i_rst_l)
	BEGIN
		IF (i_rst_l = '0') THEN
			pn_cmp <= '0';
		ELSIF (i_clk'EVENT AND i_clk = '1') THEN
			IF (pstate = COMPARE) THEN
				IF (fdbk = i_data) THEN
					pn_cmp <= '0';
				ELSE
					pn_cmp <= '1';
				END IF;
			ELSE
				pn_cmp <= '0';
			END IF;
		END IF;
	END PROCESS;
	--=======================================
	-- Seed counter, 4 clock cycles
	--=======================================
	PROCESS (i_clk, i_rst_l)
		BEGIN
			IF (i_rst_l = '0') THEN
				seed_cnt <= (OTHERS => '0');
			ELSIF (i_clk'EVENT AND i_clk = '1') THEN
				IF (pstate = GENERATE_SEED) THEN
					IF (seed_cnt = "11") THEN
						seed_cnt <= (OTHERS => '0');
					ELSE
						seed_cnt <= seed_cnt + 1;
					END IF;
				ELSE
					seed_cnt <= (OTHERS => '0');
				END IF;
			END IF;
		END PROCESS;
		seed_tc <= '1' WHEN seed_cnt = "11" ELSE '0';
		--=======================================
		-- repeat the pattern 2 times to make sure
		-- the pattern compared is correct; length
		-- times 2 is 30 bits; 29 is 1D
		--=======================================
		PROCESS (i_clk, i_rst_l)
			BEGIN
				IF (i_rst_l = '0') THEN
					cmp_cnt <= (OTHERS => '0');
				ELSIF (i_clk'EVENT AND i_clk = '1') THEN
					IF (pstate = COMPARE) THEN
						IF (cmp_cnt = x"1D") THEN
							cmp_cnt <= (OTHERS => '0');
						ELSE
							cmp_cnt <= cmp_cnt + 1;
						END IF;
					ELSE
						cmp_cnt <= (OTHERS => '0');
					END IF;
				END IF;
			END PROCESS;
			--=======================================
			-- reset to 0 after repeating pattern 2 times
			--=======================================
			cmp_tc <= '1' WHEN cmp_cnt = x"1D" ELSE '0';
			o_lock <= '1' WHEN pstate = PATTERN_LOCK ELSE '0';
			--===================================================
			-- Once we have locked, signal with a ONE if there
			-- is an error in the data
			--===================================================
			PROCESS (i_clk, i_rst_l)
				BEGIN
					IF (i_rst_l = '0') THEN
						data_cmp <= '0';
					ELSIF (i_clk'EVENT AND i_clk = '1') THEN
						IF (nstate = PATTERN_LOCK) THEN
							IF (fdbk = i_data) THEN
								data_cmp <= '0';
							ELSE
								data_cmp <= '1';
							END IF;
						ELSE
							data_cmp <= '0';
						END IF;
					END IF;
				END PROCESS;
				o_bit_error <= data_cmp;
END rtl;