# c-swiftRDM

A [Swift Package Manager](https://swift.org/package-manager/) wrapper around ETC's RDM helper library for the ANSI E1.20 (RDM) protocol.

# RDM

[![Build Status](https://dev.azure.com/ETCLabs/RDM/_apis/build/status/ETCLabs.RDM?branchName=develop)](https://dev.azure.com/ETCLabs/RDM/_build/latest?definitionId=3&branchName=develop)

*RDM* is an ANSI standard for remotely configuring devices which are controlled
via [DMX512](https://en.wikipedia.org/wiki/DMX512). More information about RDM
can be found [here](http://www.rdmprotocol.org).

This swift wrapper for a C-language library is intended to be a very lightweight RDM implementation;
it provides types, functions for building and parsing messages, and may in the
future provide a basic implementation of RDM discovery.

## Build

1. Intialise the submodule dependancies ([RDM](https://github.com/ETCLabs/RDM) and [iOS CMake](https://github.com/leetal/ios-cmake)):
```
cd c-swiftRDM
git submodule update --init --recursive
```
2. Install pkg-config (using [Homebrew](https://brew.sh/)):

`brew install pkg-config`

3. Install the RDM library:
```
cd RDM 
mkdir build && cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../../ios-cmake/iOS.toolchain.cmake ..
make install
```

To check the RDM library has been correctly made in the right location with a pkg-config file:

`pkg-config RDM --libs --cflags` which should return `-I/usr/local/include -L/usr/local/lib -lRDM -lEtcPal`.

## About this ETCLabs Project

RDM is official, open-source software developed by ETC employees and is designed
to interact with ETC products. For challenges using, integrating, compiling, or
modifying this software, we encourage posting on the
[issues page](https://github.com/ETCLabs/RDM/issues) of the RDM project.
