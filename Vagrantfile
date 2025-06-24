Vagrant.configure("2") do |config|
  
  config.vm.define "vm-01" do |machine|
    machine.vm.box = "ubuntu/focal64"
    machine.vm.hostname = "vm-01"
    machine.vm.network "forwarded_port", guest: 80, host: 9070
    machine.vm.network "private_network", ip: "192.168.56.10"
    machine.vm.network "public_network"
   
    # Provisioning solo para vm-01
    machine.vm.provision "shell", path: "bootstrap.sh"
  end
  
  config.vm.define "vm-02" do |machine|
    machine.vm.box = "ubuntu/focal64"
    machine.vm.hostname = "vm-02"
    machine.vm.network "private_network", ip: "192.168.56.11"
    machine.vm.network "public_network"
    
  end
end
