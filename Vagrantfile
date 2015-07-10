#!/usr/bin/env ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

 config.vm.box = "debian-8.1-lxc-puppet"
 config.vm.box_url = "https://dl.dropboxusercontent.com/u/3523744/boxes/debian-8.1-amd64-lxc-puppet/debian-8.1-lxc-puppet.box"

 config.vm.provider "virtualbox" do |v|
   v.memory = 1024
   v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
 end

 config.vm.define "jdk9-machine" do |jdk9machine|
   jdk9machine.vm.network "private_network", ip: "33.33.33.51"
   jdk9machine.vm.provision "puppet" do |puppet|
    puppet.manifest_file = ""
  end
 end

end
