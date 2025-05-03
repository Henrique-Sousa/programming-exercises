#!/bin/sh

gcc --std=c89 --pedantic c.c && ./a.out && rm -f ./a.out
g++ cpp.cpp && ./a.out && rm -f ./a.out

python3 python.py
node javascript.js

nasm -f elf64 -o nasm64.o nasm64.asm
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o nasm64.out -lc nasm64.o
./nasm64.out
rm -rf nasm64.o nasm64.out

gfortran -std=legacy fortran77.f && ./a.out && rm -f ./a.out
a68g algol68.a68
a60 algol60.a60
