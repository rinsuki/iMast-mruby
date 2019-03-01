#!/bin/bash

set -xe

cd src/mruby
rm -rf build/ios{,_sim}/lib
./minirake
cd ../..
lipo src/mruby/build/ios{,_sim}/lib/libmruby.a -create -output ./libmruby.a
