#!/bin/bash

sudo rmmod nbd
sudo modprobe nbd max_part=16
sudo qemu-nbd -c /dev/nbd0 TempleOS.vdi
sudo mount /dev/nbd0p1 /mnt
