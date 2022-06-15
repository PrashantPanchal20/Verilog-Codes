-- C:\XILINX\BIN\PRASHANT
-- VHDL Test Bench created by
-- HDL Bencher 6.1i
-- Wed Dec 25 10:35:44 2019
-- 
-- Notes:
-- 1) This testbench has been automatically generated from
--   your Test Bench Waveform
-- 2) To use this as a user modifiable testbench do the following:
--   - Save it as a file with a .vhd extension (i.e. File->Save As...)
--   - Add it to your project as a testbench source (i.e. Project->Add Source...)
-- 

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY Full_adder_waveform IS
END Full_adder_waveform;

ARCHITECTURE testbench_arch OF Full_adder_waveform IS
-- If you get a compiler error on the following line,
-- from the menu do Options->Configuration select VHDL 87
FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";
	COMPONENT full_adder
		PORT (
			a : In  std_logic;
			b : In  std_logic;
			c : In  std_logic;
			sum : Out  std_logic;
			carry : Out  std_logic
		);
	END COMPONENT;

	SIGNAL a : std_logic;
	SIGNAL b : std_logic;
	SIGNAL c : std_logic;
	SIGNAL sum : std_logic;
	SIGNAL carry : std_logic;

BEGIN
	UUT : full_adder
	PORT MAP (
		a => a,
		b => b,
		c => c,
		sum => sum,
		carry => carry
	);

	PROCESS -- clock process for c,
	BEGIN
		CLOCK_LOOP : LOOP
		c <= transport '0';
		WAIT FOR 10 ns;
		c <= transport '1';
		WAIT FOR 10 ns;
		WAIT FOR 40 ns;
		c <= transport '0';
		WAIT FOR 40 ns;
		END LOOP CLOCK_LOOP;
	END PROCESS;

	PROCESS   -- Process for c
		VARIABLE TX_OUT : LINE;
		VARIABLE TX_ERROR : INTEGER := 0;

		PROCEDURE CHECK_sum(
			next_sum : std_logic;
			TX_TIME : INTEGER
		) IS
			VARIABLE TX_STR : String(1 to 4096);
			VARIABLE TX_LOC : LINE;
		BEGIN
			-- If compiler error ("/=" is ambiguous) occurs in the next line of code
			-- change compiler settings to use explicit declarations only
			IF (sum /= next_sum) THEN 
				STD.TEXTIO.write(TX_LOC,string'("Error at time="));
				STD.TEXTIO.write(TX_LOC, TX_TIME);
				STD.TEXTIO.write(TX_LOC,string'("ns sum="));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, sum);
				STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_sum);
				STD.TEXTIO.write(TX_LOC, string'(" "));
				TX_STR(TX_LOC.all'range) := TX_LOC.all;
				STD.TEXTIO.writeline(results, TX_LOC);
				STD.TEXTIO.Deallocate(TX_LOC);
				ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
				TX_ERROR := TX_ERROR + 1;
			END IF;
		END;

		PROCEDURE CHECK_carry(
			next_carry : std_logic;
			TX_TIME : INTEGER
		) IS
			VARIABLE TX_STR : String(1 to 4096);
			VARIABLE TX_LOC : LINE;
		BEGIN
			-- If compiler error ("/=" is ambiguous) occurs in the next line of code
			-- change compiler settings to use explicit declarations only
			IF (carry /= next_carry) THEN 
				STD.TEXTIO.write(TX_LOC,string'("Error at time="));
				STD.TEXTIO.write(TX_LOC, TX_TIME);
				STD.TEXTIO.write(TX_LOC,string'("ns carry="));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, carry);
				STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
				IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_carry);
				STD.TEXTIO.write(TX_LOC, string'(" "));
				TX_STR(TX_LOC.all'range) := TX_LOC.all;
				STD.TEXTIO.writeline(results, TX_LOC);
				STD.TEXTIO.Deallocate(TX_LOC);
				ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
				TX_ERROR := TX_ERROR + 1;
			END IF;
		END;

		BEGIN
		-- --------------------
		a <= transport '1';
		b <= transport '1';
		-- --------------------
		WAIT FOR 20 ns; -- Time=20 ns
		CHECK_sum('1',20);
		-- --------------------
		WAIT FOR 80 ns; -- Time=100 ns
		a <= transport '0';
		b <= transport '0';
		-- --------------------
		WAIT FOR 20 ns; -- Time=120 ns
		CHECK_carry('1',120);
		-- --------------------
		WAIT FOR 80 ns; -- Time=200 ns
		a <= transport '1';
		b <= transport '1';
		-- --------------------
		WAIT FOR 20 ns; -- Time=220 ns
		CHECK_sum('0',220);
		-- --------------------
		WAIT FOR 80 ns; -- Time=300 ns
		b <= transport '0';
		-- --------------------
		WAIT FOR 20 ns; -- Time=320 ns
		CHECK_carry('0',320);
		-- --------------------
		WAIT FOR 80 ns; -- Time=400 ns
		a <= transport '0';
		b <= transport '1';
		-- --------------------
		WAIT FOR 10 ns; -- Time=410 ns
		-- --------------------

		IF (TX_ERROR = 0) THEN 
			STD.TEXTIO.write(TX_OUT,string'("No errors or warnings"));
			STD.TEXTIO.writeline(results, TX_OUT);
			ASSERT (FALSE) REPORT
				"Simulation successful (not a failure).  No problems detected. "
				SEVERITY FAILURE;
		ELSE
			STD.TEXTIO.write(TX_OUT, TX_ERROR);
			STD.TEXTIO.write(TX_OUT, string'(
				" errors found in simulation"));
			STD.TEXTIO.writeline(results, TX_OUT);
			ASSERT (FALSE) REPORT
				"Errors found during simulation"
				SEVERITY FAILURE;
		END IF;
	END PROCESS;
END testbench_arch;

CONFIGURATION full_adder_cfg OF Full_adder_waveform IS
	FOR testbench_arch
	END FOR;
END full_adder_cfg;
