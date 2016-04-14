# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y docker.io vim-syntax-docker
    sudo apt-get install -y apt-transport-https ca-certificates
    sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    sudo cp /vagrant/docker-apt.list /etc/apt/sources.list.d/docker.list
    sudo apt-get update
    sudo apt-get purge lxc-docker
    sudo apt-cache policy docker-engine
    sudo apt-get update
    sudo apt-get install -y linux-image-extra-$(uname -r)
    sudo apt-get install -y apparmor docker-engine 
    sudo service docker start
    sudo curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
  SHELL
end
