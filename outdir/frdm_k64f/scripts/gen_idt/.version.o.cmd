cmd_scripts/gen_idt/version.o := gcc -Wp,-MD,scripts/gen_idt/.version.o.d -Iscripts/gen_idt -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89 -DKERNEL_VERSION=0 -Wall -Werror -g -c -o scripts/gen_idt/version.o /Users/user/Documents/devel/zephyr-project/scripts/gen_idt/version.c

source_scripts/gen_idt/version.o := /Users/user/Documents/devel/zephyr-project/scripts/gen_idt/version.c

deps_scripts/gen_idt/version.o := \
  /usr/include/stdio.h \
  /usr/include/sys/cdefs.h \
  /usr/include/sys/_symbol_aliasing.h \
  /usr/include/sys/_posix_availability.h \
  /usr/include/Availability.h \
  /usr/include/AvailabilityInternal.h \
  /usr/include/_types.h \
  /usr/include/sys/_types.h \
  /usr/include/machine/_types.h \
  /usr/include/i386/_types.h \
  /usr/include/sys/_pthread/_pthread_types.h \
  /usr/include/sys/_types/_va_list.h \
  /usr/include/sys/_types/_size_t.h \
  /usr/include/sys/_types/_null.h \
  /usr/include/sys/stdio.h \
  /usr/include/sys/_types/_off_t.h \
  /usr/include/sys/_types/_ssize_t.h \
  /usr/include/secure/_stdio.h \
  /usr/include/secure/_common.h \
  /Users/user/Documents/devel/zephyr-project/scripts/gen_idt/version.h \

scripts/gen_idt/version.o: $(deps_scripts/gen_idt/version.o)

$(deps_scripts/gen_idt/version.o):
