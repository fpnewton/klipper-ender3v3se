#!/bin/bash

make KCONFIG_CONFIG=config.adxl345 ${1}

if [[ "${1}" == "" ]]; then
	sudo make KCONFIG_CONFIG=config.adxl345 flash FLASH_DEVICE=2e8a:0003
fi
