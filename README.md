# Description

It is my personal settings for set up my develop environment through Vagrantfile.

HashiCorp Vagrant provides the same, easy workflow regardless of your role as a developer, operator, or designer. It leverages a declarative configuration file which describes all your software requirements, packages, operating system configuration, users, and more.

# Use

Make sure you have installed [vagrant package.](https://www.vagrantup.com/docs/installation)

1. Make file from example:
   - `cp Vagrantfile.example Vagrantfile && cp bootstrap.sh.example bootstrap.sh`
2. Change name and ip in `Vagrantfile`. (You can change `bootstrap.sh` if you wish.)
3. Start and connect:
   - `vagrant start`
   - `vagrant ssh` - connect to virtual machine
4. Install your config file `bootstrap.sh`:
   - `cd /vagrant` - This is your main sync folder.
   - `. bootstrap.sh`
5. Logout and Turn off.
   - `ctrl + D` - logout
   - `vagrant halt`- turn off vagrant machine

# Source

[https://www.vagrantup.com/](https://www.vagrantup.com/)
