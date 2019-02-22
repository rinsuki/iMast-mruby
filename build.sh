#!/bin/bash

set -xe

cd src/mruby
./minirake
cd ../..
rm -rf MRuby.framework
mkdir -p MRuby.framework/Headers
cp -r ./src/mruby/include/* MRuby.framework/Headers/
lipo src/mruby/build/ios{,_sim}/lib/libmruby.a -create -output MRuby.framework/MRuby