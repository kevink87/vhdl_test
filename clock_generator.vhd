library IEEE;
use IEEE.std_logic_1164.all;

-- Generate a clock signal. 
-- Duty cycle is 50%. 
-- Frequency = 1/(2*PERIOD)
entity clock_generator is
	generic(
		PERIOD : time := 25 ns
	);
	port(
		clock : out std_logic
	);
end entity clock_generator;

architecture BEH of clock_generator is
begin
	CLOCK_DRIVER : process is
	begin
		clock <= '0';
		wait for PERIOD / 2;
		clock <= '1';
		wait for PERIOD / 2;
	end process CLOCK_DRIVER;

end architecture BEH;
