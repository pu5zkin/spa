# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  # Automation where we using Ansible
  #config.vm.provision "ansible_local" do |ansible|
  #  ansible.playbook = "playbook.yml"
  #end
  # Automation where we using Chef
  config.vm.provision "chef_zero" do |chef|
    chef.cookbooks_path = "integration/vagrant-chef"
    chef.nodes_path = "integration/vagrant-chef/nodes"
    chef.add_recipe "dockerHost"
    chef.arguments = "--chef-license accept"
  end
  config.vm.network "forwarded_port", guest: 4200, host: 8080
end
