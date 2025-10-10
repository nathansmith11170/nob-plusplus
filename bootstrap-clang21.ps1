clang++ -std=c++23 -stdlib=libc++ F:/mingw64/share/libc++/v1/std.cppm --precompile -o std.pcm
clang++ -std=c++23 -stdlib=libc++ -x c++-module nob++.mxx --precompile -o "nob++.pcm"
clang++ -std=c++23 -stdlib=libc++ -x c++ nob++.cxx -fmodule-file=nob="nob++.pcm" nob++.mxx -fmodule-file=std="std.pcm" -o "nob++.exe"
rm std.pcm
rm nob++.pcm
