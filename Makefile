include config.mk

UBOOT_DIR=$(BUILD_DIR)/../u-boot

OUT_DIR=$(BUILD_DIR)/out
UBOOT_OUT_DIR=$(OUT_DIR)/u-boot

_all: all

env_prepare:
	git clone $(COMPILE_URL)

all: uboot

clean: uboot-clean
	
uboot:
	mkdir -p $(UBOOT_OUT_DIR)
	export ARCH=arm
	export CROSS_COMPILE
	make -C $(UBOOT_DIR) CROSS_COMPILE=$(CROSS_COMPILE) KBUILD_OUTPUT=$(UBOOT_OUT_DIR) $(BOARD_NAME)_defconfig
	make -C $(UBOOT_DIR) CROSS_COMPILE=$(CROSS_COMPILE) KBUILD_OUTPUT=$(UBOOT_OUT_DIR)

uboot-clean:
	rm $(UBOOT_OUT_DIR) -rf
