#!/usr/bin/env python
# Copyright (c) 2017, United States Government, as represented by the
# Administrator of the National Aeronautics and Space Administration.
#
# All rights reserved.
#
# The Astrobee platform is licensed under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with the
# License. You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

import subprocess
import sys

import rostest


def get_path(ros_package, subpath):
    cmd = ["catkin_find", "--first-only", ros_package, subpath]
    return subprocess.check_output(cmd).decode("utf-8").strip()


sys.path.insert(0, get_path("bag_processing", "test"))
import test_fix_all  # isort: skip


class TestFixAllIsaac(test_fix_all.TestFixAll):
    def get_test_bags_folder(self):
        return get_path("isaac_msgs", "test/bags")


if __name__ == "__main__":
    rostest.rosrun("isaac_msgs", "test_fix_all_isaac", TestFixAllIsaac)
