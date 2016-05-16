#!/usr/bin/env bash
set -o errexit
autoreconf -i
mkdir -p build && cd build && ../configure && make

