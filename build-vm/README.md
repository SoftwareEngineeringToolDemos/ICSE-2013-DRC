# Building a VM with tool installation using Vagrant

The tool for which this repository has been created can be installed on your machine by following the instructions given on the [home page](https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-DRC). But if you want an automated way to install and run the tool in a virtual machine, this directory (__build-vm__) contains the Vagrant scripts necessary for creating and spinning-up a virtual machine with Ubuntu 14.04 guest OS, installing all preqreuisites for the tool inside the VM, and get the tool running.

The instructions below detail the steps necessary to install Vagrant and Virtual Box on your host machine, and use these scripts.

---

##Instructions

1. Download and install Oracle VM VirtualBox from [here](https://www.virtualbox.org/).
2. Download and install Vagrant from [here](https://www.vagrantup.com/).
3. Clone this repository on your machine by giving the following command:

	`git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-DRC.git`

4. Using a terminal on your host machine (for e.g., Bash on Ubuntu, Command Prompt on Windows), navigate to the `build-vm` directory where you have cloned this repository.
5. Create and spin the virtual machine by giving the following command:
`vagrant up`

Vagrant will now download the base virtual machine image (called a _box_), create a virtual machine using this image, and use the `bootstrap.sh` script present in this directory to install the tools, including all of its prerequisites, inside the virtual machine.
