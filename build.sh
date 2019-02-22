#!/bin/bash

set -xe

cd src/mruby
./minirake
cd ../..
lipo src/mruby/build/ios{,_sim}/lib/libmruby.a -create -output ./libmruby.a
