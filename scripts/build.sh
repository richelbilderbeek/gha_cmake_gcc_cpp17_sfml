#!/bin/bash
#
# Build the project locally
#
# Usage:
#
#   ./scripts/build.sh
#
# Set up CMake build folder for release mode, thanks https://stackoverflow.com/a/64719718

if [[ ! "${PWD}" =~ ^.*gha_cmake_gcc_cpp17_sfml$ ]]; then
  echo "Please run this script from the 'gha_cmake_gcc_cpp17_sfml' folder. "
  echo "(that is, for example, not from the scripts folder)."
  echo "Current working directory: ${PWD}"
  exit 42
fi

cmake -B build . -DCMAKE_BUILD_TYPE=Release

cmake --build build 

