#!/bin/bash

CONFIG=config.ebb42

if [[ "${1}" == "" ]]; then
        make KCONFIG_CONFIG=${CONFIG} clean
fi

make KCONFIG_CONFIG=${CONFIG} ${1}

if [[ "${1}" == "" ]]; then
	make KCONFIG_CONFIG=${CONFIG} serialflash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_stm32g0b1xx_3A003A0016504D4D34313220-if00
fi
