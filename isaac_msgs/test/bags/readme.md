# Sample archived ISAAC Astrobee ISS telemetry bags

These bags are used to test backward compatibility of the latest
Astrobee software with archived ISAAC Astrobee ISS telemetry bags.

Compared to the baseline Astrobee flight software, ISAAC flight
software adds the new message types found in this [`isaac_msgs`
repo](https://github.com/nasa/isaac_msgs), which similarly have
evolved over time so that archived telemetry needs to be migrated to
be compatible with the latest software version.

These test bags were generated in the same way as the ones in the main
Astrobee repo, [as explained here](https://github.com/nasa/astrobee/blob/master/tools/bag_processing/test/bags/readme.md).

How these bags relate to the ISAAC ISS activities:

- ISAAC1: So far, no data from ISAAC1 has been publicly released, but the ISAAC message types were not changed between ISAAC1 and ISAAC2, so an ISAAC1 test bag is not really needed for test coverage.

- ISAAC2: The bags from 2021-03-26.

- ISAAC3: The bag from 2021-04-19.

- ISAAC4 and later: Not covered yet
