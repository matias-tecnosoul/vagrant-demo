# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Configuración global para DNS
  config.dns.tld = "local"

  config.vm.define "vm-01" do |machine|
    machine.vm.box = "ubuntu/focal64"
    machine.vm.hostname = "vm-01"
    machine.vm.network "private_network", ip: "192.168.56.10"
    machine.dns.patterns = ["web-server"]
    
    # Provisioning solo para vm-01
    machine.vm.provision "shell", path: "bootstrap.sh"
  end
  
  config.vm.define "vm-02" do |machine|
    machine.vm.box = "ubuntu/focal64"
    machine.vm.hostname = "vm-02"
    machine.vm.network "private_network", ip: "192.168.56.11"
    machine.dns.patterns = ["cliente"]
    
  end
end
