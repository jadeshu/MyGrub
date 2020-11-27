#!/bin/bash

sudo /sbin/losetup /dev/loop0 boot.img
sudo mount /dev/loop0 /mnt
sudo cp src/kernel /mnt/kernel
sudo umount /dev/loop0
sudo /sbin/losetup -d /dev/loop0
