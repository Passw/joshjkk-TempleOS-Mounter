#!/bin/bash

sudo umount /mnt
sudo qemu-nbd -d /dev/nbd0
