# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/florian/coding/raspberry_pi/open62541

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/florian/coding/raspberry_pi/open62541/build

# Include any dependencies generated for this target.
include CMakeFiles/server_repeated_job.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server_repeated_job.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server_repeated_job.dir/flags.make

CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o: CMakeFiles/server_repeated_job.dir/flags.make
CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o: ../examples/server_repeated_job.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/florian/coding/raspberry_pi/open62541/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o"
	/home/florian/coding/raspberry_pi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o   -c /home/florian/coding/raspberry_pi/open62541/examples/server_repeated_job.c

CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.i"
	/home/florian/coding/raspberry_pi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/florian/coding/raspberry_pi/open62541/examples/server_repeated_job.c > CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.i

CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.s"
	/home/florian/coding/raspberry_pi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/florian/coding/raspberry_pi/open62541/examples/server_repeated_job.c -o CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.s

CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.requires:
.PHONY : CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.requires

CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.provides: CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.requires
	$(MAKE) -f CMakeFiles/server_repeated_job.dir/build.make CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.provides.build
.PHONY : CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.provides

CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.provides.build: CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o

# Object files for target server_repeated_job
server_repeated_job_OBJECTS = \
"CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o"

# External object files for target server_repeated_job
server_repeated_job_EXTERNAL_OBJECTS = \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/ua_types.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/ua_types_encoding_binary.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src_generated/ua_types_generated.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src_generated/ua_transport_generated.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/ua_connection.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/ua_securechannel.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/ua_session.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_server.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_server_binary.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_nodes.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_server_worker.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_securechannel_manager.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_session_manager.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_services_discovery.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_services_securechannel.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_services_session.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_services_attribute.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_services_nodemanagement.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_services_view.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/client/ua_client.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/client/ua_client_highlevel.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/examples/networklayer_tcp.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/examples/logger_stdout.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/deps/pcg_basic.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_services_call.c.o" \
"/home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/open62541-object.dir/src/server/ua_nodestore.c.o"

server_repeated_job: CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/ua_types.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/ua_types_encoding_binary.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src_generated/ua_types_generated.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src_generated/ua_transport_generated.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/ua_connection.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/ua_securechannel.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/ua_session.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_server.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_server_binary.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_nodes.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_server_worker.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_securechannel_manager.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_session_manager.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_services_discovery.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_services_securechannel.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_services_session.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_services_attribute.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_services_nodemanagement.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_services_view.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/client/ua_client.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/client/ua_client_highlevel.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/examples/networklayer_tcp.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/examples/logger_stdout.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/deps/pcg_basic.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_services_call.c.o
server_repeated_job: CMakeFiles/open62541-object.dir/src/server/ua_nodestore.c.o
server_repeated_job: CMakeFiles/server_repeated_job.dir/build.make
server_repeated_job: CMakeFiles/server_repeated_job.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable server_repeated_job"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server_repeated_job.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server_repeated_job.dir/build: server_repeated_job
.PHONY : CMakeFiles/server_repeated_job.dir/build

CMakeFiles/server_repeated_job.dir/requires: CMakeFiles/server_repeated_job.dir/examples/server_repeated_job.c.o.requires
.PHONY : CMakeFiles/server_repeated_job.dir/requires

CMakeFiles/server_repeated_job.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server_repeated_job.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server_repeated_job.dir/clean

CMakeFiles/server_repeated_job.dir/depend:
	cd /home/florian/coding/raspberry_pi/open62541/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/florian/coding/raspberry_pi/open62541 /home/florian/coding/raspberry_pi/open62541 /home/florian/coding/raspberry_pi/open62541/build /home/florian/coding/raspberry_pi/open62541/build /home/florian/coding/raspberry_pi/open62541/build/CMakeFiles/server_repeated_job.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server_repeated_job.dir/depend

