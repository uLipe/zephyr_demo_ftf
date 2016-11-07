MDEF_FILE = prj.mdef
KERNEL_TYPE = micro
BOARD ?= frdm_k64f
CONF_FILE = prj.conf

include ${ZEPHYR_BASE}/Makefile.inc
