#!/bin/bash

set -x -e

source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add -



sudo apt-get update
sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev \
  libopencv-dev libhdf5-serial-dev libboost-all-dev libgflags-dev \
  libgoogle-glog-dev liblmdb-dev protobuf-compiler libboost-all-dev \
  libatlas-dev libatlas-base-dev liblapack-dev libblas-dev \
  python-pip python-numpy python-imaging python-opencv \
  git wget cmake gfortran \
  rethinkdb

mkdir -p ~/src
cd ~/src
git clone https://github.com/bvlc/caffe.git
wget https://github.com/davisking/dlib/releases/download/v18.16/dlib-18.16.tar.bz2
