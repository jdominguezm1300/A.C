library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAMD is
	 generic(
			bdata : integer := 16;
			baddr : integer := 6
	 );
    Port ( din : in  STD_LOGIC_VECTOR (bdata-1 downto 0);
           adr : in  STD_LOGIC_VECTOR (baddr-1 downto 0);
           wen : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           --clr : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (bdata-1 downto 0));
end RAMD;

architecture memoria of RAMD is
type memoria is array(0 to 2**baddr-1) of std_logic_vector(dout'range);
signal ramdist : memoria;
begin
	prog : process (clk)
	--	if(clr = '1')then
	--		ramdist <= (others => (others => '0'));
		if(rising_edge(clk))then
			if(wen = '1')then
				ramdist(adr) <= din;
			end if;
		end if;
	end process prog;
	dout <= ramdist(conv_integer(adr));
end memoria;

