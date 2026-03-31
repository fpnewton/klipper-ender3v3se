#!/usr/bin/env bash
set -euo pipefail

CONFIG=config.ender3v3se

if [[ "${1:-}" == "clean" ]]; then
  make KCONFIG_CONFIG="${CONFIG}" clean
  exit 0
fi

if [[ "${1:-}" == "" ]]; then
  make KCONFIG_CONFIG="${CONFIG}" clean
  make KCONFIG_CONFIG="${CONFIG}"
else
  make KCONFIG_CONFIG="${CONFIG}" "${1}"
fi
