#!/bin/bash
cd ../../Core

meson setup build -Ddefault_library=shared
meson compile -C build
echo "[!] Done"
