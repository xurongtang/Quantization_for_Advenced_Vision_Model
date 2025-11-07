# Install script for directory: /home/rton/ModelQuantization/3rdparty/opencv

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rton/ModelQuantization/3rdparty/opencv-install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/aarch64-linux-gnu-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlicensesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE RENAME "dlpack-LICENSE" FILES "/home/rton/ModelQuantization/3rdparty/opencv/3rdparty/dlpack/LICENSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlicensesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE RENAME "flatbuffers-LICENSE.txt" FILES "/home/rton/ModelQuantization/3rdparty/opencv/3rdparty/flatbuffers/LICENSE.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencv4/3rdparty" TYPE STATIC_LIBRARY OPTIONAL FILES "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/lib/libade.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlicensesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv4" TYPE FILE RENAME "ade-LICENSE" FILES "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/ade/ade-0.1.2e/LICENSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE FILES "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/cvconfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE FILES "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/opencv2/opencv_modules.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake"
         "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/CMakeFiles/Export/lib/cmake/opencv4/OpenCVModules.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/CMakeFiles/Export/lib/cmake/opencv4/OpenCVModules.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/CMakeFiles/Export/lib/cmake/opencv4/OpenCVModules-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES
    "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/unix-install/OpenCVConfig-version.cmake"
    "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/unix-install/OpenCVConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xscriptsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/CMakeFiles/install/setup_vars_opencv4.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4" TYPE FILE FILES
    "/home/rton/ModelQuantization/3rdparty/opencv/platforms/scripts/valgrind.supp"
    "/home/rton/ModelQuantization/3rdparty/opencv/platforms/scripts/valgrind_3rdparty.supp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/zlib/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/libjpeg-turbo/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/libjasper/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/libpng/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/protobuf/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/hal/carotene/hal/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/3rdparty/ittnotify/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/include/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/calib3d/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/core/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/dnn/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/features2d/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/flann/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/gapi/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/highgui/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/imgcodecs/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/imgproc/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/java/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/js/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/ml/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/objc/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/objdetect/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/photo/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/python/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/stitching/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/ts/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/video/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/videoio/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/.firstpass/world/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/core/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/flann/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/imgproc/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/ml/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/photo/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/python_tests/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/dnn/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/features2d/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/imgcodecs/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/calib3d/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/objdetect/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/stitching/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/video/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/gapi/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/java_bindings_generator/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/js_bindings_generator/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/objc_bindings_generator/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/modules/python_bindings_generator/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/doc/cmake_install.cmake")
  include("/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/data/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/rton/ModelQuantization/3rdparty/opencv/build_arm64/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
