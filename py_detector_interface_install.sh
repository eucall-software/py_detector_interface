#!/bin/bash

#   Shell script that contains a possible way to install the
#   py_detector_interface software without the need to install the karabo
#   framework
#
#   TODO:
#       change the path to the install roots of various other softwares
#       according to the current installation state of your computer
#
#   File:   py_detector_interface_install.sh
#   Author: jburchert
#   Date:   27 August 2017
#

# Create a new folder for the build
rm -r ./build
mkdir ./build
cd ./build

# Create a Makefile, here the pathes have to be changed
cmake \
-DGEANT4_ROOT=/data/netapp/s2e/simex \
-DXERCESC_ROOT=/data/netapp/s2e/simex \
-DXCSIT_ROOT=/data/netapp/s2e/simex \
-DBOOST_ROOT=/data/netapp/s2e/simex \
-DCMAKE_INSTALL_PREFIX=/data/netapp/s2e/simex \
-DDEBUG=OFF \
..

# Compile and link the c++ classes
make -j8

# Copy files to the CMAKE_INSTALL_PREFIX location
#make install
