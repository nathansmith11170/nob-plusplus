# nob++ - nob.h for modern C++

This is heavily inspired by https://github.com/tsoding/nob.h, a minimal build system for C which can be used with nothing but a C compiler.
In the same vein, nob++ only requires a C++ compiler which supports C++20 modules and C++23 `import std`

# Idea

My idea expands on the original idea of nob.h by saying - who needs to manually specify all these source files anyway? With the introduction of the module paradigm, C++ can build itself from the program entry point.

This is because module imports and exports are described in the source code itself. The relationships between the modules in a program do not need to be separately specified in a build system.

So we'll see how far we can get with a build system that doesn't require the files to be explicitly specified.

# Assumptions

For now, there has to be only one program entry point somewhere under the working directory. (in the future, building a library will be supported)
Only system headers are allowed to be used with `#include`
