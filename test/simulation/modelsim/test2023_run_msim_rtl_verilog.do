transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/ssour/Documents/DAV\ 2023/test {C:/Users/ssour/Documents/DAV 2023/test/test.sv}

