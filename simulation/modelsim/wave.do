
restart -f

force -freeze sim:/uart/CLOCK_50 1 0, 0 {50 ps} -r 100

run