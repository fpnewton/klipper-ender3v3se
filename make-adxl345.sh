#!/bin/bash

CONFIG=config.adxl345

if [[ "${1}" == "" ]]; then
	make KCONFIG_CONFIG=${CONFIG} clean
fi

make KCONFIG_CONFIG=${CONFIG} ${1}

if [[ "${1}" == "" ]]; then
	sudo make KCONFIG_CONFIG=${CONFIG} flash FLASH_DEVICE=2e8a:0003
fi
