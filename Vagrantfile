# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "vm-01" do |machine|
    machine.vm.box = "generic/debian12"
    machine.vm.hostname = "vm-01"
    machine.vm.provision "shell", path: "bootstrap.sh"  # ← Dentro del bloque machine
  end
  
 
end