
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, statistics-msgs, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-image-exposure-msgs";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/image_exposure_msgs/0.13.4-0.tar.gz;
    sha256 = "c00581c3619079fa862447f37878201086bbd62a8f65405e68c80af761beba61";
  };

  buildInputs = [ std-msgs message-generation statistics-msgs ];
  propagatedBuildInputs = [ std-msgs statistics-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    #license = lib.licenses.BSD;
  };
}