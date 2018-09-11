----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:54:44 09/04/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
	GENERIC ( N: INTEGER:=4);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           BINVERT : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (N-1 downto 0);
           CN : out  STD_LOGIC);
end ALU;
architecture Behavioral of ALU is
begin
	PROCESS(A,B, BINVERT)
	VARIABLE EB, P, G : STD_LOGIC_VECTOR (N-1 downto 0);
	VARIABLE C:  STD_LOGIC_VECTOR (N downto 0); 
	VARIABLE Temporal, Temporal1, Temporal2: STD_LOGIC;
	BEGIN 
	C(0):= BINVERT;
	FOR I IN 0 TO N-1 LOOP
	EB(I):= (B(I) XOR BINVERT);
	P(I):= (A(I) XOR EB(I));
	G(I):= (A(I) AND EB(I));
	S(I)<= (A(I) XOR EB(I) XOR C(I)); 
		Temporal1:='0';
		FOR J IN 0 TO I-1 LOOP
			Temporal:= '1';
			FOR K IN J+1 TO I LOOP
			Temporal:= (Temporal AND P(K)); 
			END LOOP;
			Temporal1:= (Temporal1 OR (G(J) AND Temporal));
		END LOOP;
		Temporal:='1';
		Temporal2:='0';
		FOR L IN 0 TO I LOOP
			Temporal:=  (Temporal AND P(L));
		END LOOP;
		Temporal2:= (Temporal2 OR (C(0) AND Temporal));
	C(I+1):= (G(I) OR Temporal1 OR Temporal2 );	
	END LOOP;
	CN <= C(N);
	END PROCESS;
end Behavioral;

