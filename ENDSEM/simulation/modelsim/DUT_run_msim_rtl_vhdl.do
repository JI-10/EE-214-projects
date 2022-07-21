transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/ENDSEM/timer_ckt.vhd}
vcom -93 -work work {E:/ENDSEM/timer_controller.vhd}

vcom -93 -work work {E:/ENDSEM/timer_controller_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  timer_controller_tb

add wave *
view structure
view signals
run 60 us
