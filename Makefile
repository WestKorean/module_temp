CROSS_COMP := aarch64-linux-gnu-
#MODULES := /lib/modules/5.4.0-54-generic/build/
MODULES := /home/noob/Downloads/buildroot/output/build/linux-5.4.58/
obj-m := abc.o

all:
	make ARCH=arm64 CROSS_COMPILE=$(CROSS_COMP) -C $(MODULES) M=$(shell pwd) modules
	##make -C $(MODULES) M=$(shell pwd) modules

clean:
	make ARCH=arm64 CROSS_COMPILE=$(CROSS_COMP) -C $(MODULES) M=$(shell pwd) clean
	##make -C $(MODULES) M=$(shell pwd) clean

