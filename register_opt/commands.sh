#!/usr/bin/env bash
clang -O3 -g -fno-discard-value-names -o optimized.out example.c
clang -O0 -g -fno-discard-value-names -o normal.out example.c
clang -S -O3 -fno-discard-value-names -o optimized.s example.c
clang -S -O0 -fno-discard-value-names -o normal.s example.c