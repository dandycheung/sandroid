#libseccomp-bpf_source_file
set(libbpf-dsl_source_file
 bpf_dsl.h
 bpf_dsl.cc	
 bpf_dsl_impl.h
 cons.h
 policy_compiler.cc
 policy_compiler.h
 trap_registry.h
)

set(libbpf-test_source_file
     bpf_dsl_more_unittest.cc
     bpf_dsl_unittest.cc 
     cons_unittest.cc)


#CXX Flags
set (CMAKE_CXX_FLAGS "-std=gnu++11 -Wextra -Werror -Wno-missing-field-initializers")

#Check currenty source directory.
MESSAGE( STATUS "CMAKE_CURRENT_SOURCE_DIR: " ../${CMAKE_CURRENT_SOURCE_DIR} )

#current path
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

#base source sandbox
include_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/)

#library file path.
link_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/ext-libs)

#library test-comon
link_directories(/home/chatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests/build)

#library posix-seccomp
link_directories(/home/chatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/base/posix/build)

#link gtest
link_directories(/home/rchatsiri/sdc1/workspacecpp/googletest/googletest/build)

SET(CMAKE_CXX_COMPILER g++-4.9)

#create library
add_library(bpf-dsl SHARED ${libbpf-dsl_source_file})

#link library.
target_link_libraries(bpf-dsl base)


#-------------------
# Test
#-------------------  
include_directories(/home/rchatsiri/sdc1/workspacecpp/googletest/googletest/include
                    /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests
		    /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf
		    /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/base/posix/
                    /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/services)

link_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests/build
                 /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/build
                 /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/build)

add_executable(bpf-dsl-test ../test/bpf_dsl_unittest.cc)
target_link_libraries(bpf-dsl-test bpf-dsl seccomp-bpf services-seccomp posix-seccomp testcommon gtest gtest_main pthread)
add_test(NAME BpfDSLTest COMMAND bpf-dsl-test)

add_executable(bpf-dsl-more-test ../test/bpf_dsl_more_unittest.cc)
target_link_libraries(bpf-dsl-more-test bpf-dsl seccomp-bpf services-seccomp posix-seccomp testcommon cap gtest gtest_main pthread)
add_test(NAME BpfDSLMoreTest COMMAND bpf-dsl-more-test)
