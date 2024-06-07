#!/bin/bash
# install libimagequant

archive=libimagequant-2.15.1

./download-and-extract.sh $archive https://src.fedoraproject.org/lookaside/pkgs/mingw-libimagequant/libimagequant-2.15.1.tar.gz/sha512/56bc8b73859908774ce0a218cfbec81bfb8432c02ddce83880990b5f5ac89ac253ae64ecde43a9664aab3ac69d309bb9ef8ba2201be6c93aacb731b3214ff4b8/libimagequant-2.15.1.tar.gz

pushd $archive

make shared
sudo cp libimagequant.so* /usr/lib/
sudo cp libimagequant.h /usr/include/

popd
