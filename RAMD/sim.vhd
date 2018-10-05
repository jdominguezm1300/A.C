LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
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
			Hread(linea_vec,var_a);
			adr <= var_a;
			read(linea_vec,var_wd);
			wen <= var_wd;
			
			wait until rising_edge(clk);
			var_do := dout;
			Hwrite(linea_res,var_di,right,2);
			Hwrite(linea_res,var_a,right,4);
			write(linea_res,var_wd,right,6);
			Hwrite(linea_res,var_do,right,8);
			-- insert stimulus here 
			writeline(arch_res,linea_res);
		end loop;
      file_close(arch_vec);
		file_close(arch_res);
   end process;

END;
