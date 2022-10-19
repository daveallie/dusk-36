#!/bin/bash

set -e

cd /workspace/zmk-config

mkdir -p output

rm -r build || true
west zephyr-export
west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG=/workspace/zmk-config/config -DSHIELD=dusk36_left
mv build/zephyr/zmk.uf2 output/dusk36_left.uf2

rm -r build || true
west zephyr-export
west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG=/workspace/zmk-config/config -DSHIELD=dusk36_right
mv build/zephyr/zmk.uf2 output/dusk36_right.uf2
