library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity two_digit_seven_seg is 
	port(
		seven_seg_input: in std_logic_vector(3 downto 0):= (others => '0');
		seven_seg_digit_1, seven_seg_digit_2: out std_logic_vector(7 downto 0):= "00000011"
	);

end two_digit_seven_seg;

architecture behavioural of two_digit_seven_seg is 
begin
process(seven_seg_input)
begin
    case seven_seg_input is
    when "0000" => seven_seg_digit_1 <= "00000011"; -- "0"     
						 seven_seg_digit_2 <= "00000011"; -- "0"     
    when "0001" => seven_seg_digit_1 <= "10011111"; -- "1" 
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "0010" => seven_seg_digit_1 <= "00100101"; -- "2"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "0011" => seven_seg_digit_1 <= "00001101"; -- "3"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "0100" => seven_seg_digit_1 <= "10011001"; -- "4"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "0101" => seven_seg_digit_1 <= "01001001"; -- "5"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "0110" => seven_seg_digit_1 <= "01000001"; -- "6"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "0111" => seven_seg_digit_1 <= "00011111"; -- "7"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "1000" => seven_seg_digit_1 <= "00000001"; -- "8"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "1001" => seven_seg_digit_1 <= "00001001"; -- "9"
						 seven_seg_digit_2 <= "00000011"; -- "0"
    when "1010" => seven_seg_digit_1 <= "00000011"; -- "0"
						 seven_seg_digit_2 <= "10011111"; -- "1" 
    when "1011" => seven_seg_digit_1 <= "10011111"; -- "1" 
						 seven_seg_digit_2 <= "10011111"; -- "1"
    when "1100" => seven_seg_digit_1 <= "00100101"; -- "2"
						 seven_seg_digit_2 <= "10011111"; -- "1"
    when "1101" => seven_seg_digit_1 <= "00001101"; -- "3"
						 seven_seg_digit_2 <= "10011111"; -- "1"
    when "1110" => seven_seg_digit_1 <= "10011001"; -- "4"
						 seven_seg_digit_2 <= "10011111"; -- "1"
    when "1111" => seven_seg_digit_1 <= "01001001"; -- "5"
						 seven_seg_digit_2 <= "10011111"; -- "1"
    end case;
end process;
end;
