transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Dropbox/csce614/nn {D:/Dropbox/csce614/nn/test.v}
vlog -vlog01compat -work work +incdir+D:/Dropbox/csce614/nn {D:/Dropbox/csce614/nn/Neuron.v}
vlog -vlog01compat -work work +incdir+D:/Dropbox/csce614/nn {D:/Dropbox/csce614/nn/database.v}
vlog -vlog01compat -work work +incdir+D:/Dropbox/csce614/nn {D:/Dropbox/csce614/nn/cont.v}

vlog -vlog01compat -work work +incdir+D:/Dropbox/csce614/nn {D:/Dropbox/csce614/nn/test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run 2 ms
