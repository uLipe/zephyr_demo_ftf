cmd_lib/libc/minimal/source/stdout/prf.o := /Users/user/Documents/devel/tools/arm-gcc/bin/arm-none-eabi-gcc -Wp,-MD,lib/libc/minimal/source/stdout/.prf.o.d  -nostdinc -isystem /Users/user/Documents/devel/tools/arm-gcc/bin/../lib/gcc/arm-none-eabi/5.4.1/include -isystem /Users/user/Documents/devel/tools/arm-gcc/bin/../lib/gcc/arm-none-eabi/5.4.1/include-fixed -I/Users/user/Documents/devel/zephyr-project/arch/arm/include -I/Users/user/Documents/devel/zephyr-project/arch/arm/soc/nxp_kinetis/k6x -I/Users/user/Documents/devel/zephyr-project/boards/arm/frdm_k64f  -I/Users/user/Documents/devel/zephyr-project/include -I/Users/user/Documents/devel/zephyr-project/include -I/Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/include/generated -I/Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/misc/generated/sysgen -include /Users/user/Documents/devel/zephyr_apps/zephyr_demo_ftf/outdir/frdm_k64f/include/generated/autoconf.h  -I/Users/user/Documents/devel/zephyr-project/ext/hal/cmsis/Include -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/devices/MK64F12 -I/Users/user/Documents/devel/zephyr-project/ext/hal/ksdk/drivers -I/Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include  -I/Users/user/Documents/devel/zephyr-project/lib/libc/minimal/source/stdout -Ilib/libc/minimal/source/stdout -DKERNEL -DENABLE_EXTERNAL_ISR_HANDLING -c -g -std=c99 -fno-asynchronous-unwind-tables -Wall -Wno-format-zero-length -Wno-main -ffreestanding -DCPU_MK64FN1M0VLL12 -Og -fno-stack-protector -fno-omit-frame-pointer -ffunction-sections -fdata-sections -mabi=aapcs -mthumb -mcpu=cortex-m4 -mthumb -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(prf)"  -D"KBUILD_MODNAME=KBUILD_STR(prf)" -c -o lib/libc/minimal/source/stdout/prf.o /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/source/stdout/prf.c

source_lib/libc/minimal/source/stdout/prf.o := /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/source/stdout/prf.c

deps_lib/libc/minimal/source/stdout/prf.o := \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/stdint.h \
  /Users/user/Documents/devel/tools/arm-gcc/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/stdbool.h \
  /Users/user/Documents/devel/tools/arm-gcc/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/string.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/bits/restrict.h \
  /Users/user/Documents/devel/zephyr-project/lib/libc/minimal/include/ctype.h \

lib/libc/minimal/source/stdout/prf.o: $(deps_lib/libc/minimal/source/stdout/prf.o)

$(deps_lib/libc/minimal/source/stdout/prf.o):
