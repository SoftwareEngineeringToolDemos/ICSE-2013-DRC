# Vagrant Scripts for Automatically Building a VM with DRC installed

The [home page](https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-DRC) for this repository has instructions to install the DRC plugin for Eclipse in your machine by downloading and installing the JAR files manually. This directory (_build-vm_), however, has instructions to build a virtual machine having Eclipse and DRC installed, in a fully automated way. It utilizes the power of [Vagrant](https://www.vagrantup.com/), a software that simplifies the creation and configuration of virual machines by using a set of scripts.

This directory contains the Vagrant scripts necessary for creating and spinning-up a virtual machine, installing all preqreuisites for the tool inside the VM, and get the tool running. The VM created using these scripts will download and install the following software:
- Ubuntu 14.04 ([boxcutter/ubuntu1404-desktop](https://atlas.hashicorp.com/box-cutter/boxes/ubuntu1404-desktop))
- [Eclipse for PHP - Luna](https://eclipse.org/downloads/packages/eclipse-php-developers/lunasr2)

---

## Instructions

1. Download and install Oracle VM VirtualBox from [here](https://www.virtualbox.org/).
2. Download and install Vagrant from [here](https://www.vagrantup.com/).
3. Clone this repository on your machine by giving the following command:

	`git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-DRC.git`

4. Using a terminal on your host machine (for e.g., Bash on Ubuntu, Command Prompt on Windows), navigate to the `build-vm` directory where you have cloned this repository.
5. Create and spin the virtual machine by giving the following command:
`vagrant up`
Vagrant will now download the base virtual machine image (called a _box_), create a virtual machine using this image, and use the `bootstrap.sh` script present in this directory to install the tools, including all of its prerequisites, inside the virtual machine.

## Notes
- The Ubuntu VM has the default username/password of `vagrant`/`vagrant`
- More information can be found on the files located on the desktop
