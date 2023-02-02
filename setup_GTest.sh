#!/bin/bash

sudo apt-get install libgtest-dev -y

cd /usr/src/gtest
sudo cmake CMakeLists.txt
sudo make

sudo cp *.a /usr/lib
