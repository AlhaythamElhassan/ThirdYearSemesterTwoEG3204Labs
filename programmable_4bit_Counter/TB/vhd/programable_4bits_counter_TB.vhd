LIBRARY ieee  ; 
LIBRARY std  ; 
 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 

USE work.random_generators.all  ; 

ENTITY programable_4bits_counter_TB  IS 
END ; 
 
ARCHITECTURE behavioural OF programable_4bits_counter_TB IS
  SIGNAL counter   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL mod_value   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL clock   :  STD_LOGIC  ; 
  SIGNAL direction   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL enable_count   :  STD_LOGIC  ; 
  COMPONENT programable_4bits_counter  
    PORT ( 
      counter  : out std_logic_vector (3 downto 0) ; 
      mod_value  : in std_logic_vector (3 downto 0) ; 
      clock  : in STD_LOGIC ; 
      direction  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ; 
      enable_count  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : programable_4bits_counter  
    PORT MAP ( 
      counter   => counter  ,
      mod_value   => mod_value  ,
      clock   => clock  ,
      direction   => direction  ,
      reset   => reset  ,
      enable_count   => enable_count   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 640 ns, Period = 0 ns
  Process
	Begin
	 reset  <= '1'  ;
	wait for 30 ns ;
	 reset  <= '0'  ;
	wait for 610 ns ;
-- dumped values till 640 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 640 ns, Period = 10 ns
  Process
	Begin
	 mod_value  <= "1100"  ;
	wait for 30 ns ;
	 mod_value  <= "0010"  ;
	wait for 10 ns ;
	 mod_value  <= "1011"  ;
	wait for 10 ns ;
	 mod_value  <= "0011"  ;
	wait for 10 ns ;
	 mod_value  <= "0010"  ;
	wait for 10 ns ;
	 mod_value  <= "0001"  ;
	wait for 10 ns ;
	 mod_value  <= "0010"  ;
	wait for 10 ns ;
	 mod_value  <= "0111"  ;
	wait for 10 ns ;
	 mod_value  <= "1101"  ;
	wait for 10 ns ;
	 mod_value  <= "0110"  ;
	wait for 10 ns ;
	 mod_value  <= "0111"  ;
	wait for 10 ns ;
	 mod_value  <= "1101"  ;
	wait for 10 ns ;
	 mod_value  <= "1000"  ;
	wait for 10 ns ;
	 mod_value  <= "0110"  ;
	wait for 10 ns ;
	 mod_value  <= "1000"  ;
	wait for 10 ns ;
	 mod_value  <= "0100"  ;
	wait for 10 ns ;
	 mod_value  <= "0011"  ;
	wait for 10 ns ;
	 mod_value  <= "0110"  ;
	wait for 10 ns ;
	 mod_value  <= "0101"  ;
	wait for 10 ns ;
	 mod_value  <= "0100"  ;
	wait for 10 ns ;
	 mod_value  <= "1000"  ;
	wait for 10 ns ;
	 mod_value  <= "0100"  ;
	wait for 10 ns ;
	 mod_value  <= "0011"  ;
	wait for 10 ns ;
	 mod_value  <= "0101"  ;
	wait for 10 ns ;
	 mod_value  <= "1011"  ;
	wait for 10 ns ;
	 mod_value  <= "1101"  ;
	wait for 10 ns ;
	 mod_value  <= "0000"  ;
	wait for 10 ns ;
	 mod_value  <= "1000"  ;
	wait for 10 ns ;
	 mod_value  <= "1001"  ;
	wait for 10 ns ;
	 mod_value  <= "1010"  ;
	wait for 20 ns ;
	 mod_value  <= "1111"  ;
	wait for 10 ns ;
	 mod_value  <= "0101"  ;
	wait for 10 ns ;
	 mod_value  <= "0100"  ;
	wait for 10 ns ;
	 mod_value  <= "1110"  ;
	wait for 10 ns ;
	 mod_value  <= "1010"  ;
	wait for 10 ns ;
	 mod_value  <= "1101"  ;
	wait for 10 ns ;
	 mod_value  <= "0111"  ;
	wait for 10 ns ;
	 mod_value  <= "1001"  ;
	wait for 10 ns ;
	 mod_value  <= "0110"  ;
	wait for 20 ns ;
	 mod_value  <= "0011"  ;
	wait for 10 ns ;
	 mod_value  <= "1111"  ;
	wait for 10 ns ;
	 mod_value  <= "0100"  ;
	wait for 10 ns ;
	 mod_value  <= "1000"  ;
	wait for 10 ns ;
	 mod_value  <= "1100"  ;
	wait for 10 ns ;
	 mod_value  <= "1011"  ;
	wait for 10 ns ;
	 mod_value  <= "0101"  ;
	wait for 10 ns ;
	 mod_value  <= "1101"  ;
	wait for 10 ns ;
	 mod_value  <= "0110"  ;
	wait for 10 ns ;
	 mod_value  <= "1110"  ;
	wait for 10 ns ;
	 mod_value  <= "0101"  ;
	wait for 10 ns ;
	 mod_value  <= "0100"  ;
	wait for 10 ns ;
	 mod_value  <= "1100"  ;
	wait for 10 ns ;
	 mod_value  <= "1010"  ;
	wait for 10 ns ;
	 mod_value  <= "0101"  ;
	wait for 10 ns ;
	 mod_value  <= "1000"  ;
	wait for 10 ns ;
	 mod_value  <= "1010"  ;
	wait for 10 ns ;
	 mod_value  <= "1110"  ;
	wait for 10 ns ;
	 mod_value  <= "0100"  ;
	wait for 10 ns ;
	 mod_value  <= "1110"  ;
	wait for 10 ns ;
	 mod_value  <= "0011"  ;
	wait for 10 ns ;
-- dumped values till 640 ns
	wait;
 End Process;


-- "Random Pattern"(Normal) : seed = 5
-- Start Time = 0 ns, End Time = 640 ns, Period = 5 ns
  Process
	variable max_rand : real := 1.0;
	variable iv : genstatus1;
	variable iy : genstatus2;
	variable rndval : real;
	variable mean : real := 0.0;
	variable seed : integer := 5 ;
	Begin
	iv(NTAB) := 0;
	iv(NTAB+1) := 0;
	for Z in 1 to 6
	loop
	   dist_normal (seed, rndval, mean, max_rand, iv, iy);
	   if (ieee.std_logic_arith.conv_std_logic_vector(integer(myceil(rndval, 1)), 1) /= "1") then
		    enable_count  <= '0'  ;
	   else
		    enable_count  <= '1'  ;
	   end if;
	   wait for 5 ns ;
-- 30 ns, repeat pattern in loop.
	end  loop;
	 enable_count  <= '1'  ;
	wait for 590 ns ;
	 enable_count  <= '0'  ;
	wait for 20 ns ;
-- dumped values till 640 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 30 ns, End Time = 640 ns, Period = 5 ns
  Process
	Begin
	 direction  <= '0'  ;
	wait for 5 ns ;
	 direction  <= '1'  ;
	wait for 5 ns ;
	 direction  <= '0'  ;
	wait for 5 ns ;
	 direction  <= '1'  ;
	wait for 5 ns ;
	 direction  <= '0'  ;
	wait for 5 ns ;
	 direction  <= '1'  ;
	wait for 5 ns ;
	 direction  <= '0'  ;
	wait for 300 ns ;
	 direction  <= '1'  ;
	wait for 295 ns ;
	 direction  <= '0'  ;
	wait for 5 ns ;
	 direction  <= '1'  ;
	wait for 5 ns ;
	 direction  <= '0'  ;
	wait for 5 ns ;
-- dumped values till 640 ns
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 640 ns, Period = 20 ns
  Process
	Begin
	 clock  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 31
	loop
	    clock  <= '1'  ;
	   wait for 10 ns ;
	    clock  <= '0'  ;
	   wait for 10 ns ;
-- 630 ns, repeat pattern in loop.
	end  loop;
	 clock  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 640 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 620 ns, End Time = 640 ns, Period = 20 ns
  Process
	Begin
	wait for 1 ns; 
	 if counter  /= ("0000"  ) then 
		report " test case failed counter is not 0" severity error; end if;
	wait for 30 ns ;
	 if counter  /= ("0001"  ) then 
		report " test case failed is not 1" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0010"  ) then 
		report " test case failed counter is not 2" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0011"  ) then 
		report " test case failed couter is not 3" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0100"  ) then 
		report " test case failed couter is not 4" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0101"  ) then 
		report " test case failed couter is not 5" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0110"  ) then 
		report " test case failed couter is not 6" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0111"  ) then 
		report " test case failed couter is not 7" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1000"  ) then 
		report " test case failed couter is not 8" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1001"  ) then 
		report " test case failed couter is not 9" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1010"  ) then 
		report " test case failed couter is not 10" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1011"  ) then 
		report " test case failed couter is not 11" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1100"  ) then 
		report " test case failed couter is not 12" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0000"  ) then 
		report " test case failed couter is not 0" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0001"  ) then 
		report " test case failed couter is not 1" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0010"  ) then 
		report " test case failed couter is not 2" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0001"  ) then 
		report " test case failed couter is not 1" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0000"  ) then 
		report " test case failed couter is not 0" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1100"  ) then 
		report " test case failed couter is not 12" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1011"  ) then 
		report " test case failed couter is not 11" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1010"  ) then 
		report " test case failed couter is not 10" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1001"  ) then 
		report " test case failed couter is not 9" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("1000"  ) then 
		report " test case failed couter is not 8" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0111"  ) then 
		report " test case failed couter is not 7" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0110"  ) then 
		report " test case failed couter is not 6" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0101"  ) then 
		report " test case failed couter is not 5" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0100"  ) then 
		report " test case failed couter is not 4" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0011"  ) then 
		report " test case failed couter is not 3" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0010"  ) then 
		report " test case failed couter is not 2" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0001"  ) then 
		report " test case failed couter is not 1" severity error; end if;
	wait for 20 ns ;
	 if counter  /= ("0000"  ) then 
		report " test case failed couter is not 0" severity error; end if;
	wait for 20 ns ;
	if counter  /= ("0000"  ) then 
		report " test case failed couter is not 0" severity error; end if;
-- dumped values till 640 ns
	wait;
 End Process;
END;
