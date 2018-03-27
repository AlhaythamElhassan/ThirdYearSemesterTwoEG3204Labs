transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/media/alhaytham/New Volume/ThirdYear/semester2/EG3204/lab2Downloads/Uni_Shift_Reg.vhd}

vcom -93 -work work {/media/alhaytham/New Volume/ThirdYear/semester2/EG3204/labsAndAssignments/lab2/../../lab2Downloads/Uni_Shift_Reg_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Uni_Shift_Reg_TB

add wave *
view structure
view signals
run -all
