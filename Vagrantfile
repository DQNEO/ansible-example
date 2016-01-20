# -*- mode: ruby -*-

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.1"

  config.vm.box_check_update = false

  config.vm.network "private_network", ip: "10.1.13.10"

  config.vm.provider "virtualbox" do |vb|
    vb.linked_clone = true
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "mysql.yml"
  end
end
