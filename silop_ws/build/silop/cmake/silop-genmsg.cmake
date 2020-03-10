# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "silop: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isilop:/home/lab/silop_ws/src/silop/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(silop_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lab/silop_ws/src/silop/msg/ImuData.msg" NAME_WE)
add_custom_target(_silop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "silop" "/home/lab/silop_ws/src/silop/msg/ImuData.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(silop
  "/home/lab/silop_ws/src/silop/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/silop
)

### Generating Services

### Generating Module File
_generate_module_cpp(silop
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/silop
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(silop_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(silop_generate_messages silop_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/silop/msg/ImuData.msg" NAME_WE)
add_dependencies(silop_generate_messages_cpp _silop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(silop_gencpp)
add_dependencies(silop_gencpp silop_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS silop_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(silop
  "/home/lab/silop_ws/src/silop/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/silop
)

### Generating Services

### Generating Module File
_generate_module_eus(silop
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/silop
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(silop_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(silop_generate_messages silop_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/silop/msg/ImuData.msg" NAME_WE)
add_dependencies(silop_generate_messages_eus _silop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(silop_geneus)
add_dependencies(silop_geneus silop_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS silop_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(silop
  "/home/lab/silop_ws/src/silop/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/silop
)

### Generating Services

### Generating Module File
_generate_module_lisp(silop
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/silop
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(silop_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(silop_generate_messages silop_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/silop/msg/ImuData.msg" NAME_WE)
add_dependencies(silop_generate_messages_lisp _silop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(silop_genlisp)
add_dependencies(silop_genlisp silop_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS silop_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(silop
  "/home/lab/silop_ws/src/silop/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/silop
)

### Generating Services

### Generating Module File
_generate_module_nodejs(silop
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/silop
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(silop_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(silop_generate_messages silop_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/silop/msg/ImuData.msg" NAME_WE)
add_dependencies(silop_generate_messages_nodejs _silop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(silop_gennodejs)
add_dependencies(silop_gennodejs silop_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS silop_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(silop
  "/home/lab/silop_ws/src/silop/msg/ImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/silop
)

### Generating Services

### Generating Module File
_generate_module_py(silop
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/silop
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(silop_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(silop_generate_messages silop_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lab/silop_ws/src/silop/msg/ImuData.msg" NAME_WE)
add_dependencies(silop_generate_messages_py _silop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(silop_genpy)
add_dependencies(silop_genpy silop_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS silop_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/silop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/silop
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(silop_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(silop_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/silop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/silop
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(silop_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(silop_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/silop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/silop
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(silop_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(silop_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/silop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/silop
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(silop_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(silop_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/silop)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/silop\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/silop
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(silop_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(silop_generate_messages_py std_msgs_generate_messages_py)
endif()
