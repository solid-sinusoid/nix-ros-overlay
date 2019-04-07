
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, message-generation, interactive-markers, message-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-proxy";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/interactive_marker_proxy-release/archive/release/melodic/interactive_marker_proxy/0.1.2-0.tar.gz;
    sha256 = "39123a492c42042c9566254a5342fa930f30cf26c0bc2279b83135477ef56bce";
  };

  buildInputs = [ roscpp message-generation interactive-markers visualization-msgs ];
  propagatedBuildInputs = [ interactive-markers visualization-msgs message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Proxy Server for Interactive Markers'';
    #license = lib.licenses.BSD;
  };
}