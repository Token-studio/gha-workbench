#!/bin/bash

pacman -Sy arch-install-scripts --noconfirm
cp /usr/bin/arch-chroot ./build/
