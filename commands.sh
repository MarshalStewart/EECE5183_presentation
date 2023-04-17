clang -S -o output main.c
clang -O3 -Rpass=deadcode -S -o output.s main.c