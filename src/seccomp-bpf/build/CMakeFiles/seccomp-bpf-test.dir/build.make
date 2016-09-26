# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/build

# Include any dependencies generated for this target.
include CMakeFiles/seccomp-bpf-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/seccomp-bpf-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/seccomp-bpf-test.dir/flags.make

CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o: CMakeFiles/seccomp-bpf-test.dir/flags.make
CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o: ../test/bpf_tests_unittest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o"
	g++-4.8   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o -c /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/test/bpf_tests_unittest.cc

CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.i"
	g++-4.8  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/test/bpf_tests_unittest.cc > CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.i

CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.s"
	g++-4.8  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/test/bpf_tests_unittest.cc -o CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.s

CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.requires:
.PHONY : CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.requires

CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.provides: CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.requires
	$(MAKE) -f CMakeFiles/seccomp-bpf-test.dir/build.make CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.provides.build
.PHONY : CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.provides

CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.provides.build: CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o

# Object files for target seccomp-bpf-test
seccomp__bpf__test_OBJECTS = \
"CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o"

# External object files for target seccomp-bpf-test
seccomp__bpf__test_EXTERNAL_OBJECTS =

seccomp-bpf-test: CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o
seccomp-bpf-test: CMakeFiles/seccomp-bpf-test.dir/build.make
seccomp-bpf-test: libseccomp-bpf.so
seccomp-bpf-test: CMakeFiles/seccomp-bpf-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable seccomp-bpf-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/seccomp-bpf-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/seccomp-bpf-test.dir/build: seccomp-bpf-test
.PHONY : CMakeFiles/seccomp-bpf-test.dir/build

CMakeFiles/seccomp-bpf-test.dir/requires: CMakeFiles/seccomp-bpf-test.dir/test/bpf_tests_unittest.o.requires
.PHONY : CMakeFiles/seccomp-bpf-test.dir/requires

CMakeFiles/seccomp-bpf-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/seccomp-bpf-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/seccomp-bpf-test.dir/clean

CMakeFiles/seccomp-bpf-test.dir/depend:
	cd /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/build /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/build /home/rchatsiri/sdc1/workspacecpp/treadstoneproject/tracethreat-ref/src/seccomp-bpf/build/CMakeFiles/seccomp-bpf-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/seccomp-bpf-test.dir/depend

