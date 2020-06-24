# Install script for directory: /home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/rocm")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenvx.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenvx.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenvx.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/lib/libopenvx.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenvx.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenvx.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopenvx.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/vx_ext_amd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/VX" TYPE FILE FILES
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_api.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_compatibility.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_import.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_kernels.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_khr_icd.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_khr_ix.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_khr_nn.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_khr_tiling.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_khr_xml.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_nodes.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_types.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vx_vendors.h"
    "/home/venomfate/workspace/office/verisilicon/amd_imp/openvx_amd_implementation/amdovx-core/openvx/include/VX/vxu.h"
    )
endif()

