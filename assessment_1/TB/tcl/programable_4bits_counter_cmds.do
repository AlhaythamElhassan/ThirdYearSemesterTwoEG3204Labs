view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /programable_4bits_counter/direction 
wave create -pattern none -portmode in -language vhdl /programable_4bits_counter/enable_count 
wave create -pattern none -portmode in -language vhdl /programable_4bits_counter/reset 
wave create -pattern none -portmode in -language vhdl /programable_4bits_counter/clock 
wave create -pattern none -portmode in -language vhdl -range 3 0 /programable_4bits_counter/mod_value 
wave create -pattern none -portmode out -language vhdl -range 3 0 /programable_4bits_counter/counter 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 640ns NewSig:/programable_4bits_counter/clock 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 20ns NewSig:/programable_4bits_counter/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 20ns -endtime 640ns NewSig:/programable_4bits_counter/reset 
wave modify -driver freeze -pattern constant -value 1110 -range 3 0 -starttime 0ns -endtime 20ns NewSig:/programable_4bits_counter/mod_value 
wave modify -driver freeze -pattern random -initialvalue 0 -period 10ns -random_type Normal -seed 5 -starttime 0ns -endtime 20ns NewSig:/programable_4bits_counter/enable_count 
wave modify -driver freeze -pattern random -initialvalue 0 -period 5ns -random_type Normal -seed 5 -starttime 0ns -endtime 20ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern random -initialvalue 0 -period 2ns -random_type Normal -seed 5 -starttime 0ns -endtime 20ns NewSig:/programable_4bits_counter/enable_count 
wave modify -driver expectedOutput -pattern constant -value 0000 -range 3 0 -starttime 0ns -endtime 20ns NewSig:/programable_4bits_counter/counter 
wave modify -driver freeze -pattern random -initialvalue 0000 -period 10ns -random_type Normal -seed 5 -range 3 0 -starttime 20ns -endtime 640ns NewSig:/programable_4bits_counter/mod_value 
wave modify -driver freeze -pattern constant -value 0 -starttime 20ns -endtime 40ns NewSig:/programable_4bits_counter/enable_count 
wave modify -driver freeze -pattern constant -value 1 -starttime 40ns -endtime 640ns NewSig:/programable_4bits_counter/enable_count 
wave modify -driver freeze -pattern random -initialvalue 0 -period 5ns -random_type Normal -seed 5 -starttime 0ns -endtime 40ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern constant -value 1 -starttime 20ns -endtime 620ns NewSig:/programable_4bits_counter/enable_count 
wave modify -driver freeze -pattern constant -value 0 -starttime 620ns -endtime 640ns NewSig:/programable_4bits_counter/enable_count 
wave modify -driver freeze -pattern constant -value 0 -starttime 20ns -endtime 320ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern constant -value 1 -starttime 320ns -endtime 620ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern random -initialvalue 0 -period 10ns -random_type Normal -seed 2 -starttime 620ns -endtime 640ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern random -initialvalue 0 -period 10ns -random_type Normal -seed 5 -starttime 620ns -endtime 640ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern random -initialvalue 0 -period 10ns -random_type Normal -seed 10 -starttime 620ns -endtime 640ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern random -initialvalue 0 -period 5ns -random_type Normal -seed 5 -starttime 620ns -endtime 640ns NewSig:/programable_4bits_counter/direction 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1110 -type Binary -direction Up -period 50ns -step 1 -repeat forever -range 3 0 -starttime 20ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1110 -type Binary -direction Up -period 10ns -step 1 -repeat forever -range 3 0 -starttime 20ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1110 -type Binary -direction Up -period 20ns -step 1 -repeat forever -range 3 0 -starttime 20ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1110 -type Binary -direction Up -period 10ns -step 1 -repeat forever -range 3 0 -starttime 20ns -endtime 30ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1110 -type Binary -direction Up -period 10ns -step 1 -repeat forever -range 3 0 -starttime 20ns -endtime 30ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern constant -value 0001 -range 3 0 -starttime 20ns -endtime 30ns NewSig:/programable_4bits_counter/counter 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 30ns NewSig:/programable_4bits_counter/reset 
wave modify -driver freeze -pattern constant -value 1100 -range 3 0 -starttime 0ns -endtime 30ns NewSig:/programable_4bits_counter/mod_value 
wave modify -driver freeze -pattern random -initialvalue 0 -period 5ns -random_type Normal -seed 5 -starttime 0ns -endtime 30ns NewSig:/programable_4bits_counter/enable_count 
wave modify -driver freeze -pattern random -initialvalue 0 -period 5ns -random_type Normal -seed 5 -starttime 0ns -endtime 30ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern random -initialvalue 1 -period 5ns -random_type Normal -seed 5 -starttime 0ns -endtime 30ns NewSig:/programable_4bits_counter/direction 
wave modify -driver freeze -pattern random -initialvalue 1 -period 5ns -random_type Normal -seed 6 -starttime 0ns -endtime 30ns NewSig:/programable_4bits_counter/direction 
wave modify -driver expectedOutput -pattern constant -value 0000 -range 3 0 -starttime 0ns -endtime 30ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat forever -range 3 0 -starttime 30ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat 140 -range 3 0 -starttime 30ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat 270 -range 3 0 -starttime 30ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat 1100 -range 3 0 -starttime 30ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat forever -range 3 0 -starttime 30ns -endtime 270ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat forever -range 3 0 -starttime 270ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat forever -range 3 0 -starttime 290ns -endtime 320ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat forever -range 3 0 -starttime 30ns -endtime 290ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0000 -endvalue 1100 -type Binary -direction Up -period 20ns -step 1 -repeat forever -range 3 0 -starttime 290ns -endtime 330ns NewSig:/programable_4bits_counter/counter 
wave modify -driver freeze -pattern constant -value 0 -starttime 30ns -endtime 330ns NewSig:/programable_4bits_counter/direction 
wave modify -driver expectedOutput -pattern counter -startvalue 0001 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat forever -range 3 0 -starttime 330ns -endtime 350ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 0001 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat forever -range 3 0 -starttime 330ns -endtime 350ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern constant -value 0000 -range 3 0 -starttime 330ns -endtime 350ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 1100 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat forever -range 3 0 -starttime 350ns -endtime 590ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 1100 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat never -range 3 0 -starttime 350ns -endtime 590ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 1100 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat 1100 -range 3 0 -starttime 350ns -endtime 590ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 1100 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat 12 -range 3 0 -starttime 350ns -endtime 590ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 1100 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat 12 -range 3 0 -starttime 350ns -endtime 620ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 1000 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat 12 -range 3 0 -starttime 350ns -endtime 620ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern counter -startvalue 1100 -endvalue 0000 -type Binary -direction Down -period 20ns -step 1 -repeat 12 -range 3 0 -starttime 350ns -endtime 620ns NewSig:/programable_4bits_counter/counter 
wave modify -driver expectedOutput -pattern constant -value 1100 -range 3 0 -starttime 620ns -endtime 640ns NewSig:/programable_4bits_counter/counter 
{wave export -file {/media/alhaytham/New Volume/ThirdYear/semester2/EG3204/labsAndAssignments/programmable_4bit_Counter/programabl_4bits_counter_TB.vhd} -starttime 0 -endtime 640 -format vhdl -designunit programable_4bits_counter -f} 
WaveCollapseAll -1
wave clipboard restore
