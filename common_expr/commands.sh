#!/usr/bin/env bash
clang -S -O0 -emit-llvm -fno-discard-value-names -march=x86-64 -o output.ll main.c
clang -S -O3 -emit-llvm -fno-discard-value-names -march=x86-64 -o output_no_opt.ll main.c
clang -O3 -Rpass=deadcode -o optimized.out main.c
clang -O0 -o debug.out main.c