# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|


  (0..2).each do |i|
    config.vm.define "k8s#{i}" do |k|

      k.vm.box = "centos/7"

      hostname = "k8s#{i}"
      k.vm.hostname = hostname
      node_ip = "192.168.50.#{10 + i}"

      k.vm.network "private_network", ip: node_ip
      k.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
      k.vm.provision "shell", inline: "cat ~vagrant/.ssh/me.pub >> ~vagrant/.ssh/authorized_keys"
      k.vm.provision "shell", inline: "echo 'vagrant:vagrant' | chpasswd"
      k.vm.provision "shell", inline: "sed 's/127\.0\.0\.1.*k8s.*/192\.168\.50\.#{10 + i} #{hostname}/' -i /etc/hosts"

      k.vm.provider "virtualbox" do |v|
        v.name = hostname
        v.memory = 2048
        v.gui = false
      end
    end
  end
end
