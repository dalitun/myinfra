# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    ############################################################
    # Create repertoire VM master1
    ############################################################
    config.vm.define "master1" do |master1|
        master1.vm.box = "centos"
        master1.vm.box_url ="file://centos-7-x86_64.box"


        master1.vm.hostname = "master1"
        #master1.vm.network :private_network, ip: "10.0.1.2"
        master1.vm.network "public_network"
        master1.vm.provider :virtualbox do |vb|
          vb.customize ["modifyvm", :id, "--memory", "1024"]
          vb.customize ["modifyvm", :id, "--cpus", "1"]
        end

      config.vm.provision "ansible" do |ansible|
      ansible.playbook = "deploy_nodes.yml"
      #ansible.extra_vars = "group_vars/db1.yml"

      end


    end


end
