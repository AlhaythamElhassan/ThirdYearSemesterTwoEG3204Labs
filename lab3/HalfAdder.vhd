library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity HalfAdder is 
	port(
		in1, in2 : in std_logic;
		sum, cout: out std_logic
	);
end HalfAdder;

architecture dataflow of HalfAdder is
	begin 
		sum <= in1 xor in2;
		cout <= in1 and in2;
	end dataflow;