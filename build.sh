#!/bin/bash

CONFIG_FILE="$1"

#source "$CONFIG_FILE"

echo -e "
#----------------------#
# INSTALL DEPENDENCIES #
#----------------------#
"

apt-get update
apt-get install -y live-build binutils zstd tor debootstrap debian-keyring
systemctl start tor

echo -e "
#----------------------#
# RUN TERRAFORM SCRIPT #
#----------------------#
"

#./terraform.sh --config-path "$CONFIG_FILE"
#cp builds/amd64/* /artifacts/
./terraform.sh
