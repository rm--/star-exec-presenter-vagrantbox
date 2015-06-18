# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.define "ubuntutest" do |ubuntutest|
	ubuntutest.vm.hostname = "ubuntutest"
	ubuntutest.vm.box = "trusty-server"
	ubuntutest.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
	end
end