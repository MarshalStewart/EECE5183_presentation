#!/usr/bin/env bash
#generate CFG
clang -S -emit-llvm -O0 -fno-discard-value-names -march=x86-64 example.c
opt -dot-cfg example.ll -o example.opt.ll
dot -Tpng .main.dot -o example.png

#generate CFG ex 2
clang -S -emit-llvm -O0 -fno-discard-value-names -march=x86-64 example2.c
opt -dot-cfg example2.ll -o example.opt.ll
dot -Tpng .main.dot -o example2.png

#optimize example 2
clang -S -emit-llvm -O3 -fno-discard-value-names -o example2_opt.ll example2.c

# liveliness algorithm
# clang -emit-llvm -c example.c -o program.bc
# opt -print-after-all program.bc &> optimization.log