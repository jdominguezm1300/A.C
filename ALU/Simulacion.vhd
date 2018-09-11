--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:04:54 09/04/2018
-- Design Name:   
-- Module Name:   /home/ise/Documents/ALU/Simulacion.vhd
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
 
ENTITY Simulacion IS
END Simulacion;
 
ARCHITECTURE behavior OF Simulacion IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         BINVERT : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         CN : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal BINVERT : std_logic := '0';
 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal CN : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   --constant <clock>_period : time := 10 ns;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          BINVERT => BINVERT,
          S => S,
          CN => CN
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;	
     A <=X"5";
	  B<=X"2";
	  BINVERT <='0';
	  wait for 20 ns;
	  A<=X"5";
	  B<=X"2";
	  BINVERT <='1';
      -- insert stimulus here 
      wait;
   end process;

END;
