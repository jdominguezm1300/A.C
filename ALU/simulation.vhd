--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:24:35 09/19/2018
-- Design Name:   
-- Module Name:   /home/ise/Documents/ALU/simulation.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simulation IS
END simulation;
 
ARCHITECTURE behavior OF simulation IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         ALUOP : IN  std_logic_vector(3 downto 0);
         RESULT : OUT  std_logic_vector(3 downto 0);
         FLAG : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal ALUOP : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal RESULT : std_logic_vector(3 downto 0);
   signal FLAG : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          ALUOP => ALUOP,
          RESULT => RESULT,
          FLAG => FLAG
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;	
		A <="0101";
		B <="1110";
		ALUOP <="0011";--A+B
		wait for 20 ns;
		ALUOP <="0111";--A-B
		wait for 20 ns;
		ALUOP <="0000";--AND
		wait for 20 ns;
		ALUOP <="1101";--NAND
		wait for 20 ns;
		ALUOP <="0001";--OR
		wait for 20 ns;
		ALUOP <="1100";--NOR
		wait for 20 ns;
		ALUOP <="0010";--XOR
		wait for 20 ns;
		ALUOP <="1010";--XNOR
		wait for 20 ns;
		A <="0101";
		B <="0111";
		ALUOP <="0011";--A+B
		wait for 20 ns;
		A <="0101";
		B <="0101";
		ALUOP <="0111";--A-B
		wait for 20 ns;
		ALUOP <="1101";--NAND
      -- insert stimulus here 

      wait;
   end process;

END;
