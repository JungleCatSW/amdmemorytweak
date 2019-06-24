cmake_minimum_required(VERSION 3.10)

configure_file(${CMAKE_SOURCE_DIR}/pciutils/lib/pci.h ${CMAKE_SOURCE_DIR}/include/pci COPYONLY)
configure_file(${CMAKE_SOURCE_DIR}/pciutils/lib/libpci.so.3.6.2 ${CMAKE_SOURCE_DIR}/pciutils/lib/libpci.so COPYONLY)
include_directories(pciutils pciutils/lib)
link_directories(pciutils/lib)

add_executable(mem linux/AmdMemTweak.cpp)
target_link_libraries(mem pci)