# Virtual machine for workshop

The file here has the configuration for a tool called [Vagrant](https://www.vagrantup.com) to build and start up a
virtual machine in [VirtualBox](https://www.virtualbox.org).  Once it's up and running,

* Visit http://192.168.33.10:9998 and you will have ssh access to your virtual machine through your browser.  The username is `vagrant` and the password is `vagrant`.
* Visit http://192.168.33.10:9999 and you will have access to [Jupyter Notebooks](http://jupyter.org) running on your virutal machine through your browser.

To install the virtual machine:

### Method 1: Use vagrant image.

1. Download and install [VirtualBox](https://www.virtualbox.org).  This is a program to run and manage virtual machines on your computer.
2. Download and install [Vagrant](https://www.vagrantup.com).  Vagrant allows the automated building and launching of virtual machines.
3. Type the commands `vagrant init ljdursi/next-gen-hpc; vagrant up --provider virtualbox`.  This will download the box containing the virtual machine (~2GB download) and start it up

### Method 2: Build vagrant image locally

1. Download and install [VirtualBox](https://www.virtualbox.org).  This is a program to run and manage virtual machines on your computer.
1. Download and install [Vagrant](https://www.vagrantup.com).  Vagrant allows the automated building and launching of virtual machines.
3. Run the command `vagrant up` in the directory containing this VagrantFile.  This will download all the necessary dependencies and build the virtual machine for this workshop.  It will take ~10-15 minutes
