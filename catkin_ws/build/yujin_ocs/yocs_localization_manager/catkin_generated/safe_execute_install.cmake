execute_process(COMMAND "/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/build/yujin_ocs/yocs_localization_manager/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/build/yujin_ocs/yocs_localization_manager/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
