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
CMAKE_SOURCE_DIR = /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/build

# Include any dependencies generated for this target.
include CMakeFiles/bpf-dsl-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bpf-dsl-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bpf-dsl-test.dir/flags.make

CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o: CMakeFiles/bpf-dsl-test.dir/flags.make
CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o: ../test/bpf_dsl_unittest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o"
	g++-4.9   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o -c /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/test/bpf_dsl_unittest.cc

CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.i"
	g++-4.9  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/test/bpf_dsl_unittest.cc > CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.i

CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.s"
	g++-4.9  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/test/bpf_dsl_unittest.cc -o CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.s

CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.requires:
.PHONY : CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.requires

CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.provides: CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.requires
	$(MAKE) -f CMakeFiles/bpf-dsl-test.dir/build.make CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.provides.build
.PHONY : CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.provides

CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.provides.build: CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o

# Object files for target bpf-dsl-test
bpf__dsl__test_OBJECTS = \
"CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o"

# External object files for target bpf-dsl-test
bpf__dsl__test_EXTERNAL_OBJECTS =

bpf-dsl-test: CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o
bpf-dsl-test: CMakeFiles/bpf-dsl-test.dir/build.make
bpf-dsl-test: libbpf-dsl.so
bpf-dsl-test: CMakeFiles/bpf-dsl-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bpf-dsl-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bpf-dsl-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bpf-dsl-test.dir/build: bpf-dsl-test
.PHONY : CMakeFiles/bpf-dsl-test.dir/build

CMakeFiles/bpf-dsl-test.dir/requires: CMakeFiles/bpf-dsl-test.dir/test/bpf_dsl_unittest.o.requires
.PHONY : CMakeFiles/bpf-dsl-test.dir/requires

CMakeFiles/bpf-dsl-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bpf-dsl-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bpf-dsl-test.dir/clean

CMakeFiles/bpf-dsl-test.dir/depend:
	cd /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/build /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/build /home/rchatsiri/workspacecpp-sdc1/treadstoneproject/tracethreat-ref/src/bpf_dsl/build/CMakeFiles/bpf-dsl-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bpf-dsl-test.dir/depend

