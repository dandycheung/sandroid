#libart_common_src_file
set(libseccomp-bpf_source_file
   basicblock.h
   basicblock.cc
   codegen.cc
   codegen.h
   die.cc
   die.h
   errorcode.cc
   errorcode.h
   instruction.h
   linux_seccomp.h
   sandbox_bpf.cc
   sandbox_bpf.h
	 syscall.cc
   syscall.h
   syscall_iterator.cc
   syscall_iterator.h
   trap.cc
   trap.h
   verifier.cc
   verifier.h	
)


#CXX Flags
set (CMAKE_CXX_FLAGS "-std=gnu++11 -Werror -Wextra")

#Check currenty source directory.
MESSAGE( STATUS "CMAKE_CURRENT_SOURCE_DIR: " ../${CMAKE_CURRENT_SOURCE_DIR} )

#current path
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

include_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/sandroid/src/)

#library file path.
link_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/sandroid/src/ext-libs)

#link gtest
link_directories(/home/chatsiri/workspacecpp/gtest-1.6.0/lib)

SET(CMAKE_CXX_COMPILER g++-4.8)

#create library
add_library(seccomp-bpf ${libseccomp-bpf_source_file})


target_link_libraries(seccomp-bpf base gtest)
