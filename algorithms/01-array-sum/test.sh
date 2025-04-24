#!/bin/sh

gcc --std=c89 --pedantic c.c && ./a.out && rm ./a.out
python3 python.py
node javascript.js
