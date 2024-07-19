#!/bin/bash

set -e

cd /workspace/zmk-config

west update
mkdir -p output
