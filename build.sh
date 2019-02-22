#!/bin/bash

set -xe

cd src/mruby
./minirake
cd ../..
mkdir -p dist/lib
lipo src/mruby/build/ios{,_sim}/lib/libmruby.a -create -output dist/lib/libmruby.a