# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  if ENV['http_proxy'] != nil and ENV['https_proxy'] != nil and ENV['no_proxy'] != nil
    if not Vagrant.has_plugin?('vagrant-proxyconf')
      system 'vagrant plugin install vagrant-proxyconf'
      raise 'vagrant-proxyconf was installed but it requires to execute again'
    end
    config.proxy.http     = ENV['http_proxy']
    config.proxy.https    = ENV['https_proxy']
    config.proxy.no_proxy = ENV['no_proxy']
  end

  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "10.0.0.2"
  config.vm.synced_folder './topologies', '/home/vagrant/topologies/', create: true
  config.vm.provision "shell", path: "postinstall.sh"
  config.vm.provider "virtualbox" do |v| 
    v.customize ["modifyvm", :id, "--memory", 4 * 1024]
  end 
end
