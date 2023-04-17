#!/usr/bin/env bash
#generate CFG
clang -S -emit-llvm -O0 -fno-discard-value-names -march=x86-64 example.c
opt -dot-cfg example.ll -o example.opt.ll
dot -Tpng .main.dot -o example.png

# Optimize
clang -S -emit-llvm -O3 -fno-discard-value-names -march=x86-64 -o optimized.ll example.c
clang -O3 -g -fno-discard-value-names -o optimized.out example.c
clang -O0 -g -fno-discard-value-names -o normal.out example.c
clang -S -O3 -fno-discard-value-names -o optimized.s example.c
clang -S -O0 -fno-discard-value-names -o normal.s example.c