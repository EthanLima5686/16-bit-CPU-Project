library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PC_REG is
	port(
		clk : in std_logic;
		reset : in std_logic;
		Input : in std_logic_vector(15 downto 0);
		Output : out std_logic_vector(15 downto 0)
	);
end PC_REG;

architecture Behavioral of PC_REG is
begin
	process(reset, clk)
	begin

--To do: write the code; if reset is zero, the output will be zero. Otherwise, at the rising edge of the clock, the input will be transfered to the output.
    if(reset = '0') then
        Output <= x"0000";
    elsif(clk'event and clk = '1') then
        Output <= Input;
    end if;
    end process;
end Behavioral;
