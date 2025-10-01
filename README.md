# Umvirt LFS Customizer

ULFS Version: 0.2.4

LFS Version: 12.4-systemd

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
Kernel sources is placed on */data/kernel*

## Preparation

### Downloading LFSCustomizer

Use *Git* to download LFSCustomizer:

    git clone https://gitlab.com/Umvirt/lfscustomizer

After downloading via *Git* you have to make somedirectories:

    make dirs

### Configuration

You can use "config/config.sh" file to set configuration options.

If file is not available copy config file template.

    cd config
    cp config.sh.sample config.sh

After editing config.sh file check configuration with dumpconfig script:

    ./dumpconfig

Sample dumpconfig output:


    Target architecture: amd64
    Target init system: systemd
    
    Local repository: 
    SourcesDisk: 
    Format SourcesDisk: YES

### Configuration environment init

Build directory should be created according to config file before running customization.

To init environment run:

    ./envinit

## Running

### LFS Customization

To customize LFS disk image according to config just run *customize* script.

### Install packages set

Packages set installation is needed to produce disk images.

In order to avoid redundancy package testing and reducing cost package sets should be created in sequential order 

* console
* x
* lxde
* mate
* xfce

Each next set contain packages from previous set.

#### Preparation

Before installing packages sets edit env.sh file

You can use your own local repository to speedup source package bulding and to protect building proccess from third-party influence.

Set "YES" as LOCALREPO value and set your ULFS local repo IP-address on LOCALREPOIP value.

If you wish to install i686 packages while runing amd64 environment rename file uname.sh.i686 in packages directory to uname.sh.

This file contain BASH-script that prevent packages from detecting an amd64 build environment by *uname -m* command.

#### Installation

To install packages use *installpackages* script.

Syntax

    ./installpackages <packages set>

Example

    ./installpackages console

This script is install console packages set

#### Validation

You can run *zeropackages* script to display packages without installed files.

#### Finalization

If packages set installation performed inside Virtual Machine it's possible to run script that builds and compress disk images.

Sample contents of such file

    qemu-img convert -O qcow2 x.img x.qcow2
    pigz -k x.qcow2
    pigz -k x.img
    beep

Just run this script on host machine when validation is complete.

Sample script mentioned before is also create aditional disk image. 
It's possible run second virtual machine on that disk image to perform aditional checks while firsh virtual machine with build environment is runing when script is finished.

If something went wrong and you wish to rollback you have to shutdown virtual machine with build environment before restoring disk image because virtual machine is caching disk contents in memory.


