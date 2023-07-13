cmake_minimum_required(VERSION 3.10)

project(gha_cmake_gcc_cpp17_sfml)

set(CMAKE_CXX_STANDARD 17)

add_executable(gha_cmake_gcc_cpp17_sfml main.cpp)


# From https://github.com/SFML/cmake-sfml-project
include(FetchContent)
FetchContent_Declare(SFML
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 2.6.x)
FetchContent_MakeAvailable(SFML)

target_link_libraries(gha_cmake_gcc_cpp17_sfml PRIVATE sfml-graphics)
