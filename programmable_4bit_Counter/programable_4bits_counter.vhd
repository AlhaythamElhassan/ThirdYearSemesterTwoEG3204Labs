library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity programable_4bits_counter is 
	port (
			direction, enable_count, reset, clock : in std_logic;
			mod_value :in std_logic_vector(3 downto 0);
			 counter : out std_logic_vector(3 downto 0)
		);
end programable_4bits_counter;

architecture behavioural of programable_4bits_counter is 

-- component declaration

component Clock_Divider is
	GENERIC(LIMIT : integer := 2); 
	PORT (
			Clock	  : IN	STD_LOGIC;
			Reset	  : IN	STD_LOGIC;
			Clk_Div : OUT	STD_LOGIC
		  );
end component;

begin

end behavioural;