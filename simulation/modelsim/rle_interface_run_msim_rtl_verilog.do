transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Freddy/Desktop/RLE {C:/Users/Freddy/Desktop/RLE/rle_interface.v}

