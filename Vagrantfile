# -*- mode: ruby -*-

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.1"

  config.vm.network "private_network", ip: "10.100.0.2"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
