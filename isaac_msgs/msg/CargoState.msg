# Copyright (c) 2021, United States Government, as represented by the
# Administrator of the National Aeronautics and Space Administration.
#
# All rights reserved.
#
# The "ISAAC - Integrated System for Autonomous and Adaptive Caretaking
# platform" software is licensed under the Apache License, Version 2.0
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
#
# Locked topic that registers updates to the internal dock state

# Header with timestamp
std_msgs/Header header

# The state of the mobility subsystem
int8 state
int8 INITIALIZING             = 0
int8 WAITING                  = 1
int8 HOLDING                  = 2

int8 PICK_MOVE_APPROACH       = 3
int8 PICK_DETECT              = 4
int8 PICK_ARM_DEPLOY          = 5
int8 PICK_ARM_OPEN            = 6
int8 PICK_MOVE_COMPLETE       = 7
int8 PICK_ARM_CLOSE           = 8
int8 PICK_MOVE_FINAL          = 9

int8 DROP_MOVE_APPROACH       = 10
int8 DROP_MOVE_COMPLETE       = 11
int8 DROP_ARM_OPEN            = 12
int8 DROP_MOVE_AWAY           = 13
int8 DROP_ARM_STOW            = 14

# A human readble version of the (event) -> [state] transition
string fsm_event
string fsm_state

# Cargo name
string cargo_id