#!/bin/sh
time g++ -std=c++26 -fmodules -fsearch-include-path bits/std.cc -fmodule-only -c bits/std.cc
time g++ -std=c++26 -fmodules -fmodule-only -x c++ -c nob++.mxx
time g++ -std=c++26 -fmodules -o nob++ -x c++ nob++.cxx nob++.mxx
rm -r gcm.cache
