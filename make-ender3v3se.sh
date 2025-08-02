#!/bin/bash

CONFIG=config.ender3v3se

if [[ "${1}" == "" ]]; then
        make KCONFIG_CONFIG=${CONFIG} clean
fi

make KCONFIG_CONFIG=${CONFIG} ${1}
