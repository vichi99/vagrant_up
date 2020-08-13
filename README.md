# Description

It is my personal settings for set up my develop environment through Vagrantfile.

HashiCorp Vagrant provides the same, easy workflow regardless of your role as a developer, operator, or designer. It leverages a declarative configuration file which describes all your software requirements, packages, operating system configuration, users, and more.

# Use

Make sure you have installed [vagrant package.](https://www.vagrantup.com/docs/installation)

## First start

1. Make file from example:
   - `cp Vagrantfile.example Vagrantfile && cp bootstrap.sh.example bootstrap.sh`
2. Change name and ip in `Vagrantfile`. (You can change `bootstrap.sh` if you wish.)
3. Start and connect:
   - `vagrant up`
   - `vagrant ssh` - connect to virtual machine
4. Install your config file `bootstrap.sh`:
   - `cd /vagrant` - This is your main sync folder.
   - `. bootstrap.sh`
5. Logout and Turn off.
   - `ctrl + D` - logout
   - `vagrant halt`- turn off vagrant machine

## Start

- `vagrant up`
- `vagrant ssh` - connect to virtual machine

# Exclude Folder

If you do not want synchronizate some folder etc. `node_modules` from your virtual machine you can create `symlink`. The main reason is to speed up starting node app.

- Make sure you have this line in your `Vagrantfile` for enable Symlinks.
  ```
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  ```

1. Delete the `node_modules` directory if it exists.
2. Create a directory called, say "node_modules_projectname" in the VM's home directory `(~)` (Some articles and posts recommend making the directory in /tmp, but obviously this is cleared on reboot, so it may not be an optimal experience for this type of thing). Because is synchronizate only `/vagrant` path, not `/home/vagrant`.

3. Link a local node_modules dir from within the project's directory
   ```
   ln -s ~/node_modules_projectname /path/to/your-project/node_modules
   ```
4. Install the packages in the project directory:
   ```
   npm install
   npm install --save-dev react-dev-utils
   ```

### [Originall instructions exclude folder](http://perrymitchell.net/article/npm-symlinks-through-vagrant-windows/)

# Source

[https://www.vagrantup.com/](https://www.vagrantup.com/)
