# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pkg_robot: 7 messages, 1 services")

set(MSG_I_FLAGS "-Ipkg_robot:/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pkg_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:pkg_robot/DoCarWashResult:std_msgs/Header"
)

get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg" "actionlib_msgs/GoalID:pkg_robot/DoCarWashActionResult:actionlib_msgs/GoalStatus:pkg_robot/DoCarWashGoal:pkg_robot/DoCarWashActionGoal:pkg_robot/DoCarWashFeedback:std_msgs/Header:pkg_robot/DoCarWashActionFeedback:pkg_robot/DoCarWashResult"
)

get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg" "actionlib_msgs/GoalID:pkg_robot/DoCarWashGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv" ""
)

get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg" ""
)

get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg" ""
)

get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:pkg_robot/DoCarWashFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg" NAME_WE)
add_custom_target(_pkg_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_robot" "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)
_generate_msg_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)
_generate_msg_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)
_generate_msg_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)
_generate_msg_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)
_generate_msg_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)
_generate_msg_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)

### Generating Services
_generate_srv_cpp(pkg_robot
  "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
)

### Generating Module File
_generate_module_cpp(pkg_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pkg_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pkg_robot_generate_messages pkg_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_cpp _pkg_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_robot_gencpp)
add_dependencies(pkg_robot_gencpp pkg_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)
_generate_msg_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)
_generate_msg_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)
_generate_msg_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)
_generate_msg_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)
_generate_msg_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)
_generate_msg_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)

### Generating Services
_generate_srv_eus(pkg_robot
  "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
)

### Generating Module File
_generate_module_eus(pkg_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pkg_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pkg_robot_generate_messages pkg_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_eus _pkg_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_robot_geneus)
add_dependencies(pkg_robot_geneus pkg_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)
_generate_msg_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)
_generate_msg_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)
_generate_msg_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)
_generate_msg_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)
_generate_msg_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)
_generate_msg_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)

### Generating Services
_generate_srv_lisp(pkg_robot
  "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
)

### Generating Module File
_generate_module_lisp(pkg_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pkg_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pkg_robot_generate_messages pkg_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_lisp _pkg_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_robot_genlisp)
add_dependencies(pkg_robot_genlisp pkg_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)
_generate_msg_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)
_generate_msg_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)
_generate_msg_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)
_generate_msg_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)
_generate_msg_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)
_generate_msg_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)

### Generating Services
_generate_srv_nodejs(pkg_robot
  "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
)

### Generating Module File
_generate_module_nodejs(pkg_robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pkg_robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pkg_robot_generate_messages pkg_robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_nodejs _pkg_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_robot_gennodejs)
add_dependencies(pkg_robot_gennodejs pkg_robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)
_generate_msg_py(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)
_generate_msg_py(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)
_generate_msg_py(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)
_generate_msg_py(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)
_generate_msg_py(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)
_generate_msg_py(pkg_robot
  "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)

### Generating Services
_generate_srv_py(pkg_robot
  "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
)

### Generating Module File
_generate_module_py(pkg_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pkg_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pkg_robot_generate_messages pkg_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashAction.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/src/pkg_robot/srv/sum_two_int.srv" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashGoal.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashActionFeedback.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg/DoCarWashResult.msg" NAME_WE)
add_dependencies(pkg_robot_generate_messages_py _pkg_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_robot_genpy)
add_dependencies(pkg_robot_genpy pkg_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pkg_robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pkg_robot_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pkg_robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pkg_robot_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pkg_robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pkg_robot_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pkg_robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pkg_robot_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pkg_robot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pkg_robot_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
