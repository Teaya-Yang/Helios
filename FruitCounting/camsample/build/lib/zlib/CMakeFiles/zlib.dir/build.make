# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/teaya/Documents/Repos/Helios/FruitCounting/camsample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build

# Include any dependencies generated for this target.
include lib/zlib/CMakeFiles/zlib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/zlib/CMakeFiles/zlib.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/zlib/CMakeFiles/zlib.dir/progress.make

# Include the compile flags for this target's objects.
include lib/zlib/CMakeFiles/zlib.dir/flags.make

lib/zlib/CMakeFiles/zlib.dir/adler32.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/adler32.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/adler32.c
lib/zlib/CMakeFiles/zlib.dir/adler32.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/zlib/CMakeFiles/zlib.dir/adler32.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/adler32.o -MF CMakeFiles/zlib.dir/adler32.o.d -o CMakeFiles/zlib.dir/adler32.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/adler32.c

lib/zlib/CMakeFiles/zlib.dir/adler32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/adler32.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/adler32.c > CMakeFiles/zlib.dir/adler32.i

lib/zlib/CMakeFiles/zlib.dir/adler32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/adler32.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/adler32.c -o CMakeFiles/zlib.dir/adler32.s

lib/zlib/CMakeFiles/zlib.dir/compress.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/compress.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/compress.c
lib/zlib/CMakeFiles/zlib.dir/compress.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/zlib/CMakeFiles/zlib.dir/compress.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/compress.o -MF CMakeFiles/zlib.dir/compress.o.d -o CMakeFiles/zlib.dir/compress.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/compress.c

lib/zlib/CMakeFiles/zlib.dir/compress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/compress.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/compress.c > CMakeFiles/zlib.dir/compress.i

lib/zlib/CMakeFiles/zlib.dir/compress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/compress.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/compress.c -o CMakeFiles/zlib.dir/compress.s

lib/zlib/CMakeFiles/zlib.dir/crc32.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/crc32.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/crc32.c
lib/zlib/CMakeFiles/zlib.dir/crc32.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/zlib/CMakeFiles/zlib.dir/crc32.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/crc32.o -MF CMakeFiles/zlib.dir/crc32.o.d -o CMakeFiles/zlib.dir/crc32.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/crc32.c

lib/zlib/CMakeFiles/zlib.dir/crc32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/crc32.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/crc32.c > CMakeFiles/zlib.dir/crc32.i

lib/zlib/CMakeFiles/zlib.dir/crc32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/crc32.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/crc32.c -o CMakeFiles/zlib.dir/crc32.s

lib/zlib/CMakeFiles/zlib.dir/deflate.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/deflate.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/deflate.c
lib/zlib/CMakeFiles/zlib.dir/deflate.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lib/zlib/CMakeFiles/zlib.dir/deflate.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/deflate.o -MF CMakeFiles/zlib.dir/deflate.o.d -o CMakeFiles/zlib.dir/deflate.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/deflate.c

lib/zlib/CMakeFiles/zlib.dir/deflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/deflate.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/deflate.c > CMakeFiles/zlib.dir/deflate.i

lib/zlib/CMakeFiles/zlib.dir/deflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/deflate.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/deflate.c -o CMakeFiles/zlib.dir/deflate.s

lib/zlib/CMakeFiles/zlib.dir/gzclose.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/gzclose.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzclose.c
lib/zlib/CMakeFiles/zlib.dir/gzclose.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object lib/zlib/CMakeFiles/zlib.dir/gzclose.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/gzclose.o -MF CMakeFiles/zlib.dir/gzclose.o.d -o CMakeFiles/zlib.dir/gzclose.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzclose.c

lib/zlib/CMakeFiles/zlib.dir/gzclose.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzclose.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzclose.c > CMakeFiles/zlib.dir/gzclose.i

lib/zlib/CMakeFiles/zlib.dir/gzclose.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzclose.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzclose.c -o CMakeFiles/zlib.dir/gzclose.s

lib/zlib/CMakeFiles/zlib.dir/gzlib.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/gzlib.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzlib.c
lib/zlib/CMakeFiles/zlib.dir/gzlib.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object lib/zlib/CMakeFiles/zlib.dir/gzlib.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/gzlib.o -MF CMakeFiles/zlib.dir/gzlib.o.d -o CMakeFiles/zlib.dir/gzlib.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzlib.c

lib/zlib/CMakeFiles/zlib.dir/gzlib.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzlib.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzlib.c > CMakeFiles/zlib.dir/gzlib.i

lib/zlib/CMakeFiles/zlib.dir/gzlib.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzlib.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzlib.c -o CMakeFiles/zlib.dir/gzlib.s

