#! /bin/bash

sudo dpkg-reconfigure wireshark-common

sudo gpasswd -a $USER wireshark

# restart the machine
