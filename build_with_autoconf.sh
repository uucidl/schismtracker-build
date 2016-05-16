#!/usr/bin/env bash
set -o errexit
cd schismtracker
autoreconf -i
mkdir -p build && cd build && ../configure && make

