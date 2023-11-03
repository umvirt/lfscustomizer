# Umvirt LFS Customizer

ULFS Version: 0.2 

LFS Version: 12.0-systemd

License: GPL

## About

Linux From Scratch (LFS) to UmVirt Linux From Scratch (ULFS) customizer.

Umvirt LFS Customizer can perform: 

* Basic configuration and install base software which needed to run ULFS Packages.
* ULFS packages set installation

Source code: [https://gitlab.com/Umvirt/lfscustomizer](https://gitlab.com/Umvirt/lfscustomizer)

## Disclaimer

Data backup is needed before using this software.

This software is aimed to experienced Linux From Scratch maintainers.

**Runing this software by unexperienced users can lead to data loss & hardware damage!**

## Hardware support

ULFS have very limited hardware support because LFS Customizer don't contain kernel configuration file. Make your own for your needs.
Kernel sources is placed on */usr/src*

## Running

### LFS Customization

Just run *autoconfig* script.

### Install packages set

To install packages use *installpackages* script.

Syntax

    ./installpackages <packages set>

Example

    ./installpackages console

This script is install console packages set

### Local repository support

If you wan to install packages from local repository edit env.sh file.

Set "YES" as LOCALREPO value and set your ULFS local repo IP-address on LOCALREPOIP value.