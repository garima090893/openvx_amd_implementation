# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core

# Include any dependencies generated for this target.
include runcl/CMakeFiles/runcl.dir/depend.make

# Include the progress variables for this target.
include runcl/CMakeFiles/runcl.dir/progress.make

# Include the compile flags for this target's objects.
include runcl/CMakeFiles/runcl.dir/flags.make

runcl/CMakeFiles/runcl.dir/runcl.cpp.o: runcl/CMakeFiles/runcl.dir/flags.make
runcl/CMakeFiles/runcl.dir/runcl.cpp.o: runcl/runcl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object runcl/CMakeFiles/runcl.dir/runcl.cpp.o"
	cd /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runcl.dir/runcl.cpp.o -c /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl/runcl.cpp

runcl/CMakeFiles/runcl.dir/runcl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runcl.dir/runcl.cpp.i"
	cd /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl/runcl.cpp > CMakeFiles/runcl.dir/runcl.cpp.i

runcl/CMakeFiles/runcl.dir/runcl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runcl.dir/runcl.cpp.s"
	cd /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl/runcl.cpp -o CMakeFiles/runcl.dir/runcl.cpp.s

runcl/CMakeFiles/runcl.dir/runcl.cpp.o.requires:

.PHONY : runcl/CMakeFiles/runcl.dir/runcl.cpp.o.requires

runcl/CMakeFiles/runcl.dir/runcl.cpp.o.provides: runcl/CMakeFiles/runcl.dir/runcl.cpp.o.requires
	$(MAKE) -f runcl/CMakeFiles/runcl.dir/build.make runcl/CMakeFiles/runcl.dir/runcl.cpp.o.provides.build
.PHONY : runcl/CMakeFiles/runcl.dir/runcl.cpp.o.provides

runcl/CMakeFiles/runcl.dir/runcl.cpp.o.provides.build: runcl/CMakeFiles/runcl.dir/runcl.cpp.o


# Object files for target runcl
runcl_OBJECTS = \
"CMakeFiles/runcl.dir/runcl.cpp.o"

# External object files for target runcl
runcl_EXTERNAL_OBJECTS =

bin/runcl: runcl/CMakeFiles/runcl.dir/runcl.cpp.o
bin/runcl: runcl/CMakeFiles/runcl.dir/build.make
bin/runcl: /usr/lib/x86_64-linux-gnu/libOpenCL.so
bin/runcl: runcl/CMakeFiles/runcl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/runcl"
	cd /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runcl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
runcl/CMakeFiles/runcl.dir/build: bin/runcl

.PHONY : runcl/CMakeFiles/runcl.dir/build

runcl/CMakeFiles/runcl.dir/requires: runcl/CMakeFiles/runcl.dir/runcl.cpp.o.requires

.PHONY : runcl/CMakeFiles/runcl.dir/requires

runcl/CMakeFiles/runcl.dir/clean:
	cd /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl && $(CMAKE_COMMAND) -P CMakeFiles/runcl.dir/cmake_clean.cmake
.PHONY : runcl/CMakeFiles/runcl.dir/clean

runcl/CMakeFiles/runcl.dir/depend:
	cd /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/runcl/CMakeFiles/runcl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : runcl/CMakeFiles/runcl.dir/depend

