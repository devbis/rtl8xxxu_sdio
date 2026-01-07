obj-m += rtl8xxxs.o

rtl8xxxs-objs := \
	rtl8xxxu/core.o \
	rtl8xxxu/8188e.o \
	rtl8xxxu/8188f.o \
	rtl8xxxu/8192c.o \
	rtl8xxxu/8192e.o \
	rtl8xxxu/8192f.o \
	rtl8xxxu/8723a.o \
	rtl8xxxu/8723b.o \
	rtl8xxxu/8710b.o

KDIR ?= /lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
