--Description: top level for detector
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
ENTITY bert_detector IS
	PORT (
		i_clk : IN STD_LOGIC;
		i_rst_l : IN STD_LOGIC;
		i_data : IN STD_LOGIC;
		i_enable : IN STD_LOGIC;
		i_sel_fp_or_pn : IN STD_LOGIC;
		i_fp_length : IN std_logic_vector(4 DOWNTO 0);
		i_fixed_pattern : IN std_logic_vector(31 DOWNTO 0);
		o_lock : OUT STD_LOGIC;
		o_bit_error : OUT STD_LOGIC
	);
END ENTITY;
--=======================================
-- ARCHITECTURE
--=======================================
ARCHITECTURE rtl OF bert_detector IS
	--=======================================
	-- COMPONENT DECLARATION
	--=======================================
	COMPONENT demux IS
		PORT (
			i_data : IN STD_LOGIC;
			i_sel : IN STD_LOGIC;
			o_pn_det : OUT STD_LOGIC;
			o_fp_det : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT configurable_pn_det IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_rst_l : IN STD_LOGIC;
			i_data : IN STD_LOGIC;
			i_en : IN STD_LOGIC;
			i_resync : IN STD_LOGIC;
			o_lock : OUT STD_LOGIC;
			o_bit_error : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT fp_detector IS
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
	END COMPONENT;
	COMPONENT error_counter IS
		PORT (
			i_clk : IN STD_LOGIC;
			i_reset : IN STD_LOGIC;
			i_lock : IN STD_LOGIC;
			i_error : IN STD_LOGIC;
			o_resync : OUT STD_LOGIC
		);
	END COMPONENT;
	--=======================================
	-- SIGNAL DECLARATION
	--=======================================
	SIGNAL C1, C2 : STD_LOGIC;
	SIGNAL C3, C4 : STD_LOGIC;
	SIGNAL pn_lock, pn_error : STD_LOGIC;
	SIGNAL fp_lock, fp_error : STD_LOGIC;
	SIGNAL sig_resync : STD_LOGIC;
	SIGNAL lock_into_counter, error_into_counter : STD_LOGIC;
BEGIN
	--=======================================
	-- make both lock and error signal one
	-- from fixed pattern detector and PN
	-- detector only one signal
	--=======================================
	lock_into_counter <= fp_lock OR pn_lock;
	error_into_counter <= fp_error OR pn_error;
	--=======================================
	-- COMPONENT INSTANTIATION
	--=======================================
	U0 : demux
	PORT MAP(i_data, i_sel_fp_or_pn, C1, C2);
	U1 : fp_detector
	PORT MAP(i_rst_l, i_clk, C2, C4, i_fp_length, i_fixed_pattern, sig_resync, fp_lock, fp_error);
	U2 : configurable_pn_det
	PORT MAP(i_clk, i_rst_l, C1, C3, sig_resync, pn_lock, pn_error);
U3 : error_counter
PORT MAP(i_clk, i_rst_l, lock_into_counter, error_into_counter, sig_resync);
U4 : demux
PORT MAP(i_enable, i_sel_fp_or_pn, C3, C4);
o_lock <= lock_into_counter;
o_bit_error <= error_into_counter;
END rtl;