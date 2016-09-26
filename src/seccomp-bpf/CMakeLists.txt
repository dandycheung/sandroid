#libseccomp-bpf_source_file
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

set(libseccomp-bpf-test_source_file
    sandbox_bpf_test_runner.cc
    sandbox_bpf_test_runner.h)	


#CXX Flags
set (CMAKE_CXX_FLAGS "-std=gnu++11 -Wextra -Werror -Wno-missing-field-initializers")

#Check currenty source directory.
MESSAGE( STATUS "CMAKE_CURRENT_SOURCE_DIR: " ${CMAKE_CURRENT_SOURCE_DIR}/../)

MESSAGE( STATUS "CMAKE_CURRENT_LIST_DIR: " ${CMAKE_CURRENT_LIST_DIR})  

#current path
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

include_directories(/home/rchatsiri/sdc1/workspacecpp/googletest/googletest/include)

#base source sandbox
include_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/)

#library file path.
link_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/ext-libs)

#link lib bpf_dsl
link_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/bpf_dsl/build)

#library test-comon
link_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests/build)

#bpf-dsl
link_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/bpf_dsl/build)

#link gtest
link_directories(/home/rchatsiri/workspacecpp-sdc1/googletest/googletest/build)

SET(CMAKE_CXX_COMPILER g++-4.8)

#create library
add_library(seccomp-bpf SHARED ${libseccomp-bpf_source_file} ${libseccomp-bpf-test_source_file})

#link library.
target_link_libraries(seccomp-bpf base)


#-------------------
# Test
#-------------------  

link_directories(/home/rchatsiri/sdc1/workspacecpp/googletest/googletest/build)

include_directories(/home/rchatsiri/sdc1/workspacecpp/googletest/googletest/include
		    /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/base/
                    /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests
                    /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/src/bpf_dsl/)


add_executable(seccomp-bpf-test ../test/bpf_tests_unittest.cc)

target_link_libraries(seccomp-bpf-test seccomp-bpf bpf-dsl gtest gtest_main testcommon pthread)

add_test(NAME SeccompBPFFirstTest COMMAND seccomp-bpf-test)
