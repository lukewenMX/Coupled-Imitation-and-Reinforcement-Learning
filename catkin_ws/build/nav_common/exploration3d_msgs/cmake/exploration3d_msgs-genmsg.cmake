# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exploration3d_msgs: 7 messages, 3 services")

set(MSG_I_FLAGS "-Iexploration3d_msgs:/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exploration3d_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:exploration3d_msgs/SurfaceFrontierRepresentative:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg" "geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg" "exploration3d_msgs/SurfaceFrontierRepresentative:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:exploration3d_msgs/SurfaceFrontierUpdates:geometry_msgs/Point:exploration3d_msgs/SurfaceFrontierRepresentative:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:exploration3d_msgs/FreeSpaceFrontierRepresentative"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg" "exploration3d_msgs/SurfaceFrontierRepresentative:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv" "geometry_msgs/PoseStamped:exploration3d_msgs/FreeSpaceFrontierRepresentative:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg" NAME_WE)
add_custom_target(_exploration3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration3d_msgs" "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)

### Generating Services
_generate_srv_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_cpp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
)

### Generating Module File
_generate_module_cpp(exploration3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exploration3d_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exploration3d_msgs_generate_messages exploration3d_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_cpp _exploration3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration3d_msgs_gencpp)
add_dependencies(exploration3d_msgs_gencpp exploration3d_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration3d_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)

### Generating Services
_generate_srv_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_eus(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
)

### Generating Module File
_generate_module_eus(exploration3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(exploration3d_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(exploration3d_msgs_generate_messages exploration3d_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_eus _exploration3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration3d_msgs_geneus)
add_dependencies(exploration3d_msgs_geneus exploration3d_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration3d_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)

### Generating Services
_generate_srv_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_lisp(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
)

### Generating Module File
_generate_module_lisp(exploration3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exploration3d_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exploration3d_msgs_generate_messages exploration3d_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_lisp _exploration3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration3d_msgs_genlisp)
add_dependencies(exploration3d_msgs_genlisp exploration3d_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration3d_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)

### Generating Services
_generate_srv_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_nodejs(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
)

### Generating Module File
_generate_module_nodejs(exploration3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(exploration3d_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(exploration3d_msgs_generate_messages exploration3d_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_nodejs _exploration3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration3d_msgs_gennodejs)
add_dependencies(exploration3d_msgs_gennodejs exploration3d_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration3d_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg"
  "${MSG_I_FLAGS}"
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_msg_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)

### Generating Services
_generate_srv_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)
_generate_srv_py(exploration3d_msgs
  "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
)

### Generating Module File
_generate_module_py(exploration3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exploration3d_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exploration3d_msgs_generate_messages exploration3d_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTask.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierUpdates.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetSurfaceFrontierUpdates.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/FreeSpaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentatives.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/srv/GetFreeSpaceFrontierRepresentatives.srv" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/ExplorationTaskUpdate.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg/SurfaceFrontierRepresentative.msg" NAME_WE)
add_dependencies(exploration3d_msgs_generate_messages_py _exploration3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration3d_msgs_genpy)
add_dependencies(exploration3d_msgs_genpy exploration3d_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration3d_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration3d_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(exploration3d_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration3d_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(exploration3d_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration3d_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(exploration3d_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration3d_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(exploration3d_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration3d_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(exploration3d_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
