cmake_minimum_required(VERSION 3.22.1)

project(testingorch C CXX)

find_package(PkgConfig REQUIRED)
pkg_check_modules(CUNIT REQUIRED IMPORTED_TARGET cunit)

#
# Create executable FIRST
#
add_executable(testingorch)

#
# Add sources
#
target_sources(testingorch
    PRIVATE
        main.c
        ${CMAKE_CURRENT_SOURCE_DIR}/testsuite1/src/testsuite1.c
)

#
# Include directories
#
target_include_directories(testingorch
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/testsuite1/include
)

#
# Language standards
#
target_compile_features(testingorch
    PRIVATE
        c_std_17
        cxx_std_17
)

#
# Compiler options
#
target_compile_options(testingorch
    PRIVATE
        $<$<COMPILE_LANGUAGE:C>:-Wall -Wextra -Werror>
        $<$<COMPILE_LANGUAGE:CXX>:-Wall -Wextra -Wno-exceptions>
)

#
# Link libraries
#
target_link_libraries(testingorch
    PRIVATE
        PkgConfig::CUNIT
)

#
# Install target
#
install(TARGETS testingorch
    RUNTIME DESTINATION bin
)