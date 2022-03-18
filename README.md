# ISAAC MSGS

This repo contains ROS message definitions used by ISAAC for communication over ROS.

Unless you are modifying the messages, you may not need to clone this repo directly and will probably consume this as a git submodule of another repo like the `isaac` repo.

## Backward compatibility

Message definition files that have a version number (e.g., `V1`) at the
end of their filename are "frozen" message types, as discussed in the
[telemetry backward compatibility
guide](https://nasa.github.io/astrobee/html/md_doc_general_documentation_maintaining_telemetry.html).
These messages are no longer published by the latest software, but we
keep them for backward compatibility with archived ISS telemetry bags.

Examples include (definition: ISS activity relevance):

- `isaac_msgs/action/InspectionV1.action`: ISAAC1-2

- `isaac_msgs/action/InspectionV2.action`: ISAAC3

  - Note that the `actionlib` derived message types
    `InspectionV1ActionFeedback` and `InspectionV2ActionFeedback` happen
    to be identical, and we arbitrarily chose to rename
    `InspectionActionFeedback` to `InspectionV2ActionFeedback` for all
    activities ISAAC1-3.

- `isaac_msgs/msg/InspectionStateV1.msg`: ISAAC1-3

### Contributing

The ISAAC Software is open source, and we welcome contributions from the public.
Please submit pull requests to the `develop` branch. For us to merge any pull
requests, we must request that contributors sign and submit a Contributor License
Agreement due to NASA legal requirements. Thank you for your understanding.

## License

Copyright (c) 2021, United States Government, as represented by the
Administrator of the National Aeronautics and Space Administration.
All rights reserved.

The "ISAAC - Integrated System for Autonomous and Adaptive Caretaking
platform" software is licensed under the Apache License, Version 2.0
"License"); you may not use this file except in compliance with the License. You
may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.
