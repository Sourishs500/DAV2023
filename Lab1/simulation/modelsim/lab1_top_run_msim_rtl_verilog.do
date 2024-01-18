transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/ssour/Downloads {C:/Users/ssour/Downloads/sevenSegDigit.sv}
vlog -sv -work work +incdir+C:/Users/ssour/Documents/DAV\ 2023/Lab1 {C:/Users/ssour/Documents/DAV 2023/Lab1/sevenSegDigit_tb.sv}

