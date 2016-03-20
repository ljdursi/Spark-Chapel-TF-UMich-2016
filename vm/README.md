# Virtual machine for workshop

The file here has the configuration for a tool called [Vagrant](https://www.vagrantup.com) to build and start up a
virtual machine in [VirtualBox](https://www.virtualbox.org).  To use,

### Method 1: (simplest, easiest)

1. Download and install [VirtualBox](https://www.virtualbox.org).  This is a program to run and manage virtual machines on your computer.
1. Download and install [Vagrant](https://www.vagrantup.com).  Vagrant allows the automated building and launching of virtual machines.
3. Run the command `vagrant up` in the directory containing this VagrantFile.  This will download all the necessary dependencies and build the virtual machine for this workshop.  It will take ~10-15 minutes

You are now ready to go!  Now:

* Visit http://192.168.33.10:9998 and you will have ssh access to your virtual machine through your browser.  The username is `vagrant` and the password is `vagrant`.
* Visit http://192.168.33.10:9999 and you will have access to [Jupyter Notebooks](http://jupyter.org) running on your virutal machine through your browser.

### Method 2: 

1. Install VirtualBox, and the provided .OVA-bundled virtual machine.
2. Start VirtualBox, and go to "File->Import an Appliance" to import the .ova file.
3. **Before** starting the machine,  we have to get networking set up between your computer and the VM:
    1. Go to VirtualBox Preferences: VirtualBox -> Preferences -> Network, and if one does not exist, add a host-only network.
    2. Select the new virtual machine, and click "Settings".  Under "System", ensure "Enable IO APIC" is checked.
    3. Then under "Network", select "Adapter 2".  Enable it, and attach it to "Host-Only Adapter".  Click OK.
    4. While you are here, under System->Processor, give your VM at least a couple of cores to play with, and maybe limit the execution cap to 50% or so.
4. Start the VM. 

Again, you are now ready to go.

* Visit http://192.168.33.10:9998 and you will have ssh access to your virtual machine through your browser.  The username is `vagrant` and the password is `vagrant`.
* Visit http://192.168.33.10:9999 and you will have access to [Jupyter Notebooks](http://jupyter.org) running on your virutal machine through your browser.
