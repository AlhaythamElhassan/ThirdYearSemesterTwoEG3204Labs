transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../programable_4bits_counter.vhd}
vcom -93 -work work {../../TB/vhd/random_package.vhd}

vcom -93 -work work {../../TB/vhd/programable_4bits_counter_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  programable_4bits_counter_TB

add wave *
view structure
view signals
run -all