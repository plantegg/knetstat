KSRC ?= /lib/modules/$(shell uname -r)/build

KBUILD_EXTRA_SYMBOLS := $(KSRC)/Module.symvers

obj-m += knetstat.o

all:
	make -C $(KSRC) M=$(shell pwd) modules

clean:
	make -C $(KSRC) M=$(shell pwd) clean
