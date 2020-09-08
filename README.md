[V8 JavaScript engine](https://v8.dev/) using
[CMake](https://cmake.org/) build system and
[GCC mingw-w64](http://mingw-w64.org/)

fork from [v8-cmake](https://github.com/bnoordhuis/v8-cmake)

build
=====

To build the library and the `d8` shell:

    $ mkdir build && cd build
    $ cmake /path/to/v8-mingw64
    $ mingw32-make -j8 2>NUL

If CMake complains about `python` being incompatible or too old:

    $ cmake -DPYTHON_EXECUTABLE=/usr/bin/python3 /path/to/v8-cmake

