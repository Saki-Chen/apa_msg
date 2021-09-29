cmake_minimum_required(VERSION 3.0.2)
project(apa_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  rospy
  std_msgs
  geometry_msgs
)

add_message_files(
  FILES
  SteeringAngleStamped.msg
  WheelEncoderStamped.msg
  FloatStamped.msg
  IntStamped.msg
  ChasisSpeedStamped.msg
  VehicleOdomEst2D.msg
  SlotInfoStamped.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
 CATKIN_DEPENDS message_runtime roscpp rospy std_msgs geometry_msgs
)
