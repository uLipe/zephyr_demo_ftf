cmd_ext/hal/ksdk/drivers/fsl_i2c.o := /Users/user/Documents/devel/tools/arm-gcc/bin/arm-none-eabi-gcc -Wp,-MD,ext/hal/ksdk/drivers/.fsl_i2c.o.d  -nostdinc -isystem /Users/user/Documents/devel/tools/arm-gcc/bin/../lib/gcc/arm-none-eabi/5.4.1/include -isystem /Users/user/Documents/devel/tools/arm-gcc/bin/../lib/gcc/arm-none-eabi/5.4.1/include-fixed -I/Users/user/Documents/devel/zephyr-project/arch/arm/include -I/Users/user/Documents/devel/zephyr-project/arch/arm/soc/nxp_kinetis/k6x -I/Users/user/Documents/devel/zephyr-project/boards/arm/frdm_k64f  -I/Users/user/Documents/devel/zephyr-project/include -I/Users/user/Documents/devel/zephyr-project/include -I/Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/include/generated -I/Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/misc/generated/sysgen -include /Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/include/generated/autoconf.h  -I/Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12 -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers -I/Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12 -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers  -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers -Iext/hal/ksdk/drivers -DKERNEL -DENABLE_EXTERNAL_ISR_HANDLING -c -g -std=c99 -fno-asynchronous-unwind-tables -Wall -Wno-format-zero-length -Wno-main -ffreestanding -DCPU_MK64FN1M0VLL12 -Og -fno-stack-protector -fno-omit-frame-pointer -ffunction-sections -fdata-sections -mabi=aapcs -mthumb -mcpu=cortex-m4 -mthumb -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int -DCPU_MK64FN1M0VLL12    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(fsl_i2c)"  -D"KBUILD_MODNAME=KBUILD_STR(fsl_i2c)" -c -o ext/hal/ksdk/drivers/fsl_i2c.o /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers/fsl_i2c.c

source_ext/hal/ksdk/drivers/fsl_i2c.o := /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers/fsl_i2c.c

deps_ext/hal/ksdk/drivers/fsl_i2c.o := \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers/fsl_i2c.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers/fsl_common.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/assert.h \
  /Users/user/Documents/devel/zephyr-project/include/misc/__assert.h \
    $(wildcard include/config/assert.h) \
    $(wildcard include/config/assert/level.h) \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/stdbool.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/stdint.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/string.h \
  /Users/user/Documents/devel/tools/arm-gcc/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/bits/restrict.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12/fsl_device_registers.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12/MK64F12.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include/core_cm4.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include/core_cmInstr.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include/cmsis_gcc.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include/core_cmFunc.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include/core_cmSimd.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12/system_MK64F12.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12/MK64F12_features.h \
    $(wildcard include/config/in/sopt4/reg.h) \
    $(wildcard include/config/support.h) \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12/fsl_clock.h \
  /Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12/fsl_device_registers.h \

ext/hal/ksdk/drivers/fsl_i2c.o: $(deps_ext/hal/ksdk/drivers/fsl_i2c.o)

$(deps_ext/hal/ksdk/drivers/fsl_i2c.o):
