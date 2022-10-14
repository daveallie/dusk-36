#!/bin/bash

set -e

cd /workspace/zmk-config

west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG=/workspace/zmk-config/config -DSHIELD=dusk36_left
mkdir -p build/artifacts
cp build/zephyr/zmk.uf2 build/artifacts/dusk36_left.uf2

west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG=/workspace/zmk-config/config -DSHIELD=dusk36_right
cp build/zephyr/zmk.uf2 build/artifacts/dusk36_right.uf2
