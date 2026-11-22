#!/usr/bin/env bash
set -e
LIB="falling-clasp.a"
TAG="cosmic-garden-gentle-comet"
REPO="qunawaq/percenttornadoio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
