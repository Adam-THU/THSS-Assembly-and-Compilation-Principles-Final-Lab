cmake_minimum_required(VERSION 3.10)
project(compiler LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

# Include antlr4 runtime
add_subdirectory(third_party/antlr4-runtime)

# Headers for include
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/third_party/antlr4-runtime/runtime/src
    ${CMAKE_CURRENT_SOURCE_DIR}/src/antlr
)

# Generate executable files
file(GLOB SRC_FILES
    src/*.cpp
    src/antlr/*.cpp
)

add_executable(compiler ${SRC_FILES})

# Link runtime
target_link_libraries(compiler antlr4_shared)

# Set up Google Test
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/03597a01ee50ed33e9fd716149c63099179ad6c5.zip
)

# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Add test executable
enable_testing()

# Commented out: no test sources yet
# add_executable(
#   unit_tests
#   # Link your test executable to the gtest/gtest_main library
# )
# 
# target_link_libraries(
#   unit_tests
#   gtest_main
#   # Link any libraries your tests need
# )

# include(GoogleTest)
# gtest_discover_tests(unit_tests)

# Config ASAN
option(ENABLE_ASAN "Enable AddressSanitizer" OFF)

if(ENABLE_ASAN)
    if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
        add_compile_options(-fsanitize=address -fno-omit-frame-pointer)
        add_link_options(-fsanitize=address)
    elseif(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
        add_compile_options(/fsanitize=address)
    endif()
endif()