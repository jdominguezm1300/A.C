--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:26:29 10/04/2018
-- Design Name:   
-- Module Name:   /home/ise/ShareWindowsISE/RAMD/sim.vhd
-- Project Name:  RAMD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAMD
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAMD
    PORT(
         din : IN  std_logic_vector(15 downto 0);
         adr : IN  std_logic_vector(5 downto 0);
         wen : IN  std_logic;
         clk : IN  std_logic;
         dout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic_vector(15 downto 0) := (others => '0');
   signal adr : std_logic_vector(5 downto 0) := (others => '0');
   signal wen : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAMD PORT MAP (
          din => din,
          adr => adr,
          wen => wen,
          clk => clk,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
--	type archivo_prueba is file of integer;
--	file prueba : archivo_prueba is in "vectores.txt";
--	variable dato : integer range 0 to 11;
	file arch_res : text;
	variable linea_res : line;
	variable var_D : std_logic_vector(11 downto 0);
   
	file arch_vec : text;
	variable linea_vec : line;
	variable var_di : std_logic_vector(15 downto 0);
	variable var_a : std_logic_vector(6 downto 0);
	variable var_wd : std_logic;
	variable var_do : std_logic_vector(15 downto 0);
	variable cadena : string(1 to 2);
	begin	
		file_open(arch_vec,"vectores.txt",read_mode);
		file_open(arch_res,"resultados.txt",write_mode);
		
		cadena := "Di";
		write(linea_res,cadena,right,cadena'length+1);
      cadena := " A";
		write(linea_res,cadena,right,cadena'length+1);
		cadena := "WD";
		write(linea_res,cadena,right,cadena'length+1);
		cadena := "Do";
		write(linea_res,cadena,right,cadena'length+1);
		writeline(arch_res,linea_res);
		-- hold reset state for 100 ns.
      wait for 100 ns;	
		for i in 0 to 11 loop
			readline(arch_vec,linea_vec);
			Hread(linea_vec,var_di);
			din <= var_di;
			Hread(linea_vec,var);
		end loop;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
