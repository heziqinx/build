BOARD_NAME=qt2440
BOARD_ARCH=arm920t

BOARD_VENDOR=samsung
BUILD_DIR=$(shell pwd)
BIT32_64=$(shell getconf LONG_BIT)

ifeq ($(BOARD_NAME), qt2440)
ifeq ($(BIT32_64), 64)
COMPILE_URL=https://github.com/wowotechX/gcc-linaro-4.9-2015.02-3-x86_64_aarch64-linux-gnu.git
CROSS_COMPILE=$(BUILD_DIR)/gcc-linaro-4.9-2015.02-3-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
else
COMPILE_URL=https://github.com/wowotechX/gcc-linaro-aarch64-linux-gnu-4.8-2013.12_linux.git
CROSS_COMPILE=$(BUILD_DIR)/gcc-linaro-aarch64-linux-gnu-4.8-2013.12_linux/bin/aarch64-linux-gnu-
endif
endif



