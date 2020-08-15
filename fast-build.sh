#!/bin/bash

BASE_DIR=$(cd `dirname $0`; pwd)

# fast build directory
if [ -d "build" ]; then 
    rm -rf build
fi


echo "███████╗██╗   ██╗██████╗ ███████╗ █████╗  ██████╗███████╗    ██████╗ ██████╗  ██████╗      ██████╗ "
echo "██╔════╝██║   ██║██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝    ██╔══██╗██╔══██╗██╔═══██╗    ██╔════╝ "
echo "███████╗██║   ██║██████╔╝█████╗  ███████║██║     █████╗      ██████╔╝██████╔╝██║   ██║    ███████╗ "
echo "╚════██║██║   ██║██╔══██╗██╔══╝  ██╔══██║██║     ██╔══╝      ██╔═══╝ ██╔══██╗██║   ██║    ██╔═══██╗       August, 15 2020 v1.0"
echo "███████║╚██████╔╝██║  ██║██║     ██║  ██║╚██████╗███████╗    ██║     ██║  ██║╚██████╔╝    ╚██████╔╝"
echo "╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝      ╚═════╝        Running Automatic Build Script."
echo "                                                                                                   "
echo ""
echo "Building..."

# fast build config, compile, install to out directory, 
mkdir build && cd build && cmake .. && make package

if [ $? ]; then 
    # fast build done
    echo "fast builded."
else
    echo "!!! have Error !!!"
fi
