#!/bin/sh
g++ -std=c++23 -fmodules -fsearch-include-path bits/std.cc -fmodule-only -c bits/std.cc
g++ -std=c++23 -fmodules -fmodule-only -x c++ -c nob++.mxx
g++ -std=c++23 -fmodules -o nob++ -x c++ nob++.cxx nob++.mxx
