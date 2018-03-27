library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity programable_4bits_counter is 
	port (
			direction, enable_count, reset, clock : in std_logic;
			mod_value :in std_logic_vector(3 downto 0);
			 counter : out std_logic_vector(3 downto 0);
			 mod_val_digit_1, mod_val_digit_2, counter_digit_1, counter_digit_2: out std_logic_vector(7 downto 0) := "00000011"
		);
end programable_4bits_counter;

architecture behavioural of programable_4bits_counter is 

-- component declaration

component Clock_Divider is
	GENERIC(LIMIT : integer := 50000000); 
	PORT (
			Clock	  : IN	STD_LOGIC;
			Reset	  : IN	STD_LOGIC;
			Clk_Div : OUT	STD_LOGIC
		  );
end component;

component two_digit_seven_seg is 
	port(
		seven_seg_input: in std_logic_vector(3 downto 0):= (others => '0');
		seven_seg_digit_1, seven_seg_digit_2: out std_logic_vector(7 downto 0):= "00000011"
	);

end component;

signal clk: std_LOGIC;
signal modValue, count: std_logic_vector(3 downto 0) := (others => '0');

begin

clockDvider : Clock_Divider port map (
													clock => clock,
													reset => reset,
													clk_Div => clk
													);
counter_display: two_digit_seven_seg port map (
																seven_seg_input => count,
																seven_seg_digit_1 => counter_digit_1,
																seven_seg_digit_2 => counter_digit_2
																);
mod_value_display: two_digit_seven_seg port map (
																seven_seg_input => mod_value,
																seven_seg_digit_1 => mod_val_digit_1,
																seven_seg_digit_2 => mod_val_digit_2
																);
												
process (clk, reset, modValue, mod_value)
	begin
		if (reset = '1') then 
			-- reset is 1
			count <= (others => '0');
			-- locad mod_value
			modValue <= mod_value;
		else
			-- reset is 0 
			modValue <= modValue;
			if rising_edge(clk) then
				if(enable_count = '1') then
				-- count is enabled
					if (direction = '0') then
					-- direction is up
					-- check if mod_value is reached
						if (count < modValue) then
							-- counting up
							count <= count + 1;
						else
							-- reset count
							count <= (others=> '0');
						end if;
					else
					-- direction is down
						-- check if count is > 0
						if (count > "0000") then
							-- counting down
							count <= count - 1;
						else 
							-- reset count to mod_value
							count <= modValue;
						end if;
					end if;
				else
				-- count is disable => no change
					count <= count;
				end if;
		end if;
	end if;
end process;

counter <= count;

end behavioural;