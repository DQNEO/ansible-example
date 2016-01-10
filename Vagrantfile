# -*- mode: ruby -*-

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.1"

  config.vm.box_check_update = false

  config.vm.network "private_network", ip: "10.100.0.2"

  config.vm.provider "virtualbox" do |vb|
    vb.linked_clone = true
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "vagrant.yml"
  end
end
