#!/bin/sh

gcc --std=c89 --pedantic c.c && ./a.out && rm -f ./a.out
g++ cpp.cpp && ./a.out && rm -f ./a.out

mypy python.py && python3 python.py
node javascript.js
php php.php

nasm -f elf64 -o nasm64.o nasm64.asm
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o nasm64.out -lc nasm64.o
./nasm64.out
rm -rf nasm64.o nasm64.out

vasm6502_oldstyle -Fbin -dotdir -o c64.prg c64.asm
printf "\x00\xc0" | cat - c64.prg > temp.prg
mv temp.prg c64.prg
# x64 c64.prg
# SYS 49152
rm -rf c64.prg temp.prg

gfortran -std=legacy fortran77.f && ./a.out && rm -f ./a.out
a68g algol68.a68
a60 algol60.a60
