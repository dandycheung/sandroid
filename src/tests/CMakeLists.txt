#libtest_common_src_file
set(libtestcommon_source_file
	unit_tests.h
  unit_tests.cc
  test_utils.h
  test_utils.cc
  sandbox_test_runner.h
  sandbox_test_runner.cc
  sandbox_test_runner_function_pointer.h
  sandbox_test_runner_function_pointer.cc
  scoped_temporary_file.h
  scoped_temporary_file.cc
)

#CXX Flags
set (CMAKE_CXX_FLAGS "-std=gnu++11 -Wextra -Werror -Wno-missing-field-initializers")

#Check currenty source directory.
MESSAGE( STATUS "CMAKE_CURRENT_SOURCE_DIR: " ../${CMAKE_CURRENT_SOURCE_DIR} )

#current path
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

include_directories(/home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/)

include_directories(/home/rchatsiri/workspacecpp-sdc1/googletest/googletest/include)

#link gtest
link_directories(/home/rchatsiri/workspacecpp-sdc1/googletest/googletest/build)

#library file path.
link_directories(/home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/ext-libs)

SET(CMAKE_CXX_COMPILER g++-4.8)

#create library
add_library(testcommon SHARED ${libtestcommon_source_file})

#link library.
target_link_libraries(testcommon base)
