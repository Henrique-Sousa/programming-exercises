#!/bin/sh

gcc --std=c89 --pedantic c.c && ./a.out && rm ./a.out
python3 python.py
node javascript.js

nasm -f elf64 -o nasm64.o nasm64.asm
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o nasm64.out -lc nasm64.o
./nasm64.out
rm -rf nasm64.o nasm64.out
