# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe

# The command to remove a file.
RM = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata

# Utility rule file for qspips_example.

# Include any custom commands dependencies for this target.
include CMakeFiles/qspips_example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/qspips_example.dir/progress.make

CMakeFiles/qspips_example:
	lopper -f -O C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/qspips C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- bmcmake_metadata_xlnx ps7_cortexa9_0 C:/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/qspips_v3_11/examples drvcmake_metadata

qspips_example: CMakeFiles/qspips_example
qspips_example: CMakeFiles/qspips_example.dir/build.make
.PHONY : qspips_example

# Rule to build all files generated by this target.
CMakeFiles/qspips_example.dir/build: qspips_example
.PHONY : CMakeFiles/qspips_example.dir/build

CMakeFiles/qspips_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/qspips_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/qspips_example.dir/clean

CMakeFiles/qspips_example.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata C:/Users/danie/Documents/GitHub/GateKeeper/FPGA/vitis/GateKeeperVitis/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata/CMakeFiles/qspips_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/qspips_example.dir/depend

