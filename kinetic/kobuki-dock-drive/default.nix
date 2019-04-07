
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-geometry, ecl-build, ecl-threads, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-dock-drive";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_dock_drive/0.7.8-1.tar.gz;
    sha256 = "0eed1a5a5d853c1f96c4c2bd72d0cbaf3362a90c7bd4f8d11c7ec2109cf95520";
  };

  buildInputs = [ ecl-build ecl-linear-algebra ecl-geometry ecl-threads ];
  propagatedBuildInputs = [ ecl-linear-algebra ecl-geometry ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dock driving library for Kobuki. Users owning a docking station for Kobuki 
	    can use this tool to develop autonomous docking drive algorithms.'';
    #license = lib.licenses.BSD;
  };
}