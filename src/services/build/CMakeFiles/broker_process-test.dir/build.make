# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/build

# Include any dependencies generated for this target.
include CMakeFiles/broker_process-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/broker_process-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/broker_process-test.dir/flags.make

CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o: CMakeFiles/broker_process-test.dir/flags.make
CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o: ../test/broker_process_unittest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o"
	g++-4.8   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o -c /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/test/broker_process_unittest.cc

CMakeFiles/broker_process-test.dir/test/broker_process_unittest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/broker_process-test.dir/test/broker_process_unittest.i"
	g++-4.8  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/test/broker_process_unittest.cc > CMakeFiles/broker_process-test.dir/test/broker_process_unittest.i

CMakeFiles/broker_process-test.dir/test/broker_process_unittest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/broker_process-test.dir/test/broker_process_unittest.s"
	g++-4.8  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/test/broker_process_unittest.cc -o CMakeFiles/broker_process-test.dir/test/broker_process_unittest.s

CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.requires:
.PHONY : CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.requires

CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.provides: CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.requires
	$(MAKE) -f CMakeFiles/broker_process-test.dir/build.make CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.provides.build
.PHONY : CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.provides

CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.provides.build: CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o

# Object files for target broker_process-test
broker_process__test_OBJECTS = \
"CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o"

# External object files for target broker_process-test
broker_process__test_EXTERNAL_OBJECTS =

broker_process-test: CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o
broker_process-test: libservices-seccomp.so
broker_process-test: CMakeFiles/broker_process-test.dir/build.make
broker_process-test: CMakeFiles/broker_process-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable broker_process-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/broker_process-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/broker_process-test.dir/build: broker_process-test
.PHONY : CMakeFiles/broker_process-test.dir/build

CMakeFiles/broker_process-test.dir/requires: CMakeFiles/broker_process-test.dir/test/broker_process_unittest.o.requires
.PHONY : CMakeFiles/broker_process-test.dir/requires

CMakeFiles/broker_process-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/broker_process-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/broker_process-test.dir/clean

CMakeFiles/broker_process-test.dir/depend:
	cd /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/build /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/build /home/chatsiri/sda1/workspacecpp/treadstoneproject/tracethreat-ref/src/services/build/CMakeFiles/broker_process-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/broker_process-test.dir/depend