lib/zlib/CMakeFiles/zlib.dir/gzread.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/gzread.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzread.c
lib/zlib/CMakeFiles/zlib.dir/gzread.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object lib/zlib/CMakeFiles/zlib.dir/gzread.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/gzread.o -MF CMakeFiles/zlib.dir/gzread.o.d -o CMakeFiles/zlib.dir/gzread.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzread.c

lib/zlib/CMakeFiles/zlib.dir/gzread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzread.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzread.c > CMakeFiles/zlib.dir/gzread.i

lib/zlib/CMakeFiles/zlib.dir/gzread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzread.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzread.c -o CMakeFiles/zlib.dir/gzread.s

lib/zlib/CMakeFiles/zlib.dir/gzwrite.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/gzwrite.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzwrite.c
lib/zlib/CMakeFiles/zlib.dir/gzwrite.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object lib/zlib/CMakeFiles/zlib.dir/gzwrite.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/gzwrite.o -MF CMakeFiles/zlib.dir/gzwrite.o.d -o CMakeFiles/zlib.dir/gzwrite.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzwrite.c

lib/zlib/CMakeFiles/zlib.dir/gzwrite.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzwrite.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzwrite.c > CMakeFiles/zlib.dir/gzwrite.i

lib/zlib/CMakeFiles/zlib.dir/gzwrite.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzwrite.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/gzwrite.c -o CMakeFiles/zlib.dir/gzwrite.s

lib/zlib/CMakeFiles/zlib.dir/inflate.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/inflate.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/inflate.c
lib/zlib/CMakeFiles/zlib.dir/inflate.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object lib/zlib/CMakeFiles/zlib.dir/inflate.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/inflate.o -MF CMakeFiles/zlib.dir/inflate.o.d -o CMakeFiles/zlib.dir/inflate.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/inflate.c

lib/zlib/CMakeFiles/zlib.dir/inflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inflate.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/inflate.c > CMakeFiles/zlib.dir/inflate.i

lib/zlib/CMakeFiles/zlib.dir/inflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inflate.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/inflate.c -o CMakeFiles/zlib.dir/inflate.s

lib/zlib/CMakeFiles/zlib.dir/infback.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/infback.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/infback.c
lib/zlib/CMakeFiles/zlib.dir/infback.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object lib/zlib/CMakeFiles/zlib.dir/infback.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/infback.o -MF CMakeFiles/zlib.dir/infback.o.d -o CMakeFiles/zlib.dir/infback.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/infback.c

lib/zlib/CMakeFiles/zlib.dir/infback.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/infback.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/infback.c > CMakeFiles/zlib.dir/infback.i

lib/zlib/CMakeFiles/zlib.dir/infback.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/infback.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/infback.c -o CMakeFiles/zlib.dir/infback.s

lib/zlib/CMakeFiles/zlib.dir/inftrees.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/inftrees.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/inftrees.c
lib/zlib/CMakeFiles/zlib.dir/inftrees.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object lib/zlib/CMakeFiles/zlib.dir/inftrees.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/inftrees.o -MF CMakeFiles/zlib.dir/inftrees.o.d -o CMakeFiles/zlib.dir/inftrees.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/inftrees.c

lib/zlib/CMakeFiles/zlib.dir/inftrees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inftrees.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/inftrees.c > CMakeFiles/zlib.dir/inftrees.i

lib/zlib/CMakeFiles/zlib.dir/inftrees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inftrees.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/inftrees.c -o CMakeFiles/zlib.dir/inftrees.s

lib/zlib/CMakeFiles/zlib.dir/inffast.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/inffast.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/inffast.c
lib/zlib/CMakeFiles/zlib.dir/inffast.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object lib/zlib/CMakeFiles/zlib.dir/inffast.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/inffast.o -MF CMakeFiles/zlib.dir/inffast.o.d -o CMakeFiles/zlib.dir/inffast.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/inffast.c

lib/zlib/CMakeFiles/zlib.dir/inffast.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inffast.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/inffast.c > CMakeFiles/zlib.dir/inffast.i

lib/zlib/CMakeFiles/zlib.dir/inffast.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inffast.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/inffast.c -o CMakeFiles/zlib.dir/inffast.s

lib/zlib/CMakeFiles/zlib.dir/trees.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/trees.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/trees.c
lib/zlib/CMakeFiles/zlib.dir/trees.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object lib/zlib/CMakeFiles/zlib.dir/trees.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/trees.o -MF CMakeFiles/zlib.dir/trees.o.d -o CMakeFiles/zlib.dir/trees.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/trees.c

lib/zlib/CMakeFiles/zlib.dir/trees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/trees.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/trees.c > CMakeFiles/zlib.dir/trees.i

