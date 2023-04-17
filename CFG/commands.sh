#generate CFG
clang -S -emit-llvm example.c
opt -dot-cfg example.ll -o example.opt.ll
dot -Tpng .main.dot -o example.png

#generate CFG ex 2
clang -S -emit-llvm example2.c
opt -dot-cfg example2.ll -o example.opt.ll
dot -Tpng .main.dot -o example2.png

# liveliness algorithm
clang -emit-llvm -c example.c -o program.bc
opt -print-after-all program.bc &> optimization.log