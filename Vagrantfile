# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty64-server"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"


  config.vm.network "public_network"
  config.vm.provider "virtualbox" do |v|
    ## enable internet in guest
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]

    ## vm parameters
    v.memory = 2000
    v.cpus = 1

    ## yesod port forwarding
    config.vm.network "forwarded_port", guest: 3000, host: 3000,
    auto_correct: true
  end

  ## provisoning using saltstack
  ## For masterless, mount your salt file root
  config.vm.synced_folder "salt/roots/", "/srv/"

  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true

    ## debug
    salt.verbose = true
  end
end
