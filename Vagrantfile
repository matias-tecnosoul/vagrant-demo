# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "vm-01" do |machine|
    machine.vm.box = "ubuntu/focal64"
    machine.vm.hostname = "vm-01"
    machine.vm.network "private_network", ip: "192.168.56.10"
    machine.vm.provision "shell", path: "bootstrap.sh"  # ← Dentro del bloque machine

  end
  
  config.vm.define "vm-02" do |machine|
    machine.vm.box = "ubuntu/focal64"
    machine.vm.hostname = "vm-02"
    machine.vm.network "private_network", ip: "192.168.56.11"
    
  end
end
