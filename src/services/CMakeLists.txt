#libservice-seccomp_source_file
set(libservices-seccomp_source_file
 android_arm64_ucontext.h
 android_arm_ucontext.h
 broker_process.h
 broker_process.cc
 credentials.cc
 credentials.h
 android_futex.h
 android_i386_ucontext.h
 android_mips_ucontext.h
 android_ucontext.h
 android_x86_64_ucontext.h 
 arm64_linux_syscalls.h
 arm_linux_syscalls.h 
 linux_syscalls.h
 mips_linux_syscalls.h
 x86_32_linux_syscalls.h
 x86_64_linux_syscalls.h
)


#CXX Flags
set (CMAKE_CXX_FLAGS "-std=gnu++11 -Wextra -Werror -Wno-missing-field-initializers")

#Check currenty source directory.
MESSAGE( STATUS "CMAKE_CURRENT_SOURCE_DIR: " ../${CMAKE_CURRENT_SOURCE_DIR} )

#current path
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

#base source sandbox
include_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src)

#test-common
link_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests/build)

#posix-seccomp
link_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/base/posix/build)

#library file path.
link_directories(/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/ext-libs)

#link gtest
link_directories(/home/chatsiri/workspacecpp/gtest-1.6.0/lib)

SET(CMAKE_CXX_COMPILER g++-4.8)

#create library
add_library(services-seccomp SHARED ${libservices-seccomp_source_file})

#link library.
target_link_libraries(services-seccomp base)


#-------------------
# Test
#-------------------  
include_directories(/home/chatsiri/workspacecpp/gtest-1.6.0/include/
										/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/base/posix/
										/home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/tests)

add_executable(unix_domain_socket-test ../test/unix_domain_socket_unittest.cc)
target_link_libraries(unix_domain_socket-test services-seccomp posix-seccomp testcommon gtest gtest_main pthread)
add_test(NAME UnixDomainSocketFirstTest COMMAND unix_domain_socket-test)


add_executable(broker_process-test ../test/broker_process_unittest.cc)
target_link_libraries(broker_process-test services-seccomp posix-seccomp testcommon cap gtest gtest_main pthread)
add_test(NAME BrokerProcessFirstTest COMMAND broker_process-test)
