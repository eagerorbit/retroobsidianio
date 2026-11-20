#!/usr/bin/env bash
set -e
REPO="eagerorbit/retroobsidianio"
LIB="magnolia-axle.a"
URL="https://github.com/${REPO}/releases/download/cosmic-canyon-calm-badger/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
