# Copyright (c) 2015 Advanced Micro Devices, Inc. All rights reserved.
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#  
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#  
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

cmake_minimum_required (VERSION 2.8)
project (runvx)

set (CMAKE_CXX_STANDARD 11)
set("OpenCV_DIR" "/home/venomfate/opencv/build")

#set(${OpenCV_DIR} /home/venomfate/opencv/build)
find_package(OpenCL)
find_package(OpenCV PATHS /home/venomfate/opencv/cmake)

include_directories(../openvx/include)

list(APPEND SOURCES
	runvx.cpp
	vxArray.cpp
	vxConvolution.cpp
	vxDistribution.cpp
	vxEngine.cpp
	vxEngineUtil.cpp
	vxImage.cpp
	vxLUT.cpp
	vxMatrix.cpp
	vxParameter.cpp
	vxParamHelper.cpp
	vxPyramid.cpp
	vxRemap.cpp
	vxScalar.cpp
	vxThreshold.cpp
	vxTensor.cpp
	vxUtils.cpp
)

add_executable(runvx ${SOURCES})
target_link_libraries(runvx openvx)
install (TARGETS runvx DESTINATION bin)

if (OpenCL_FOUND)
	message("OpenCL_FOUND")
	target_compile_definitions(runvx PUBLIC ENABLE_OPENCL=1)
	include_directories(${OpenCL_INCLUDE_DIRS} ${OpenCL_INCLUDE_DIRS}/Headers)
	target_link_libraries(runvx ${OpenCL_LIBRARIES})
else(OpenCL_FOUND)
	target_compile_definitions(runvx PUBLIC ENABLE_OPENCL=0)
endif(OpenCL_FOUND)

message("ENABLE_OPENCV check")
if (OpenCV_FOUND)
	message("ENABLE_OPENCV=1")
	target_compile_definitions(runvx PUBLIC ENABLE_OPENCV=1)
	include_directories(${OpenCV_INCLUDE_DIRS})
	target_link_libraries(runvx ${OpenCV_LIBRARIES})
else(OpenCV_FOUND)
	target_compile_definitions(runvx PUBLIC ENABLE_OPENCV=0)
endif(OpenCV_FOUND)

if( POLICY CMP0054 )
  cmake_policy( SET CMP0054 OLD )
endif()
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
	set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /MT")
	set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MTd")
else()
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
	find_path(SSL_INCLUDE
		NAMES openssl/hmac.h openssl/md5.h
		HINTS /usr/local/opt/openssl/include /usr/include /usr/local/include /opt/local/include
	)
	if(NOT "${SSL_INCLUDE}" STREQUAL "SSL_INCLUDE-NOTFOUND")
		include_directories(${SSL_INCLUDE})
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DHAVE_OpenSSL=1")
		target_link_libraries(runvx crypto)
	endif()
endif()
