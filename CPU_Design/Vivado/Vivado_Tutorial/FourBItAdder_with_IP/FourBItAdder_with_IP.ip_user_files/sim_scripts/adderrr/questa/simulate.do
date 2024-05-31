onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib adderrr_opt

do {wave.do}

view wave
view structure
view signals

do {adderrr.udo}

run -all

quit -force
