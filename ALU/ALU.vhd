--Create Date:    19:28:01 09/12/2018 
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
			  ALUOP: in  STD_LOGIC_VECTOR (3 downto 0);
           RESULT : out  STD_LOGIC_VECTOR (N-1 downto 0);
			  FLAG: out STD_LOGIC_VECTOR (3 downto 0)
           );
end ALU;
--ALUOP(3)- AINVERT
--ALUOP(2)- BINVERT
--ALUOP(1)- OP1
--ALUOP(0)- OP2
--FLAG(3) - OV
--FLAG(2) - N
--FLAG(1) - Z
--FLAG(0) - C

architecture Behavioral of ALU is
begin
	PROCESS(A,B, ALUOP(2))
	VARIABLE EB, P, G : STD_LOGIC_VECTOR (N-1 downto 0);
	VARIABLE C:  STD_LOGIC_VECTOR (N downto 0); 
	VARIABLE Temporal, Temporal1, Temporal2: STD_LOGIC;
	VARIABLE MUXA, MUXB, RES: STD_LOGIC_VECTOR (N-1 downto 0);
	BEGIN 
	C(0):= ALUOP(2);
	FLAG(0)<= '0';
	FLAG(3)<= '0';
	FOR I IN 0 TO N-1 LOOP
		MUXA(I):=  A(I) XOR ALUOP(3);
		MUXB(I):=  B(I) XOR ALUOP(2);
		CASE ALUOP(1 DOWNTO 0) IS
			WHEN "00" =>
				RES(I) := MUXA(I) AND MUXB(I);
			WHEN "01" =>
				RES(I) := MUXA(I) OR MUXB(I);
			WHEN "10" =>
				RES(I) := MUXA(I) XOR MUXB(I);
			WHEN OTHERS =>
				EB(I):= (B(I) XOR ALUOP(2));
				P(I):= (A(I) XOR EB(I));
				G(I):= (A(I) AND EB(I));
				RES(I):= (A(I) XOR EB(I) XOR C(I)); 
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
				FLAG(0) <= C(N);
				FLAG(3) <= C(N) XOR C(N-1);
				
		END CASE;
		RESULT <=RES;
		FLAG(2) <= RES(3);
		FLAG(1) <= NOT (RES(0) OR RES(1) OR RES(2) OR RES(3) );
		END LOOP;
		END PROCESS;
		
end Behavioral;


