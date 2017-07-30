# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
  config.vm.provision "shell", inline: "cat ~vagrant/.ssh/me.pub >> ~vagrant/.ssh/authorized_keys"
  config.vm.provision "shell", inline: "echo 'vagrant:vagrant' | chpasswd"
end