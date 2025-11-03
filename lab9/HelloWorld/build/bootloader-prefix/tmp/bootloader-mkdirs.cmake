# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/opt/esp/idf/components/bootloader/subproject"
  "/project/HelloWorld/build/bootloader"
  "/project/HelloWorld/build/bootloader-prefix"
  "/project/HelloWorld/build/bootloader-prefix/tmp"
  "/project/HelloWorld/build/bootloader-prefix/src/bootloader-stamp"
  "/project/HelloWorld/build/bootloader-prefix/src"
  "/project/HelloWorld/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/project/HelloWorld/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/project/HelloWorld/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
