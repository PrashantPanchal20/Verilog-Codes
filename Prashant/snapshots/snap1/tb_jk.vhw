-- C:\XILINX\BIN\PRASHANT
-- VHDL Test Bench created by
-- HDL Bencher 6.1i
-- Mon Feb 21 22:16:38 2022
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

ENTITY tb_jk IS
END tb_jk;

ARCHITECTURE testbench_arch OF tb_jk IS
-- If you get a compiler error on the following line,
-- from the menu do Options->Configuration select VHDL 87
FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";
	COMPONENT jk_ff
		PORT (
			j : In  bit;
			k : In  bit;
			clk : In  bit;
			q : Out  bit
		);
	END COMPONENT;

	SIGNAL j : bit;
	SIGNAL k : bit;
	SIGNAL clk : bit;
	SIGNAL q : bit;

BEGIN
	UUT : jk_ff
	PORT MAP (
		j => j,
		k => k,
		clk => clk,
		q => q
	);

	PROCESS -- clock process for clk,
	BEGIN
		CLOCK_LOOP : LOOP
		clk <= transport '0';
		WAIT FOR 10 ns;
		clk <= transport '1';
		WAIT FOR 10 ns;
		WAIT FOR 40 ns;
		clk <= transport '0';
		WAIT FOR 40 ns;
		END LOOP CLOCK_LOOP;
	END PROCESS;

	PROCESS   -- Process for clk
		VARIABLE TX_OUT : LINE;
		VARIABLE TX_ERROR : INTEGER := 0;

		PROCEDURE CHECK_q(
			next_q : bit;
			TX_TIME : INTEGER
		) IS
			VARIABLE TX_STR : String(1 to 4096);
			VARIABLE TX_LOC : LINE;
		BEGIN
			-- If compiler error ("/=" is ambiguous) occurs in the next line of code
			-- change compiler settings to use explicit declarations only
			IF (q /= next_q) THEN 
				STD.TEXTIO.write(TX_LOC,string'("Error at time="));
				STD.TEXTIO.write(TX_LOC, TX_TIME);
				STD.TEXTIO.write(TX_LOC,string'("ns q="));
				STD.TEXTIO.write(TX_LOC, q);
				STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
				STD.TEXTIO.write(TX_LOC, next_q);
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
		j <= transport '0';
		k <= transport '0';
		-- --------------------
		WAIT FOR 200 ns; -- Time=200 ns
		j <= transport '1';
		-- --------------------
		WAIT FOR 20 ns; -- Time=220 ns
		CHECK_q('1',220);
		-- --------------------
		WAIT FOR 80 ns; -- Time=300 ns
		k <= transport '1';
		-- --------------------
		WAIT FOR 100 ns; -- Time=400 ns
		j <= transport '0';
		-- --------------------
		WAIT FOR 110 ns; -- Time=510 ns
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

CONFIGURATION jk_ff_cfg OF tb_jk IS
	FOR testbench_arch
	END FOR;
END jk_ff_cfg;
