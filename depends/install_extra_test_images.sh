#!/usr/bin/env bash
# install extra test images

archive=test-images-main

./download-and-extract.sh $archive https://github.com/hugovk/test-images/archive/refs/heads/main.tar.gz

mv $archive/* ../Tests/images/

# Cleanup old tarball and empty directory
rm $archive.tar.gz
rm -r $archive