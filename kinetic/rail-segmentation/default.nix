
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, boost, tf, libyamlcpp, sensor-msgs, catkin, tf2-ros, pkg-config, tf2, roslib, rail-manipulation-msgs, message-generation, message-runtime, pcl-ros, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-rail-segmentation";
  version = "0.1.12";

  src = fetchurl {
    url = https://github.com/gt-rail-release/rail_segmentation/archive/release/kinetic/rail_segmentation/0.1.12-0.tar.gz;
    sha256 = "2bfe45cb8efdf45b4d53b41bb6bff97f396797c08483b51aa5d7e560d6e1e976";
  };

  buildInputs = [ std-srvs boost tf libyamlcpp sensor-msgs pkg-config tf2-ros roscpp tf2 rail-manipulation-msgs message-generation pcl-ros roslib pcl-conversions ];
  propagatedBuildInputs = [ std-srvs boost tf libyamlcpp sensor-msgs roscpp tf2-ros tf2 rail-manipulation-msgs message-runtime pcl-ros roslib pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Segmentation Functionality from the RAIL Lab'';
    #license = lib.licenses.BSD;
  };
}