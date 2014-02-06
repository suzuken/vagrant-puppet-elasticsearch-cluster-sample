# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"

  config.vm.define :search01 do |search_config|
      search_config.vm.hostname = "search01.local"
      search_config.vm.network "private_network", ip: "192.168.10.114"
  end

  config.vm.define :search02 do |search_config|
      search_config.vm.hostname = "search02.local"
      search_config.vm.network "private_network", ip: "192.168.10.115"
  end
end
