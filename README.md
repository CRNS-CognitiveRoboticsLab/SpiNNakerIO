# SpiNNakerIO

Stand alone Spinnaker IO library using [SpiNNakerManchester](https://github.com/SpiNNakerManchester) **__spynnaker_external_device_lib__** from https://github.com/SpiNNakerManchester/Visualiser/tree/master/spynnaker_external_device_lib
(See the example program in that repository for a basic idea of how to use the library from a C++ program).

This repository is based on [SpinnIO](https://github.com/svadams/SpinnIO) as an update of the Spinnaker IO library.

To build the SpiNNakerIO library
----------------------------

1. cd to build directory

2. do ccmake ../

3. do sudo make install to install to /usr/local/

4. It will copy:
  + libSpinnakerIO.a to /usr/local/lib
  + SpinnakerIOConfig.cmake to /usr/local/share/SpiNNakerIO
  + INCLUDE files to /usr/local/include/SpiNNakerIO
