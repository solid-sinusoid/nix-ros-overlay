
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosatomic, catkin, allocators, roslib, std-msgs, lockfree, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rosrt";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/melodic/rosrt/1.0.25-0.tar.gz;
    sha256 = "ab1cb91949e270a78898a6d03547538b9c4da40d82d9da354cda672ba8585f11";
  };

  buildInputs = [ roslib rosatomic std-msgs rosunit lockfree roscpp allocators ];
  propagatedBuildInputs = [ roslib rosatomic std-msgs rosunit lockfree roscpp allocators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosrt provides classes for interfacing with ROS from within realtime systems, such as realtime-safe Publisher and Subscriber classes.'';
    #license = lib.licenses.BSD;
  };
}