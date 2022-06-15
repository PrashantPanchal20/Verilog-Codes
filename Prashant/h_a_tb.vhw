-- C:\XILINX\BIN\PRASHANT
-- VHDL Test Bench created by
-- HDL Bencher 6.1i
-- Sun May 15 18:58:11 2022
-- 
-- Notes:
-- 1) This testbench has been automatically generated from
--   your Test Bench Waveform
-- 2) To use this as a user modifiable testbench do the following:
--   - Save it as a file with a .vhd extension (i.e. File->Save As...)
--   - Add it to your project as a testbench source (i.e. Project->Add Source...)
-- 

LIBRARY IEEE;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY h_a_tb IS
END h_a_tb;

ARCHITECTURE testbench_arch OF h_a_tb IS
-- If you get a compiler error on the following line,
-- from the menu do Options->Configuration select VHDL 87
FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";
	COMPONENT h_a
		PORT (
			a : In  bit;
			b : In  bit;
			s : Out  bit;
			c : Out  bit
		);
	END COMPONENT;

	SIGNAL a : bit;
	SIGNAL b : bit;
	SIGNAL s : bit;
	SIGNAL c : bit;

BEGIN
	UUT : h_a
	PORT MAP (
		a => a,
		b => b,
		s => s,
		c => c
	);

	PROCESS -- clock process for b,
	BEGIN
		CLOCK_LOOP : LOOP
		b <= transport '0';
		WAIT FOR 10 ns;
		b <= transport '1';
		WAIT FOR 10 ns;
		WAIT FOR 40 ns;
		b <= transport '0';
		WAIT FOR 40 ns;
		END LOOP CLOCK_LOOP;
	END PROCESS;

	PROCESS   -- Process for b
		VARIABLE TX_OUT : LINE;
		VARIABLE TX_ERROR : INTEGER := 0;

		PROCEDURE CHECK_s(
			next_s : bit;
			TX_TIME : INTEGER
		) IS
			VARIABLE TX_STR : String(1 to 4096);
			VARIABLE TX_LOC : LINE;
		BEGIN
			-- If compiler error ("/=" is ambiguous) occurs in the next line of code
			-- change compiler settings to use explicit declarations only
			IF (s /= next_s) THEN 
				STD.TEXTIO.write(TX_LOC,string'("Error at time="));
				STD.TEXTIO.write(TX_LOC, TX_TIME);
				STD.TEXTIO.write(TX_LOC,string'("ns s="));
				STD.TEXTIO.write(TX_LOC, s);
				STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
				STD.TEXTIO.write(TX_LOC, next_s);
				STD.TEXTIO.write(TX_LOC, string'(" "));
				TX_STR(TX_LOC.all'range) := TX_LOC.all;
				STD.TEXTIO.writeline(results, TX_LOC);
				STD.TEXTIO.Deallocate(TX_LOC);
				ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
				TX_ERROR := TX_ERROR + 1;
			END IF;
		END;

		PROCEDURE CHECK_c(
			next_c : bit;
			TX_TIME : INTEGER
		) IS
			VARIABLE TX_STR : String(1 to 4096);
			VARIABLE TX_LOC : LINE;
		BEGIN
			-- If compiler error ("/=" is ambiguous) occurs in the next line of code
			-- change compiler settings to use explicit declarations only
			IF (c /= next_c) THEN 
				STD.TEXTIO.write(TX_LOC,string'("Error at time="));
				STD.TEXTIO.write(TX_LOC, TX_TIME);
				STD.TEXTIO.write(TX_LOC,string'("ns c="));
				STD.TEXTIO.write(TX_LOC, c);
				STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
				STD.TEXTIO.write(TX_LOC, next_c);
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
		a <= transport '0';
		-- --------------------
		WAIT FOR 100 ns; -- Time=100 ns
		a <= transport '1';
		-- --------------------
		WAIT FOR 200 ns; -- Time=300 ns
		a <= transport '0';
		-- --------------------
		WAIT FOR 100 ns; -- Time=400 ns
		a <= transport '1';
		-- --------------------
		WAIT FOR 200 ns; -- Time=600 ns
		a <= transport '0';
		-- --------------------
		WAIT FOR 110 ns; -- Time=710 ns
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

CONFIGURATION h_a_cfg OF h_a_tb IS
	FOR testbench_arch
	END FOR;
END h_a_cfg;
