project(glfw)

set(include_dir "${CMAKE_CURRENT_LIST_DIR}/include/")

include_directories(${include_dir})
add_library(glfw STATIC IMPORTED)

if(MSVC)
#TODO
elseif(APPLE)
    set(lib_dir "${CMAKE_CURRENT_LIST_DIR}/lib/mac/libglfw3.a")
elseif(UNIX)
#TODO
endif()

set_target_properties(glfw PROPERTIES 
                        IMPORTED_LOCATION ${lib_dir}
                        INTERFACE_INCLUDE_DIRECTORIES ${include_dir})