lib/zlib/CMakeFiles/zlib.dir/trees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/trees.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/trees.c -o CMakeFiles/zlib.dir/trees.s

lib/zlib/CMakeFiles/zlib.dir/uncompr.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/uncompr.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/uncompr.c
lib/zlib/CMakeFiles/zlib.dir/uncompr.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object lib/zlib/CMakeFiles/zlib.dir/uncompr.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/uncompr.o -MF CMakeFiles/zlib.dir/uncompr.o.d -o CMakeFiles/zlib.dir/uncompr.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/uncompr.c

lib/zlib/CMakeFiles/zlib.dir/uncompr.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/uncompr.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/uncompr.c > CMakeFiles/zlib.dir/uncompr.i

lib/zlib/CMakeFiles/zlib.dir/uncompr.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/uncompr.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/uncompr.c -o CMakeFiles/zlib.dir/uncompr.s

lib/zlib/CMakeFiles/zlib.dir/zutil.o: lib/zlib/CMakeFiles/zlib.dir/flags.make
lib/zlib/CMakeFiles/zlib.dir/zutil.o: /home/teaya/Documents/Repos/Helios/core/lib/zlib/zutil.c
lib/zlib/CMakeFiles/zlib.dir/zutil.o: lib/zlib/CMakeFiles/zlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object lib/zlib/CMakeFiles/zlib.dir/zutil.o"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/zlib/CMakeFiles/zlib.dir/zutil.o -MF CMakeFiles/zlib.dir/zutil.o.d -o CMakeFiles/zlib.dir/zutil.o -c /home/teaya/Documents/Repos/Helios/core/lib/zlib/zutil.c

lib/zlib/CMakeFiles/zlib.dir/zutil.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/zutil.i"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/teaya/Documents/Repos/Helios/core/lib/zlib/zutil.c > CMakeFiles/zlib.dir/zutil.i

lib/zlib/CMakeFiles/zlib.dir/zutil.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/zutil.s"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/teaya/Documents/Repos/Helios/core/lib/zlib/zutil.c -o CMakeFiles/zlib.dir/zutil.s

# Object files for target zlib
zlib_OBJECTS = \
"CMakeFiles/zlib.dir/adler32.o" \
"CMakeFiles/zlib.dir/compress.o" \
"CMakeFiles/zlib.dir/crc32.o" \
"CMakeFiles/zlib.dir/deflate.o" \
"CMakeFiles/zlib.dir/gzclose.o" \
"CMakeFiles/zlib.dir/gzlib.o" \
"CMakeFiles/zlib.dir/gzread.o" \
"CMakeFiles/zlib.dir/gzwrite.o" \
"CMakeFiles/zlib.dir/inflate.o" \
"CMakeFiles/zlib.dir/infback.o" \
"CMakeFiles/zlib.dir/inftrees.o" \
"CMakeFiles/zlib.dir/inffast.o" \
"CMakeFiles/zlib.dir/trees.o" \
"CMakeFiles/zlib.dir/uncompr.o" \
"CMakeFiles/zlib.dir/zutil.o"

# External object files for target zlib
zlib_EXTERNAL_OBJECTS =

lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/adler32.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/compress.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/crc32.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/deflate.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/gzclose.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/gzlib.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/gzread.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/gzwrite.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/inflate.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/infback.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/inftrees.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/inffast.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/trees.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/uncompr.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/zutil.o
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/build.make
lib/libz.so.1.2.8: lib/zlib/CMakeFiles/zlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C shared library ../libz.so"
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zlib.dir/link.txt --verbose=$(VERBOSE)
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && $(CMAKE_COMMAND) -E cmake_symlink_library ../libz.so.1.2.8 ../libz.so.1 ../libz.so

lib/libz.so.1: lib/libz.so.1.2.8
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libz.so.1

lib/libz.so: lib/libz.so.1.2.8
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libz.so

# Rule to build all files generated by this target.
lib/zlib/CMakeFiles/zlib.dir/build: lib/libz.so
.PHONY : lib/zlib/CMakeFiles/zlib.dir/build

lib/zlib/CMakeFiles/zlib.dir/clean:
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib && $(CMAKE_COMMAND) -P CMakeFiles/zlib.dir/cmake_clean.cmake
.PHONY : lib/zlib/CMakeFiles/zlib.dir/clean

lib/zlib/CMakeFiles/zlib.dir/depend:
	cd /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/teaya/Documents/Repos/Helios/FruitCounting/camsample /home/teaya/Documents/Repos/Helios/core/lib/zlib /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib /home/teaya/Documents/Repos/Helios/FruitCounting/camsample/build/lib/zlib/CMakeFiles/zlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/zlib/CMakeFiles/zlib.dir/depend

