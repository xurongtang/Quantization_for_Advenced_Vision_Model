cmake_minimum_required(VERSION 3.16)
project(MyProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# =============== 强制静态链接（关键！）===============
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
set(BUILD_SHARED_LIBS OFF)
set(CMAKE_EXE_LINKER_FLAGS "-static")

# =============== 第三方库路径 ===============
set(THIRD_PARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty)

# =============== Eigen ===============
set(EIGEN3_INCLUDE_DIR ${THIRD_PARTY_DIR}/eigen)
add_library(eigen INTERFACE)
target_include_directories(eigen INTERFACE ${EIGEN3_INCLUDE_DIR})

# =============== OpenCV ===============
set(OpenCV_DIR ${THIRD_PARTY_DIR}/opencv-install/lib/cmake/opencv4)
find_package(OpenCV REQUIRED NO_MODULE)

# =============== MNN ===============
set(MNN_ROOT ${THIRD_PARTY_DIR}/mnn-install)
add_library(mnn STATIC IMPORTED)
set_target_properties(mnn PROPERTIES
    IMPORTED_LOCATION ${MNN_ROOT}/lib/libMNN.a
    INTERFACE_INCLUDE_DIRECTORIES ${MNN_ROOT}/include
)

# =============== 收集源文件 ===============
file(GLOB_RECURSE SRC_FILES
    LIST_DIRECTORIES false
    CONFIGURE_DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)

# =============== 1. 内部核心库（仅你的代码，用于测试）===============
add_library(_all_core STATIC ${SRC_FILES})
target_include_directories(_all_core
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src
)
target_link_libraries(_all_core
    PUBLIC
        ${OpenCV_LIBS}
        mnn
        eigen
)

# =============== 2. 【新增】全依赖自包含静态库（用于分发）===============
# 获取所有 OpenCV 静态库的绝对路径
file(GLOB OPENCV_STATIC_LIBS
    LIST_DIRECTORIES false
    ${THIRD_PARTY_DIR}/opencv-install/lib/libopencv_*.a
)

# 确保列表非空
if(NOT OPENCV_STATIC_LIBS)
    message(FATAL_ERROR "No OpenCV static libraries found in ${THIRD_PARTY_DIR}/opencv-install/lib/")
endif()

# 输出路径
set(MYPROJECT_FULL_LIB "${CMAKE_BINARY_DIR}/libmyproject_core.a")

# 合并：你的代码目标文件 + OpenCV .a + MNN .a
add_custom_command(
    OUTPUT "${MYPROJECT_FULL_LIB}"
    COMMAND ${CMAKE_AR} rcs "${MYPROJECT_FULL_LIB}"
        $<TARGET_OBJECTS:_all_core>
        ${OPENCV_STATIC_LIBS}
        ${MNN_ROOT}/lib/libMNN.a
    DEPENDS _all_core
    COMMENT "Creating self-contained libmyproject_core.a"
)

add_custom_target(myproject_core ALL
    DEPENDS "${MYPROJECT_FULL_LIB}"
)

# =============== 3. 安装规则（用于打包 SDK）===============
include(GNUInstallDirs)

# 安装自包含库
install(FILES "${MYPROJECT_FULL_LIB}"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RENAME libmyproject_core.a
)

# 安装头文件（假设你的 API 头文件在 src/ 目录下）
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/src/
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/myproject
    FILES_MATCHING PATTERN "*.h*"
)

# =============== 4. 测试可执行文件（保持不变）===============
function(add_test_executable TEST_SOURCE)
    get_filename_component(TEST_NAME ${TEST_SOURCE} NAME_WE)
    add_executable(${TEST_NAME} ${TEST_SOURCE})
    target_link_libraries(${TEST_NAME} PRIVATE
        _all_core
        -static-libstdc++
        -static-libgcc
    )
endfunction()

file(GLOB TEST_SOURCES
    LIST_DIRECTORIES false
    CONFIGURE_DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/test/*.cpp
)

foreach(TEST_SRC ${TEST_SOURCES})
    add_test_executable(${TEST_SRC})
endforeach()