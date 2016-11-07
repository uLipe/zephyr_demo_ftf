# put the networking include here 
ccflags-y +=-I${ZEPHYR_BASE}/net/ip
ccflags-y +=-I${ZEPHYR_BASE}/net/ip/contiki
ccflags-y +=-I${ZEPHYR_BASE}/net/ip/contiki/os/lib
ccflags-y +=-I${ZEPHYR_BASE}/net/ip/contiki/os

#add all application source group
obj-y = main.o
obj-y += acc_app.o
obj-y += led_axis.o