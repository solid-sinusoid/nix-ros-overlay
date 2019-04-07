
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosmaster, rosparam, rosbuild, rosout, pythonPackages, catkin, rosgraph-msgs, rosclean, roslib, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-roslaunch";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roslaunch/1.12.14-0.tar.gz;
    sha256 = "0bfce708095fb2b46fba9d3f9e25f526d391d792d6217defab230c215ac756fd";
  };

  checkInputs = [ rosbuild ];
  propagatedBuildInputs = [ pythonPackages.paramiko rosmaster pythonPackages.rospkg rosparam rosout pythonPackages.pyyaml rosgraph-msgs rosclean roslib rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslaunch is a tool for easily launching multiple ROS <a href="http://ros.org/wiki/Nodes">nodes</a> locally and remotely
    via SSH, as well as setting parameters on the <a href="http://ros.org/wiki/Parameter Server">Parameter
    Server</a>. It includes options to automatically respawn processes
    that have already died. roslaunch takes in one or more XML
    configuration files (with the <tt>.launch</tt> extension) that
    specify the parameters to set and nodes to launch, as well as the
    machines that they should be run on.'';
    #license = lib.licenses.BSD;
  };
}