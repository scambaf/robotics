# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "shimmer: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ishimmer:/home/lab/silop_ws/src/shimmer/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(shimmer_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg" NAME_WE)
add_custom_target(_shimmer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shimmer" "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/Heading.msg" NAME_WE)
add_custom_target(_shimmer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shimmer" "/home/lab/silop_ws/src/shimmer/msg/Heading.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shimmer
)
_generate_msg_cpp(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shimmer
)

### Generating Services

### Generating Module File
_generate_module_cpp(shimmer
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shimmer
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(shimmer_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(shimmer_generate_messages shimmer_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_cpp _shimmer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/Heading.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_cpp _shimmer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shimmer_gencpp)
add_dependencies(shimmer_gencpp shimmer_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shimmer_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shimmer
)
_generate_msg_eus(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shimmer
)

### Generating Services

### Generating Module File
_generate_module_eus(shimmer
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shimmer
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(shimmer_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(shimmer_generate_messages shimmer_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_eus _shimmer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/Heading.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_eus _shimmer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shimmer_geneus)
add_dependencies(shimmer_geneus shimmer_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shimmer_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shimmer
)
_generate_msg_lisp(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shimmer
)

### Generating Services

### Generating Module File
_generate_module_lisp(shimmer
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shimmer
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(shimmer_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(shimmer_generate_messages shimmer_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_lisp _shimmer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/Heading.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_lisp _shimmer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shimmer_genlisp)
add_dependencies(shimmer_genlisp shimmer_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shimmer_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shimmer
)
_generate_msg_nodejs(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shimmer
)

### Generating Services

### Generating Module File
_generate_module_nodejs(shimmer
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shimmer
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(shimmer_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(shimmer_generate_messages shimmer_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_nodejs _shimmer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/Heading.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_nodejs _shimmer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shimmer_gennodejs)
add_dependencies(shimmer_gennodejs shimmer_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shimmer_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shimmer
)
_generate_msg_py(shimmer
  "/home/lab/silop_ws/src/shimmer/msg/Heading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shimmer
)

### Generating Services

### Generating Module File
_generate_module_py(shimmer
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shimmer
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(shimmer_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(shimmer_generate_messages shimmer_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/ImuData.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_py _shimmer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lab/silop_ws/src/shimmer/msg/Heading.msg" NAME_WE)
add_dependencies(shimmer_generate_messages_py _shimmer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shimmer_genpy)
add_dependencies(shimmer_genpy shimmer_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shimmer_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shimmer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shimmer
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(shimmer_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(shimmer_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shimmer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/shimmer
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(shimmer_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(shimmer_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shimmer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shimmer
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(shimmer_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(shimmer_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shimmer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/shimmer
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(shimmer_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(shimmer_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shimmer)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shimmer\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shimmer
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(shimmer_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(shimmer_generate_messages_py geometry_msgs_generate_messages_py)
endif()
