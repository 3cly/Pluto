cd tests/openssl
CC=../../install/bin/clang CFLAGS="-flto -fuse-ld=lld -mllvm -passes=mba,sub,bcf,fla -Xlinker -mllvm -Xlinker -passes=idc -Wno-unused-command-line-argument" ./Configure
make -j`nproc` tests