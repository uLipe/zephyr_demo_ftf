cmd_arch/arm/core/cortex_m/reset.o := /Users/user/Documents/devel/tools/arm-gcc/bin/arm-none-eabi-gcc -Wp,-MD,arch/arm/core/cortex_m/.reset.o.d  -nostdinc -isystem /Users/user/Documents/devel/tools/arm-gcc/bin/../lib/gcc/arm-none-eabi/5.4.1/include -isystem /Users/user/Documents/devel/tools/arm-gcc/bin/../lib/gcc/arm-none-eabi/5.4.1/include-fixed -I/Users/user/Documents/devel/zephyr-project/arch/arm/include -I/Users/user/Documents/devel/zephyr-project/arch/arm/soc/nxp_kinetis/k6x -I/Users/user/Documents/devel/zephyr-project/boards/arm/frdm_k64f  -I/Users/user/Documents/devel/zephyr-project/include -I/Users/user/Documents/devel/zephyr-project/include -I/Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/include/generated -I/Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/misc/generated/sysgen -include /Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/include/generated/autoconf.h  -I/Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12 -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers -I/Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include -DKERNEL -DENABLE_EXTERNAL_ISR_HANDLING -c -g -xassembler-with-cpp -mabi=aapcs -mthumb -mcpu=cortex-m4 -mthumb -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16   -I/Users/user/Documents/devel/zephyr-project/include/drivers   -I/Users/user/Documents/devel/zephyr-project/drivers   -I/Users/user/Documents/devel/zephyr-project/include/drivers   -I/Users/user/Documents/devel/zephyr-project/arch/arm/soc/nxp_kinetis/k6x   -I/Users/user/Documents/devel/zephyr-project/kernel/unified/include   -c -o arch/arm/core/cortex_m/reset.o /Users/user/Documents/devel/zephyr-project/arch/arm/core/cortex_m/reset.S

source_arch/arm/core/cortex_m/reset.o := /Users/user/Documents/devel/zephyr-project/arch/arm/core/cortex_m/reset.S

deps_arch/arm/core/cortex_m/reset.o := \
    $(wildcard include/config/xip.h) \
    $(wildcard include/config/cpu/cortex/m0/m0plus.h) \
    $(wildcard include/config/cpu/cortex/m3/m4.h) \
    $(wildcard include/config/wdog/init.h) \
    $(wildcard include/config/soc/ti/lm3s6965/qemu.h) \
  /Users/user/Documents/devel/zephyr-project/boards/arm/frdm_k64f/board.h \
    $(wildcard include/config/gpio/k64/c/dev/name.h) \
    $(wildcard include/config/gpio/k64/a/dev/name.h) \
    $(wildcard include/config/gpio/k64/b/dev/name.h) \
    $(wildcard include/config/gpio/k64/e/dev/name.h) \
  /Users/user/Documents/devel/zephyr-project/arch/arm/soc/nxp_kinetis/k6x/soc.h \
    $(wildcard include/config/k64/bus/clock/divider.h) \
    $(wildcard include/config/uart/k20.h) \
    $(wildcard include/config/uart/console.h) \
    $(wildcard include/config/uart/console/port.h) \
    $(wildcard include/config/uart/console/port/rx/pin.h) \
    $(wildcard include/config/uart/console/port/tx/pin.h) \
    $(wildcard include/config/uart/console/port/mux/func.h) \
    $(wildcard include/config/uart/console/clk/freq.h) \
    $(wildcard include/config/gpio/k64.h) \
    $(wildcard include/config/spi/k64.h) \
    $(wildcard include/config/pinmux.h) \
  /Users/user/Documents/devel/zephyr-project/include/misc/util.h \
  /Users/user/Documents/devel/zephyr-project/include/toolchain.h \
  /Users/user/Documents/devel/zephyr-project/include/toolchain/gcc.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/isa/thumb.h) \
    $(wildcard include/config/isa/thumb2.h) \
    $(wildcard include/config/isa/arm.h) \
    $(wildcard include/config/nios2.h) \
    $(wildcard include/config/arc.h) \
    $(wildcard include/config/x86.h) \
  /Users/user/Documents/devel/zephyr-project/include/toolchain/common.h \
  /Users/user/Documents/devel/zephyr-project/include/sections.h \
    $(wildcard include/config/gdb/info.h) \
    $(wildcard include/config/sw/isr/table.h) \
  /Users/user/Documents/devel/zephyr-project/include/section_tags.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/cpu.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/arch.h \
    $(wildcard include/config/cpu/cortex/m.h) \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/exc.h \
    $(wildcard include/config/float.h) \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/irq.h \
    $(wildcard include/config/zero/latency/irqs.h) \
  /Users/user/Documents/devel/zephyr-project/include/irq.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/nvic.h \
    $(wildcard include/config/num/irq/prio/bits.h) \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/scs.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/memory_map.h \
    $(wildcard include/config/cpu/cortex/m7.h) \
  /Users/user/Documents/devel/zephyr-project/include/sw_isr_table.h \
    $(wildcard include/config/num/irqs.h) \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/error.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/misc.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/scb.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/gdb_stub.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/asm_inline.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/asm_inline_gcc.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/addr_types.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/sys_io.h \
  /Users/user/Documents/devel/zephyr-project/include/arch/arm/cortex_m/nmi.h \
    $(wildcard include/config/runtime/nmi.h) \
  /Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/include/generated/offsets.h \
  /Users/user/Documents/devel/zephyr-project/arch/arm/core/cortex_m/vector_table.h \
    $(wildcard include/config/sram/base/address.h) \
    $(wildcard include/config/sram/size.h) \

arch/arm/core/cortex_m/reset.o: $(deps_arch/arm/core/cortex_m/reset.o)

$(deps_arch/arm/core/cortex_m/reset.o):
