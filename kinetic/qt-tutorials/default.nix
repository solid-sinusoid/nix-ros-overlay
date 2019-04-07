
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt4, catkin, message-generation, message-runtime, qt-build, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-qt-tutorials";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/qt_ros-release/archive/release/kinetic/qt_tutorials/0.2.10-0.tar.gz;
    sha256 = "d94628cee5979d8ec1001f4afa7daecde68fb23efa6c79d8e3d1af223123fe75";
  };

  buildInputs = [ qt4 message-generation qt-build std-msgs roscpp ];
  propagatedBuildInputs = [ qt4 message-runtime qt-build std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example qt programs, generated from code similar to that used by the 
     roscreate-qt-pkg script and styled on roscpp_tutorials.'';
    #license = lib.licenses.BSD;
  };
}