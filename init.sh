git submodule update --init --recursive

cd pciutils
make clean
make ZLIB=no DNS=no SHARED=yes
cd ..