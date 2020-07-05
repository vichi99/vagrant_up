# -*- mode: ruby -*-
# vi: set ft=ruby :
# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
your_virtual_name = "name"
private_ip =  "192.168.x.x"

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/bionic64"
  config.vm.define your_virtual_name
  config.vm.hostname = your_virtual_name
  config.vm.provider "virtualbox" do |v|
    v.name = your_virtual_name
    v.memory = 2048
    v.cpus = 2
  end

  # public network => Bridged
  # config.vm.network "public_network" , bridge: "en0: Wi-Fi (AirPort)"
  config.vm.network "private_network", ip: private_ip

  # install & configure software - Manually better
  # config.vm.provision :shell, :path => "bootstrap.sh" 


end
