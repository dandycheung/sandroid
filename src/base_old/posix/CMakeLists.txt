#libposix-seccomp_source_file
set(libposix-seccomp_source_file
  eintr_wrapper.h
	file_descriptor_shuffle.cc
  file_descriptor_shuffle.h
  global_descriptors.cc
  global_descriptors.h
  unix_domain_socket_linux.cc
  unix_domain_socket_linux.h
)


#CXX Flags
set (CMAKE_CXX_FLAGS "-std=gnu++11 -Wextra -Werror -Wno-missing-field-initializers")

#Check currenty source directory.
MESSAGE( STATUS "CMAKE_CURRENT_SOURCE_DIR: " ../${CMAKE_CURRENT_SOURCE_DIR} )

#current path
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

#base source sandbox
include_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src)

#include gtest
include_directories(/home/chatsiri/workspacecpp/gtest-1.6.0/include/)

#test-common
link_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests/build)

#library file path.
link_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/ext-libs)

#link gtest
link_directories(/home/chatsiri/workspacecpp/gtest-1.6.0/lib)

SET(CMAKE_CXX_COMPILER g++-4.8)

#create library
add_library(posix-seccomp SHARED ${libposix-seccomp_source_file})

#link library.
target_link_libraries(posix-seccomp base gtest gtest_main pthread)
